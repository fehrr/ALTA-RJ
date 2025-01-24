const app = {
  currentCategory: null,
  priceFinal: 0,
  pricesItems: [],
  shopTattoos: {
    categories: {
      'head': { title: "Cabeça", available: [] },
			'torso': { title: "Torso", available: [] },
			'leftarm': { title: "Braço Esquerdo", available: [] },
			'rightarm': { title: "Braço Direito", available: [] },
			'leftleg': { title: "Perna Esquerda", available: [] },
			'rightleg': { title: "Perna Direita", available: [] },
			'hair': { title: "Micropigmentação", available: [] }
    }
  },
  selectedTattoos: {},

  post: async function (url, data) {
    return fetch(`https://${GetParentResourceName()}/` + url, {
      method: 'POST',
      body: JSON.stringify(data)
    })
  },

  open: function({ shop, tattoo }) {
    app.shopTattoos.categories = {
      'head': { title: "Cabeça", available: [] },
			'torso': { title: "Torso", available: [] },
			'leftarm': { title: "Braço Esquerdo", available: [] },
			'rightarm': { title: "Braço Direito", available: [] },
			'leftleg': { title: "Perna Esquerda", available: [] },
			'rightleg': { title: "Perna Direita", available: [] },
			'hair': { title: "Micropigmentação", available: [] }
    }

		document.body.style.display = 'block'
		app.selectedTattoos = tattoo;

    for (const [ category, element ] of Object.entries(shop)) {
      for (const tattoo of element.tattoo) {
        app.shopTattoos.categories[category].available.push(tattoo)
      }
    }

		document.querySelector('#firstClick').click();
  },

  close: function () {
    document.body.style.display = 'none';
    app.priceFinal = 0
    document.querySelector('.total p').innerText = 0
    app.pricesItems = []
    app.post('close')
  },

  selectCategory: function (element, category) {
    document.querySelector('ul li.selected')?.classList.remove('selected');
    document.querySelectorAll('svg path').forEach(path => path.style.fill = '#3E495A')
    
    element.classList.add('selected');
    element.querySelectorAll('svg path').forEach(path => path.style.fill = 'white');

		app.currentCategory = category;
		document.querySelector('.options').innerHTML = "";

    app.shopTattoos.categories[category].available.forEach(function (tattoo, i) {
      const container = document.querySelector('.options')
      let indexValue = `${i < 10 ? "000" + (i+1) : Number(i) < 100 ? "00" + (i+1) : i < 1000 ? "0"+ (i+1) : (i+1)}`
      container.innerHTML += `
        <div 
          class = 'option ${app.selectedTattoos[tattoo.name] ? "selected" : ""}'
          data-index = "${i}"
          data-code = '${tattoo.part}'
          data-category = '${category}'
          data-image = 'http://177.54.148.31:4020/tattos/${category}/${tattoo.name}.jpg'
          style = 'background-image: url("http://177.54.148.31:4020/tattos/${category}/${tattoo.name}.jpg")'
          onclick = "app.selectTattoo(this)"
          onmouseenter = 'app.mouseEnter(this)'
          onmouseleave = 'app.mouseLeave(this)'
        >  
          <p>${indexValue}</p>
          <p>R$50</p>
        </div>
        `;
    })
  },

  mouseEnter: function (element) {
    const image = element.dataset.image
    if (app.selectedTattoos[element.dataset.code]) return;
    element.style.backgroundImage = `radial-gradient(50% 50% at 50% 50%, rgba(0, 0, 0, 0) 0%, rgba(0, 80, 205, 0.25) 100%), url('${image}')`
  },

  mouseLeave: function (element) {
    const image = element.dataset.image
    if (app.selectedTattoos[element.dataset.code]) return;
    element.style.backgroundImage = `url('${image}')`
  },

  selectTattoo: function (element) {
    const image = element.dataset.image
    const category = element.dataset.category
    const index = element.dataset.index
    const code = element.dataset.code

    
    if (element.classList.contains('selected')) {
      element.classList.remove('selected')
      app.priceFinal -= 50
      delete app.selectedTattoos[code]
    } else {
      app.selectedTattoos[code] = {}
      element.classList.add('selected')
      element.style.backgroundImage = `radial-gradient(50% 50% at 50% 50%, rgba(0, 0, 0, 0) 0%, rgba(41, 255, 127, 0.25) 100%), url('${image}')`
      app.priceFinal += 50;
    }

    document.querySelector('.total p').innerText = app.priceFinal

		app.post("changeTattoo", {
      type: category,
      id: index
    });
  },

  clearTattoos: function () {
    document.querySelectorAll('.options .option.selected').forEach((el) => el.classList.remove('selected'));
    app.selectedTattoos = {}
    app.post('clearTattoo').catch(() => { })
    app.close()
  },

  finishTattos: function () {
    app.close()
    app.post('finishTattoos', {
      price: app.priceFinal
    })
  }
}

window.addEventListener('message', function ({ data }) {
  if (data.openNui) app.open(data);
})

document.addEventListener('keydown', function ({ keyCode }) {
  switch (keyCode) {
    case 68:
      app.post('rotateLeft')
        .catch(() => {});
      break;
    case 65:
      app.post('rotateRight')
        .catch(() => {});
    break;
    case 39:
      app.post('rotateLeft')
        .catch(() => {});
      break;
    case 37:
      app.post('rotateRight')
        .catch(() => {});
    break;
    case 27:
      app.close()
    break;
  }
});