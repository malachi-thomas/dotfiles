const sidebar = document.querySelector(".sidebar")
const sidebarProjects = document.querySelectorAll(".sidebar__project")
const sidebarFolders = document.querySelectorAll(".sidebar__folder")
const sidebarResizeBar = document.querySelector(".sidebar__resizer")


let isMouseDown = false
sidebarResizeBar?.addEventListener("mousedown", (e) => {
  //if (e.button === 0) {
  //  isMouseDown = true
  //}
  console.log(isMouseDown)
})


sidebarResizeBar?.addEventListener("mousemove", (e) => {
  console.log(e)
})

sidebarProjects.forEach((project) => {
  project.addEventListener("click", () => {
    sidebarProjects.forEach((x) => { x.classList.remove("sidebar__project--active") })
    project.classList.add("sidebar__project--active")
  })
})

sidebarFolders.forEach((folder, ind) => {
  folder.addEventListener("click", (e) => {
    const path = document.querySelectorAll(".sidebar__folder svg path")[ind]
    if (path.classList.contains("sidebar__folder--active")) {
      path.classList.remove("sidebar__folder--active")
      path.classList.add("sidebar__folder--unactive")
      return
    }
    path.classList.remove("sidebar__folder--unactive")
    path.classList.add("sidebar__folder--active")
  })
})