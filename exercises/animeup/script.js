/* Animations */

document.querySelectorAll(".animate-slide").forEach(e => {
    e.addEventListener("mouseenter", () => {
        e.classList.add("hover-slide");
        e.addEventListener("animationend", () => {
            e.classList.remove("hover-slide");
        });
    });
});

/* Marquee3000 */

Marquee3k.init();

document.querySelectorAll(".below-m3k").forEach(e => {
    let prev = e.previousElementSibling;    
    e.addEventListener("mouseenter", () => {
        Marquee3k.pause(parseInt(prev.id));
    });
    e.addEventListener("mouseleave", () => {
        Marquee3k.play(parseInt(prev.id));
    });
})