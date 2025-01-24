const app = {
  currentPosition: 1,
  open: function() {
    document.body.style.display = 'block';
  },
  close: function() {
    document.body.style.display = 'none';
  },

  changeCentered: function(side) {
    const cardsContainer = document.querySelector('#app .cardsContainer .cards')
    const cards = document.querySelectorAll('#app .cardsContainer .cards .card')

    if (side === 'left' && this.currentPosition > 0) {
      this.currentPosition--
      const newCurrentCard = cards[this.currentPosition]

      newCurrentCard.classList.add('centered')
      cards[this.currentPosition + 1].classList.remove('centered')
      
      if (cardsContainer.scrollLeft === 0) return;
      newCurrentCard.scrollIntoView({
        behavior: 'smooth',
        block: 'center',
        inline: 'center'
      })
    } else if (side === 'right' && this.currentPosition + 1 < cards.length) {
      const newCurrentCard = cards[this.currentPosition + 1]

      cards[this.currentPosition].classList.remove('centered')
      newCurrentCard.classList.add('centered')
      this.currentPosition++

      if (cardsContainer.scrollLeft === cardsContainer.scrollWidth) return;
      newCurrentCard.scrollIntoView({
        behavior: 'smooth',
        block: 'center',
        inline: 'center'
      })
    }
  },

  selectCard: function (element) {
    if  (element.classList.contains('centered')) return;

    const position = Array.from(element.parentNode.children).indexOf(element);
    const pastCard = element.parentNode.children[this.currentPosition]

    pastCard.classList.remove('centered')

    this.currentPosition = position
    element.classList.add('centered')

    element.scrollIntoView({
      behavior: 'smooth',
      block: 'center',
      inline: 'center'
    })
  },

  selectSpawn: function(spawn) {
    fetch(`${config.url}/ButtonClick`, { method: 'POST', body: JSON.stringify(spawn) })
  }
}

const cardsContainer = document.querySelector('#app .cardsContainer .cards')
config.spawns.forEach((spawn, i) => {
  cardsContainer.innerHTML += `
    <div class = 'card ${i == 1 && 'centered'}' onclick="app.selectCard(this)">
      <img src=${spawn.image} alt="">
      <h3>${spawn.name}</h3>
      <p>${spawn.description}</p>
      <button onclick="app.selectSpawn('${spawn.callback}')">Spawnar</button>
    </div>
  `;
})

window.addEventListener('message', ({ data }) => {
  if (data.action === 'open') app.open()
  if (data.action === 'close') app.close()
})