# My personal website

## Structure

```
│
├ src/         C source files for lua libs are located here
│
├ site/        the compiled website is outputted to here
│ ├ assets/    all assets are dumped here
│ ├ css/       css files
│ └ js/        js files
│
├ content/     the lua code that generates the website is here
│ ├ _lib/      lua code that shouldn't be compiled
│ ├ _template/ lua templates
│ ├ blog/      my blog
│ ├ books/     my books & other writings
│ └ ...        &c.
│
├ main.lua     generates the website
└ README.md    you are here :-D
```

## Credits

Thanks to:

- <ruby>りき<rp>(</rp><rt>riki</rt><rp>)</rp>萌<rp>(</rp><rt>moe</rt><rp>)</rp></ruby>'s
  [small HTML templating engine](https://riki.house/lua-html), on which this browser's own templating engine is based;
- My family & friends for believing in me
