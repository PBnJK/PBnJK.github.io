/* Poetry builder */

/* PRNG based on this immensely helpful StackOverflow answer
 *   https://stackoverflow.com/a/47593316
 */
function prngSeed(str) {
  let a = 1779033703;
  let b = 3144134277;
  let c = 1013904242;
  let d = 2773480762;
  for (let i = 0, k; i < str.length; i++) {
    k = str.charCodeAt(i);
    a = b ^ Math.imul(a ^ k, 597399067);
    b = c ^ Math.imul(b ^ k, 2869860233);
    c = d ^ Math.imul(c ^ k, 951274213);
    d = a ^ Math.imul(d ^ k, 2716044179);
  }

  a = Math.imul(c ^ (a >>> 18), 597399067);
  b = Math.imul(d ^ (b >>> 22), 2869860233);
  c = Math.imul(a ^ (c >>> 17), 951274213);
  d = Math.imul(b ^ (d >>> 19), 2716044179);
  (a ^= b ^ c ^ d), (b ^= a), (c ^= a), (d ^= a);

  return [a >>> 0, b >>> 0, c >>> 0, d >>> 0];
}

function prngGetGenerator(str) {
  let [a, b, c, d] = prngSeed(str);
  return function () {
    a |= 0;
    b |= 0;
    c |= 0;
    d |= 0;
    let t = (((a + b) | 0) + d) | 0;
    d = (d + 1) | 0;
    a = b ^ (b >>> 9);
    b = (c + (c << 3)) | 0;
    c = (c << 21) | (c >>> 11);
    c = (c + t) | 0;
    return (t >>> 0) / 4294967296;
  };
}

/* Date-based RNG */
function getDateBasedPRNG() {
  let seed;

  if (typeof window.Temporal === "undefined") {
    /* Temporal(tm) API not available, fallback to "legacy" Date */
    let date = new Date();
    seed = date.toISOString().split("T")[0];
    console.log("DATE");
  } else {
    /* Use fancy new Temporal(tm) API */
    seed = Temporal.Now.plainDateISO().toString();
    console.log("TEMPORAL");
  }

  return prngGetGenerator(seed);
}

const randf = getDateBasedPRNG();
function randi(start, end) {
  const n = randf();
  if (typeof end === "undefined") {
    end = start;
    start = 0;
  }

  return Math.round(start + (end - start) * n);
}

/* Sets up the envelope poem builder */
function setupEnvelopePoemBuilder() {
  const MIN_LINES = 1;
  const MAX_LINES = 12;

  const MIN_LINE_SIZE = 5;
  const MAX_LINE_SIZE = 25;

  const envelopeWrapper = document.getElementById("envelope-wrapper");

  let lineSize = randi(MIN_LINE_SIZE, MAX_LINE_SIZE);
  const lines = randi(MIN_LINES, MAX_LINES);

  for (let i = 0; i < lines; ++i) {
    const line = document.createElement("input");

    if (randf() > 0.8) {
      lineSize = randi(MIN_LINE_SIZE, MAX_LINE_SIZE);
    } else {
      if (randf() < 0.5) {
        let lower = Math.max(MIN_LINE_SIZE, lineSize - 8);
        lineSize = randi(lower, lineSize);
      } else {
        let upper = Math.min(MAX_LINE_SIZE, lineSize + 8);
        lineSize = randi(lineSize, upper);
      }
    }

    line.setAttribute("size", lineSize);
    line.setAttribute("maxlength", lineSize);
    line.style.width = `${lineSize}ch`;

    line.classList.add("envelope-line");

    envelopeWrapper.appendChild(line);
  }

  let alignment = randf();
  if (alignment < 0.4) {
    envelopeWrapper.classList.add("left");
  } else if (alignment < 0.8) {
    envelopeWrapper.classList.add("center");
  } else {
    envelopeWrapper.classList.add("right");
  }
}

function main() {
  setupEnvelopePoemBuilder();
}

window.addEventListener("load", main);
