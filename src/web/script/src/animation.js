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


