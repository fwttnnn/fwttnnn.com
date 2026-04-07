/**
 * TODO: on mobile (iphone), video blacks out first?
 *       need tests
 */
const isMobile = /iPhone|iPad|iPod|Android/i.test(navigator.userAgent)

document.querySelectorAll(".--component-media-video").forEach((el) => {
  if (isMobile) {
    /**
     * NOTE: for reference, see: `src/web/components/media/image.lisp`
     */
    const img        = document.createElement("img")
          img.src    = el.getAttribute("src")
                         .replace("/videos/", "/images/")
                         .replace(/\.\w+$/, ".png")
          img.width  = 101
          img.height = 133.2
          img.style  = "width: 100px; height: 133.2px; object-fit: cover;"

    el.replaceWith(img)
    return
  }

  el.addEventListener("mouseenter", () => el.play())
  el.addEventListener("mouseleave", () => el.pause())
})
