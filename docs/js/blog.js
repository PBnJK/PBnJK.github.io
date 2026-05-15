/* Blog scripting */

/* Sets up the "pronounce" blocks */
function setupPronounce() {
  Array.from(document.getElementsByClassName("pronounce")).forEach(
    (element) => {
      const button = element.querySelector("button");
      const audioNormal = button.querySelector(".audio-normal");
      const audioSlow = button.querySelector(".audio-slow");

      button.addEventListener("click", () => {
        if (element.dataset.slow === "1") {
          if (!audioNormal.paused) {
            audioNormal.pause();
            audioNormal.currentTime = 0;
          }

          audioSlow.play();
          element.dataset.slow = "0";
        } else {
          if (!audioSlow.paused) {
            audioSlow.pause();
            audioSlow.currentTime = 0;
          }

          audioNormal.play();
          element.dataset.slow = "1";
        }
      });
    },
  );
}

function main() {
  setupPronounce();
}

window.addEventListener("load", main);
