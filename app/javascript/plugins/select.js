const elements = document.querySelectorAll(".clickable");
console.log(elements);

const clickable = () => elements.forEach((element) => {
  element.addEventListener('click', (event) => {
    console.log(element.classList);
    element.classList.toggle("active");
  });
});

export { clickable };
