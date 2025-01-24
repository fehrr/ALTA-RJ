const app = {
  currentCategory: null,
  model: {
    hairModel: null,
    firstHairColor: null,
    secondHairColor: null,
    makeupModel: null,
    makeupcolor: null,
    lipstickModel: null,
    lipstickColor: null,
    beardModel: null,
    beardColor: null,
    eyebrowsModel: null,
    eyebrowsColor: null,
    blushModel: null,
    blushColor: null,
    eyesColor: null,
  },

  open: (data) => {
    document.body.style.display = 'flex';
    delete data.action;
    app.model = data;
    const div = document.querySelector('.inputGroup #hairModel')
    div.setAttribute('max', data.maxHairModel)
    div.parentElement.querySelector("div").innerText = `0/${data.maxHairModel}`

    Object.entries(data).forEach(([key, value]) => {
      const container = document.querySelector(`.inputGroup input[oninput="app.selectItem(this, '${key}')"]`)
      if (container) {
        container.setAttribute("value", value)
        const div = container.parentElement.querySelector("div")
        div.innerText = `${value}/${div.innerText.split("/")[1]}`
      }
    })
  },

  close: () => {
    document.body.style.display = 'none';
  },

  selectCategory: (category, element) => {
    if (element.classList.contains(category)) return;
    document.querySelector('#header .selected')?.classList.remove('selected')
    document.querySelectorAll('#main .inputGroup').forEach((input) => {
      if (input.getAttribute('data-type') === category) {
        input.style.display = 'flex';
      } else {
        input.style.display = 'none';
      }
    })
    element.classList.add('selected')
    app.currentCategory = category;
  },
  
  selectItem: (element, type) => {
    app.model[type] = element.value

    const elementNumber = element.parentElement.querySelector('div')
    elementNumber.innerText = `${element.value}/${elementNumber.innerText.split("/")[1]}`
    fetch('https://lotus_barbershop/updateSkin', {
      method: 'POST',
      body: JSON.stringify(app.model)
    })
    .then(res => res.json())

  },

  saveButton: () => {
    fetch('https://lotus_barbershop/closeNui', { method: 'POST' })
    fetch('https://lotus_barbershop/updateSkin', {
      method: 'POST',
      body: JSON.stringify(app.model)
    })
    .then(res => res.json())
  },

  cancelButton: () => {
    fetch('https://lotus_barbershop/closeNui', { method: 'POST' })
  }
}

document.addEventListener('keydown', function ({ keyCode }) {
  switch (keyCode) {
    case 68:
      fetch('https://lotus_barbershop/rotateRight', {
        method: 'POST',
        body: JSON.stringify({})
      })
      break;
    case 65:
      fetch('https://lotus_barbershop/rotateLeft', {
        method: 'POST',
        body: JSON.stringify({})
      })
      break;
    case 39:
      fetch('https://lotus_barbershop/rotateRight', {
        method: 'POST',
        body: JSON.stringify({})
      })
      break;
    case 37:
      fetch('https://lotus_barbershop/rotateLeft', {
        method: 'POST',
        body: JSON.stringify({})
      })
      break;
  }
});

app.selectCategory("face", document.querySelector('#header .selected'))

window.addEventListener('message', ({ data }) => {
  if (data.openBarbershop === true) app.open(data);
  if (data.openBarbershop === false) app.close();
})