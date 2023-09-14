const navbar = document.querySelector(".navbar")
const navbarSvgButton = document.querySelector(".navbar__svg-button")
const navbarTextButton = document.querySelector(".navbar__text-button")


navbarSvgButton?.addEventListener("click", () => {
  const sidebar = document.querySelector(".sidebar")
  if (sidebar?.classList.contains("sidebar--hidden")) {
    sidebar.classList.remove("sidebar--hidden")
    return
  }
  sidebar?.classList.add("sidebar--hidden")
})
