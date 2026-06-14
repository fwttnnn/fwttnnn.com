const animation = {
  text: {}
}

animation.text.bubble = (el, color) => {
  const from = {
    overwrite: true,
    scale: 1.2,
    y: -3,
    color,
    rotation: (Math.random() - 0.5) * 30,
  }

  const to = {
    overwrite: true,
    scale: 1,
    rotation: 0,
    y: 0,
    duration: 0.4,
    ease: "power3.out"
  }

  gsap.fromTo(el, from, to)
}

document.querySelectorAll(".--component-text-bubble--special-makers").forEach((el) => {
  const palette = [
    "#ED353B",
    "#5FC3CF",
    "#FECC2F",
  ]

  el.addEventListener("mouseenter", () => {
    animation.text.bubble(el, palette[Math.floor(Math.random() * palette.length)])
  })
})

document.querySelectorAll(".--component-text-bubble--special-telyu").forEach((el) => {
  const palette = [
    "#ED1F29",
    "#B5252A",
    "#959597",
    "#55565B",
  ]

  el.addEventListener("mouseenter", () => {
    animation.text.bubble(el, palette[Math.floor(Math.random() * palette.length)])
  })
})

document.querySelectorAll(".--component-text-bubble-pastel").forEach((el) => {
  el.addEventListener("mouseenter", () => {
    animation.text.bubble(el, `hsl(${Math.random() * 360}, 70%, 80%)`)
  })
})

document.querySelectorAll(".--component-text-bubble-rainbow").forEach((el) => {
  el.addEventListener("mouseenter", () => {
    const rainbow = [
      "#218BFF",
      "#3DDC84",
      "#FF4D4F",
      "#A371F7",
      "#FF6AC1",
      "#F2A900",
    ]

    animation.text.bubble(el, rainbow[Math.floor(Math.random() * rainbow.length)])
  })
})

document.querySelectorAll(".--component-text-bubble-red").forEach((el) => {
  el.addEventListener("mouseenter", () => {
    animation.text.bubble(el, `hsl(${Math.random() * 30}, 70%, 55%)`)
  })
})


