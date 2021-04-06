let cards = [
  {
    front: "Question 1",
    back: "Answer 1"
  },
  {
    front: "Question 2",
    back: "Answer 2"
  },
  {
    front: "Question 3",
    back: "Answer 3"
  }
];

let currentCard = 1,
  carousel = document.querySelector(".carousel"),
  next = document.querySelector(".next"),
  prev = document.querySelector(".prev");

renderCards();

function renderCards() {
  carousel.style.width = `${cards.length}00vw`;
  cards.map(el => {
    let div = document.createElement("div");
    div.classList.add("card");
    let front = document.createElement("div");
    front.classList.add("front");
    let back = document.createElement("div");
    back.classList.add("back");
    front.textContent = el.front;
    back.textContent = el.back;
    div.appendChild(front);
    div.appendChild(back);
    div.addEventListener("click", function (e) {
      e.srcElement.parentNode.classList.toggle("active");
    });
    carousel.appendChild(div);
  });
}

next.addEventListener("click", function (e) {
  if (currentCard >= cards.length) {
    return;
  }
  currentCard++;
  cardFly();
});

prev.addEventListener("click", function (e) {
  if (currentCard - 1 <= 0) {
    return;
  }
  currentCard--;
  cardFly();
});

function cardFly() {
  carousel.style.transform = `translateX(-${currentCard - 1}00vw)`;
}
