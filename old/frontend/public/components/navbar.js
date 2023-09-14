"use strict";
const navbar = document.querySelector(".navbar");
const navbarSvgButton = document.querySelector(".navbar__svg-button");
const navbarTextButton = document.querySelector(".navbar__text-button");
navbarSvgButton === null || navbarSvgButton === void 0 ? void 0 : navbarSvgButton.addEventListener("click", () => {
    const sidebar = document.querySelector(".sidebar");
    if (sidebar === null || sidebar === void 0 ? void 0 : sidebar.classList.contains("sidebar--hidden")) {
        sidebar.classList.remove("sidebar--hidden");
        return;
    }
    sidebar === null || sidebar === void 0 ? void 0 : sidebar.classList.add("sidebar--hidden");
});
