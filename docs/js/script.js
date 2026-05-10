let htmlElement;
let colorSwitcherSun;
let colorSwitcherMoon;

function switchToLightScheme() {
  htmlElement.style.colorScheme = "light";

  colorSwitcherSun.style.display = "inline";
  colorSwitcherMoon.style.display = "none";
}

function switchToDarkScheme() {
  htmlElement.style.colorScheme = "dark";

  colorSwitcherSun.style.display = "none";
  colorSwitcherMoon.style.display = "inline";
}

function getCurrentScheme() {
  const prefersDark =
    window.matchMedia && window.matchMedia("(prefers-color-scheme: dark)");

  switch (htmlElement.style.colorScheme) {
    case "dark":
    case "light":
      return htmlElement.style.colorScheme;
    default:
      if (prefersDark && prefersDark.matches) {
        return "dark";
      }

      return "light";
  }
}

function toggleColorScheme() {
  const scheme = getCurrentScheme();
  if (scheme === "dark") {
    switchToLightScheme();
  } else {
    switchToDarkScheme();
  }
}

function main() {
  htmlElement = document.querySelector("html");
  colorSwitcherSun = document.getElementById("color-sun");
  colorSwitcherMoon = document.getElementById("color-moon");

  const scheme = getCurrentScheme();
  if (scheme === "dark") {
    switchToDarkScheme();
  } else {
    switchToLightScheme();
  }

  const colorSwitcher = document.getElementById("color-switcher");
  colorSwitcher.addEventListener("click", toggleColorScheme);
}

window.addEventListener("load", main);
