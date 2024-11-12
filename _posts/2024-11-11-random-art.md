---
layout: post
title: "RandomArt"
description: "Implementation of a small algorithm for creating randomly-generated art"
subtitle: "it's about to get artsy y'all"
date: 2024-11-11 22:55:00
categories: [fact, c, art]
---

> FOREWORD
>
> Yes, it's this algorithm---again. If you follow me on bluesky ([wink wink][my-bsky],)
> you'll see that I've already glazed this thing to hell and back.
>
> The truth is that I'm a young guy; I don't have a lot of experience on my
> back. So when I saw this idea, hopped on to a blank `main.c` file and it
> actually *materialized* in front of my eyes, and worked *exactly* how I
> wanted it to...well, it made me want to shout it from the rooftops!
>
> So, please, bear with me through this intensely self-indulging---but
> nonetheless fun---post!

Past week, I implemented the RandomArt algorithm, as described on [this][ra-paper]
wonderful paper.[^1]

Ever generated an SSH key and wondered what that weird little "randomart" thing
it generated was? Well, the purpose of it is to give us humans a more intuitive
way of remembering a key; the idea is that it's pretty hard to remember what a
random jumble of letters and numbers looks like, but it's much easier to commit
a little image to memory.

Of course, the arts produced by tools such as `ssh-keygen` are pretty...limited;
don't get me wrong, I love the look of them! Take a gander at this beauty:
```
+--[ RSA 2048]----+
|       o=.       |
|    o  o++E      |
|   + . Ooo.      |
|    + O B..      |
|     = *S.       |
|      o          |
|                 |
|                 |
|                 |
+-----------------+
```
...but they are not particularly **striking**. What if, instead, they were in *color*?
And *512x512 pixels*? And created using a randomly-generated AST describing a mathematical
DSL just for making the images! Well...that's what I implemented.[^2]

## The algorithm
The algorithm---like all good algorithms---works via a very simple step-by-step process:

1. Generate an AST describing a
   mathematical function \\(F\\) that takes pixel coordinates as input and returns an RGB
   color value;
2. For every pixel in the desired output image, run the function \\(F\\), coloring
   that pixel with the output value;

...that's it! Sure, the first step might sound like a word salad, but once we step
through it you will see that it is, in essence, a very, *very* simple algorithm
(which is, in part, the reason why I just won't [shut up](https://bsky.app/profile/pbnjk.bsky.social/post/3la6atafj522x) [about it][bsky-img]).

### Step 1: Generating the AST {#step-1}

{% include caption-figure.html url="/assets/images/randomart_ast.png" caption="The type of AST we will be generating, from the original article" %}

I'm assuming you already know what an AST *is*. If you don't, read [this](https://en.wikipedia.org/wiki/Abstract_syntax_tree),
but the tl;dr is that it is a form of representing code through a tree. So a
simple addition such as \\(1 + 2\\) can be represented by something like an
`add` node with children nodes `1` and `2`.

OK, so how is an AST going to help us implement art? Well, simple: we have this AST
describe a *function* which is responsible for plotting the image. We define it to
be a function \\(F: [-1, 1]^2 \\rightarrow [-1, 1]^3\\), that takes as input 2
values---the x and y coordinates of the pixel we want to process, and outputs 3
values---the RGB color of that pixel. But what is that \\([-1, 1]\\) stuff? Well,
that just says that the values should be numbers in a range from -1 to 1. So the
pixel at the top-left is at coordinates (-1, -1), and the pixel at the bottom-right
is at (1, 1). Pretty intuitive, actually!

Cool! We have the concept---time to *implement it*.

> I'm not going to go particularly in-depth; if you just want to see some good
> ol' code, browse [the repo][my-repo]! Also, I've taken the liberty to
> expand some macros and remove irrelevant parameters for clarity, so the code
> here may differ from the actual code in the repo.

Let's lay down some fundamentals. You'll see this `Node` type being passed around
a lot. It represents a node (duh) in the AST data structure. There's no actual
`AST` struct or anything, by the way---it's just a "root" `Node`, which has child
`Node`s, which have child `Node`s of their own, etc.

It looks like this:
```c
typedef struct _Node {
	NodeType type;           /* The type of this node */
	double num;              /* A number value */
	struct _Node *a, *b, *c; /* The children of this node */
} Node;
```

You'll also see a few mentions of a "`MemPool`". Its structure is not important;
just know that it is a basic implementation of a [memory pool](https://en.wikipedia.org/wiki/Region-based_memory_management),
used here so as to reduce the amount of `malloc` calls we'd have to make---believe
me, there'd be a *lot* of 'em---by just `malloc`'ing a big chunk of memory and
doling it out in chunks to whoever needs it

Terminology cleared up, let's begin. It all starts on this function, `astCreate`:
```c
Node *astCreate(MemPool *pool) {
	/* Create root node (the AST) */
	Node *ast = nodeCreateABC(
		NT_RGB,
		nodeCreateRandom(pool, 0),
		nodeCreateRandom(pool, 0),
		nodeCreateRandom(pool, 0),
	)

	/* Optimize the generated AST (remove redundant/useless code) */
	_optimize(pool, NULL, ast);

	return ast;
}
```

Wow! That explains nothing. Let's go step-by-step. The `nodeCreateABC` function
is just a simple helper function: it creates a new node of a given type (in this
case, of type `NT_RGB`,) with three children, `a`, `b` and `c`. Here, the children
are each randomly-generated.

The "*randomly-generated*" bit is the fun part: it's what kick-starts the
entire AST generation process. You see, each of those `nodeCreateRandom` calls
will generate a node which, of course, has children of its own. Those children
are, logically, *also* generated by calling the `nodeCreateRandom` function,
resulting in more nodes with more random children with more nodes with more
random children with more...you get the idea.

Of course, we have to stop that at some point. That's what the "0" we pass in
is there for. On every subsequent call, the number gets incremented; once we
pass a given threshold (customizable via command-line arguments,) we halt the
process by creating a node with *no* children.

What sort of node has no children? Well, [look at the image](#step-1) I showed
you earlier. What sorts of nodes can be found at the ends of the AST? Numbers,
of course! We insert some randomly-generated numbers (also in the range \\([-1, 1]\\))
to the nodes, closing the branch off. But there's also another pair of values we
add here: the coordinates. Remember how I said that the functions took coordinates
as input? It's on this step that we insert them into the AST, allowing them to
modify the output.

Here's how that looks:
```c
Node *nodeCreateRandom(MemPool *pool, int rec) {
	if( rec > _maxrec ) {
		/* _getValue randomly returns a number or a coordinate */
		return _getValue(pool);
	}

	/* generate other nodes (sin, cos, lerp, etc...) */
```

The code responsible for generating other node types is not particularly complicated;
I generate a random number, limit it to a range from 0 to 100, and then use it to select
from a weighted list of *categories* of nodes. The categories I have in my implementation
are laid out in the table below:

| Category     | Node                              | Weigth | Notes |
|:-------------|:----------------------------------|:-------|:------|
| Value        | Number, X, Y                      | 20%    | Values aren't picked only when ending a node; they can also be picked at random like other nodes |
| Arithmetic   | +, -, *, /, %                     | 20%    | Add., sub., mul., div., mod.: lot's of these always makes nice patterns |
| Trigonometry | \\(sin, cos\\)                    | 20%    | I should probably add some more; these produce, predictably, some cool ondulating patterns |
| Exponential  | \\(exp, log, sqrt\\)              | 10%    | |
| Common       | \\(abs, min, max, fract\\)        | 10%    | The "grab-bag" |
| Conditional  | \\(\lt, \gt, \le, \ge, =, \neq\\) | 10%    | What?! Yup, there's conditionals up in this AST. Check the [Appendix](#appendix) for how they work |
| Shader       | \\(rgb, mix\\)                    | 10%    | Vaguely GLSL/shader-y stuff? Mix is just a lerp (\\(a\\) -> \\(b\\) with weight \\(c\\)) |

> Note that the weights were hand-picked by me based on whatever felt like it gave
> me the "coolest" results. I'll work in a way of customizing those weights yourself
> later...

A random "category" is picked, then a random node that belongs to that category
is selected, and the node is constructed with random children. At the end of the
day, it's a very simple recursive[^3] function.

By the way, you must be wondering why we use that strange `nodeCreateABC(NT_RGB, ...`
function back in the `astCreate` routine. Well, remember how I said that the function
takes as input a pair of xy coordinates as input, and *returns* and RGB color
as output? Well, the way I use to ensure the function always returns three
values is by using this special RGB node, which is basically useless: its purpose
is just having 3 other nodes as children. As you'll see in [step 2](#step-2), we
use this to get the color for each pixel of the image.

#### Step 1.5: Optimization

OK, we have recursively generated an AST. It may look something like this (in
LISP notation):
```lisp
(rgb (sub 1.0 (max x x)) (sin x) (mix x y (cos y)))
```

But, hmm, there's a little redundancy here. Can you spot it?

...

Yes, it's the `max` operation! Commonly, `max` returns the largest element in a
list---or, in our little "language"s case, the largest in a pair. However, in
this case, it's taking the max between two *equal* values! *Gasp*! Is it going
to crash? *Explode*? Or worse, _**segfault**_???

...well, no. It's just going to always return `x`. Pretty boring and, not
only that, *inefficient*! So that's what that sneaky little `_optimize`
function that's called back on `astCreate` is for: it seeks out and removes
these inefficiencies. Note that it doesn't optimize *every* single one; at the
moment, it just catches these sorts of simple cases.

### Step 2: Running the AST {#step-2}

Alright! We have a nice little optimized AST now:
```lisp
(rgb (sub 1.0 x) (sin x) (mix x y (cos y)))
```

Let's run it!

This isn't a particularly difficult part of the program. If you ever try and
implement a programming language yourself[^4], you'll realize that the "hard part"
is not actually *running* the code, so much as it is setting up all the plumbing
required for doing so. It is much, much easier to write a virtual machine[^5] to
chomp through some basic opcodes than it is to figure out *what* opcodes you
need to pump out *in the first place*. The same applies here---because, in essence,
what we are doing here is writing a compiler and interpreter for a super
domain-specific language.

The "VM" is basically just a big switch-statement (not unlike [other][lua-vm]
[reputable][py-vm] [languages][ocaml-vm]). Here's a snippet:

```c
static Node *_runAST(Node *ast, double x, double y, MemPool *pool) {
	switch( ast->type ) {
	case NT_NUM:
		return ast;
	case NT_X:
		return NODE_NUM(x);
	case NT_Y:
		return NODE_NUM(y);
	case NT_ADD: {
		double lhs = RUN(ast->a)->num;
		double rhs = RUN(ast->b)->num;
		return _runAST(NODE_NUM(lhs + rhs), x, y, t, pool);
	}
	/* other cases... */
```
The `x` and `y` parameters represent the current pixel coordinates. They are passed
in via the `_runAST` function, which is run for every pixel in the output image,
as seen below:
```c
/* XY as intensity ([0, DIMENSION] -> [-1, 1]) */
#define X_INT (2 * ((double)(x) / w) - 1)
#define Y_INT (2 * ((double)(y) / h) - 1)

/* RGB from intensity ([-1, 1] -> [0, 255]) */
#define INT_C(C) ((int)((((C) + 1) / 2) * 255))

/* ast -> The AST we're running (that RGB(...) we generated earlier!)
 * w   -> Width of the image
 * h   -> Height of the image
 */
byte *astDoFrame(Node *ast, int w, int h) {
	byte *image = malloc(w * h * 3);
	MemPool vmPool;

	int i = 0;
	for( int y = 0; y < h; ++y ) {
		vmPool = poolNew();

		for( int x = 0; x < w; ++x ) {
			Node *node = _runAST(ast, X_INT, Y_INT, &vmPool);
			image[i++] = INT_C(node->a->num); /* RGB node "a" child, red color */
			image[i++] = INT_C(node->b->num); /* RGB node "b" child, green color */
			image[i++] = INT_C(node->c->num); /* RGB node "c" child, blue color */

			/* image[i-3...i-1] now contain´s a single pixel's RGB color value */
		}

		poolFree(&vmPool);
	}

	return image;
}
```
Then, it's just a matter of transforming this array of colors into an image,
and...we're done! That's it!! We created an AST, optimized it, ran the resulting
function for every single pixel in our image, saved the colors to an image and
finally, *finally*, we got the product of our work; a colorful, 512x512 pixel
image:

{% include caption-figure.html url="/assets/images/randomart_random.png" caption="Woah... Totally mathe<i>magical</i> dude!" %}

> Yes, this is the actual image that's generated from the function we created and
> optimized above.

It is not particularly impressive: the colors are jarring, to say the least;
the gradients are random; the swirls and lines are asymmetrical, but not *organic*.
Still, I see a kind of strange beauty on it. A computer made it---well, not fully;
I typed the function. But a computer *generated* this. It followed along a simple
set of rules and plotted an ugly, swirling mess of an image.

I'm not a big fan of AI art. I'm "fine" with it as a placeholder art tool or whatever.[^6]
Still, there's a bit of a bad taste left on my mouth when I spot it. AI bros may
be star-struck by how "human-like" it looks, but I think that kind of...diminishes
it? Shit, this is a computer dude; a machine! I see how *impressive* it is, that it
is able to copy humans, but wasn't the computer made to do the *boring* stuff? The
repetitive, grindy math we humans either *can't* do, or can't be *bothered* to do. To,
putting it bluntly, *waste* it trying to "optimize out" the fun part of
art---**art itself**---it's...bleh.

So when I see [these](https://github.com/pBnJK/randomart/blob/main/examples.md)
images, which are so unabashedly robotic, mathematical, formulaic, inhuman...something
arrived at by hundreds of thousands of complex calculations that no human can ever do,
not in the amount of time it takes my dinky little laptop to do, I...

Well, I can't help but find a sort of charm in it. My computer made some art only
it can do. We taught it how to do so not by having it copy human art, but by sitting
down and talking to it in its own language; ain't that lovely?

## The end {#the-end}
Hope you enjoyed the read! Sorry for the random garbage at the end. The GitHub
repo with code can be found [here][my-repo]. Thank you very much for taking the
time to read my stuff. I really, *really* appreciate it.

---

### Appendix {#appendix}

#### How do the "conditionals" work?
A conditional node looks something like this:
```lisp
(if (< x y) 1.0 y)
```

There is a special node of type `if`, which then has three children `a`, `b` and
`c` that define the comparison being performed:

* Child `a` is the conditional; it is a node with a type representing the comparison
  that it performs (\\(\lt, \le, \gt\\) and so on,) and two children on which it
  will perform the comparison on;
* Child `b` is the node returned if the comparison is true;
* Child `c` is the node returned if the comparison is false.

So the conditional above can be read as:

> If \\(x \lt y\\), then return `1.0`. Otherwise, return `y`

Internally, the `if` node calls the comparison node (child `a`,) that in turn returns
either 1.0 or -1.0 depending on whether the comparison is true or false, respectively.
It then returns the appropriate node depending on the return value. Looking at it this
way, the sort of innately mathematical nature of this algorithm *really* pops out. It's all
just functions which return functions or numbers!

...did we just reinvent functional programming?

---

### Footnotes

[^1]: The paper was brought to my attention by tsoding, whose [Twitch](https://www.twitch.tv/tsoding), [YouTube](https://www.youtube.com/tsoding) and [GitHub](https://github.com/tsoding) are a seemingly endless well of great ideas and hands-on programming lessons. Give him a follow/subscribe/whatever on those! He also has a [BlueSky](tsoding.bsky.social)!!
[^2]: ...as well as tsoding. His original implementation of the algorithm  is [here](https://github.com/tsoding/randomart/). Don't worry; no code was copied, borrowed, etc. I just liked the idea :-)
[^3]: Is it recursive if I call another function which then calls us back? I'll leave that as an exercise to the reader.
[^4]: If you ever do, I recommend [Crafting Interpreters](https://craftinginterpreters.com/). Robert Nystrom is a phenomenal writer, and it'll teach you all you need to know about writing a very competent little language. I made [this](https://github.com/pbnjk/loxie) one after reading it! #notsponsored
[^5]: Note that I'm talking specifically about interpreted languages here, with VMs and stuff. Though, frankly, in compiled languages, running the code is even easier! You just have the computer do it for you ;-D
[^6]: Though I think you'd get *much* more mileage out of an unskilled, yet original, *Paint* doodle than more garbage from the Plagiarism Machine&#0153;. Most of my "temporary art" ends up becoming just "art" in the end. I can't imagine doing that with the machine that, I must stress, _has a non-zero chance of spitting out someone else's work, verbatim_, is a good idea. But I'm not your dad.

<!-- Links --->
[ra-paper]: http://users.ece.cmu.edu/~adrian/projects/validation/validation.pdf
[bsky-img]: https://bsky.app/profile/pbnjk.bsky.social/post/3la7thqphkf27
[my-bsky]: https://pbnjk.bsky.social
[my-repo]: https://github.com/pbnjk/randomart

[lua-vm]: https://github.com/lua/lua/blob/e3ce88c9e850b7e79751083014699c5eae1bff31/lvm.c#L1185
[py-vm]: https://github.com/python/cpython/blob/494360afd00dc8f6b549f160525c3e86ec14905d/Python/ceval.c#L1103
[ocaml-vm]: https://github.com/ocaml/ocaml/blob/ad2aecfab0a425ffbaa01dc22a5661adcbe88710/runtime/interp.c#L383

<!-- Abbreviations --->
*[AST]: Abstract Syntax Tree
