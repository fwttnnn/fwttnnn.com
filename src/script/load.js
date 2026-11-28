/**
 * NOTE: special script to pre-load
 *       necessary css, fonts.
 */

(async () => {
  const stylesheets = [...document.querySelectorAll('link[rel="stylesheet"]')]

  await Promise.all(stylesheets.map((link) => {
      if (link.sheet) return Promise.resolve()

      return new Promise(resolve => {
        link.addEventListener("load", resolve, { once: true })
        link.addEventListener("error", resolve, { once: true })
      })
    })
  )

  await document.fonts.ready

  document.documentElement.classList.add("loaded")
})()
