/* Blog scripting */

/* Sets up the "pronounce" blocks */
function setupPronounce() {
  document.querySelectorAll(".pronounce").forEach((e) => {
    const button = e.querySelector("button");
    const audioElement = button.querySelector("audio");

    button.addEventListener("click", () => {
      if (!audioElement.paused) {
        audioElement.pause();
      }

      audioElement.play();
    });
  });
}

/* Sets up image zoom (follow cursor, works fine without it) */
function setupImageZoomCursorFollow() {
  document.querySelectorAll(".zoomable-img img").forEach((e) => {
    e.addEventListener("mousemove", (ev) => {
      const rect = e.getBoundingClientRect();
      const x = (((ev.clientX - rect.left) / rect.width) * 100).toFixed(1);
      const y = (((ev.clientY - rect.top) / rect.height) * 100).toFixed(1);

      e.style.transformOrigin = `${x}% ${y}%`;
    });
  });
}

function main() {
  setupPronounce();
  setupImageZoomCursorFollow();
}

window.addEventListener("load", main);
