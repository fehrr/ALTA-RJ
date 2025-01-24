let selectedCam = null;

const app = {
  currentValues: null,
  currentGender: null,
  currentClothing: null,
  currentClothingType: null,

  open: ({ currentGender, currentClothing }) => {
    app.currentGender = currentGender
    app.currentClothing = currentClothing

    document.body.style.display = 'flex'
    // setOptionsValues()
  },

  close: () => {
    document.body.style.display = 'none';
    app.post('close')
  },

  post: async (url, data = {}) => {
    return fetch(`https://${GetParentResourceName()}/` + url, {
      method: 'POST',
      body: JSON.stringify(data)
    })
  },

  setOption: (option) => {
    if (option === 'clothes') {
      document.querySelector('#utils').style.display = 'none';
      document.querySelector('#clothes').style.display = 'flex';
    } else if (option === 'utils') {
      document.querySelector('#clothes').style.display = 'none';
      document.querySelector('#utils').style.display = 'flex';
    }
  },

  updateValue: (element, side) => {
    let value = Number(element.parentElement.querySelector('input').value)
    if (side === 'right') {
      element.parentElement.querySelector('input').value = value + 1
    } else if (side === 'left') {
      element.parentElement.querySelector('input').value = value === -1 ? value : value - 1
    }

    const inputElement = element.parentElement.parentElement.parentElement.querySelectorAll('.item')[1].querySelector('input')
    if (Number(inputElement.value) !== 0 && element.parentElement.parentElement.querySelector('.type').innerText !== 'TEXTURA') {
      inputElement.value = 0
      app.post('updateSkin', {
        type: 'texture',
        clothingType: element.parentElement.parentElement.parentElement.parentElement.dataset.type,
        articleNumber: Number(inputElement.value)
      })
    }

    app.post('updateSkin', {
      type: element.parentElement.parentElement.querySelector('.type').innerText === 'TEXTURA' ? 'texture' : 'item',
      clothingType: element.parentElement.parentElement.parentElement.parentElement.dataset.type,
      articleNumber: Number(element.parentElement.querySelector('input').value)
    })
  },

  changeValue: (element) => {
    app.post('updateSkin', {
      type: element.parentElement.parentElement.querySelector('.type').innerText === 'TEXTURA' ? 'texture' : 'item',
      clothingType: element.parentElement.parentElement.parentElement.parentElement.dataset.type,
      articleNumber: Number(element.value)
    })
  },

  selectTexture: (element, texture) => {
    document.querySelector('.textures .selected')?.classList.remove('selected')
    element.classList.add('selected');

    app.post('updateSkin', {
      type: 'texture',
      clothingType: app.currentClothingType,
      articleNumber: texture
    })
  },

  saveCloth: () => {
    app.post('saveClothing')
  },

  selectItem: (element) => {
    const clothingCategory = element.getAttribute('data-type')
    const clothingNumber = element.getAttribute('data-number')
    const clothingTextures = app.currentValues[clothingCategory].texture

    document.querySelector('.item.selected')?.classList.remove('selected')
    element.classList.add('selected')

    appendTexture(clothingTextures)

    app.post('updateSkin', {
      type: 'item',
      clothingType: clothingCategory,
      articleNumber: Number(clothingNumber),
    })
  },

  renderSkinValues: () => {
    Object.entries(app.currentValues).forEach(([type, value]) => {
      
      const container = document.querySelector(`.option[data-type=${type}]`)
      if (!container) return;
      const inputs = container.querySelectorAll('.typeInfo input')

      inputs[0].setAttribute('max', value.item)
      inputs[1].setAttribute('max', value.texture)
    })
  },

  resetOutfit: () => {
    app.post('resetOutfit');
    document.body.style.display = "none"
  }
}


function appendTexture(textures) {
  const textureElement = document.querySelector('.textures')
  textureElement.innerHTML = ''
  textureElement.innerHTML += ` 
    <button class="selected" onclick="app.selectTexture(this, 0)">TEXTURE</button>
  `;
  for (let i = 0; i < textures; i++) {
    textureElement.innerHTML += `
      <button onclick="app.selectTexture(this, ${i+1})">TEXTURE ${String(i+1).padStart(2, '0')}</button>
    `;
  }
}

let atualPosition = 0

window.previusButton = () => {
  const scrollElement = document.querySelector('.header-types .list')
  if (atualPosition - 230 <= 0) {
    atualPosition = 0;
    scrollElement.scrollTo({
      behavior: 'smooth',
      left: 0
    })

    return
  }
  atualPosition-=230
  scrollElement.scrollTo({
    behavior: 'smooth',
    left: atualPosition - 230
  })
}

window.nextButton = () => {
  const scrollElement = document.querySelector('.header-types .list')
  if (atualPosition === scrollElement.clientWidth) return
  if (atualPosition >= scrollElement.scrollWidth - scrollElement.clientWidth) return atualPosition = scrollElement.scrollWidth - scrollList.clientWidth
  atualPosition += 230

  scrollElement.scrollTo({
    behavior: 'smooth',
    left: atualPosition + 230
  })
}

window.addEventListener('message', ({ data }) => {
  if (data.action === 'open') app.open(data);
  if (data.action === 'close') app.close();
  if (data.action === 'updateMax') {
    app.currentValues = data.maxValues
    app.renderSkinValues()
  }
})

window.addEventListener('keyup', ({ key }) => {
  if (key === 'Escape') {
    app.resetOutfit()
  }
})

document.addEventListener('keydown', function ({ keyCode }) {
  switch (keyCode) {
    case 68:
      app.post('rotateRight').catch(() => { });
      break;
    case 65:
      app.post('rotateLeft').catch(() => { });
      break;
    case 39:
      app.post('rotateRight').catch(() => { });
      break;
    case 37:
      app.post('rotateLeft').catch(() => { });
      break;
  }
});

document.querySelectorAll('.set-camera').forEach((e) => e.addEventListener('click', () => {
  app.post('setupCam', {
    value: Number(e.dataset.value)
  });
}));