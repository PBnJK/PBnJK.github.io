/* Blog scripting */

/* Sets up the "pronounce" blocks */
function setupPronounce() {
  Array.from(document.getElementsByClassName("pronounce")).forEach(
    (element) => {
      const button = element.querySelector("button");
      const audioElement = button.querySelector("audio");

      button.addEventListener("click", () => {
        if (!audioElement.paused) {
          audioElement.pause();
        }

        audioElement.play();
      });
    },
  );
}

function main() {
  setupPronounce();
}

window.addEventListener("load", main);
