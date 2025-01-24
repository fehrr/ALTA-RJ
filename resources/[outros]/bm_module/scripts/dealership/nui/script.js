var vehiclesList = [{ name: 'test', spawn: 't20'}]
var myVehiclesList = []
var pageVehiclesList = [];

$(document).ready(() => open())

function open() {
  fetch('http://bm_module/requestConceVehicles', { method: 'POST' })
    .then(response => response.json())
    .then(data => {
      vehiclesList.push(...data.list)
      updateList(vehiclesList)
    }).catch(err => console.log(err));
  fetch('https://bm_module/requestMyVehicles', { method: 'POST' })
    .then(response => response.json())
    .then(data => {
      console.log('Meus veículos', data.list.length)
      myVehiclesList.push(...data.list)
      updateList(myVehiclesList, true)
    }).catch(err => console.log(err));
}

function back () {
  document.querySelector('#vehiclesInfos').style.display = 'none';
  document.querySelector('#vehiclesTypes').style.display = 'block';
}

function setType (type) {
  if (type === 'myVehicles') {
    if (myVehiclesList.length === 0) return;
    setFirstVehicle(myVehiclesList, true);
    pageVehiclesList = myVehiclesList
    updateList(myVehiclesList, true);
  } else {
    const vehiclesFiltered = vehiclesList.filter(vehicle => vehicle.type === type);
    if (vehiclesFiltered.length === 0) return;
    setFirstVehicle(vehiclesFiltered)
    pageVehiclesList = vehiclesFiltered
    updateList(vehiclesFiltered);
  }
  document.querySelector('#vehiclesTypes').style.display = 'none';
  document.querySelector('#vehiclesInfos').style.display = 'flex';
}

function updateList (list, isMy = false) {
  document.querySelector('.vehicles').innerHTML = "";
  list.forEach(vehicle => {
    const div = document.createElement('div');
    div.classList.add('vehicle');
    div.innerHTML = `
      <h4>${vehicle.name}</h4>
      <img src="http://177.54.148.31:4020/lotus/carros/${vehicle.spawn}.png" alt="Vehicle Image">
      ${vehicle.type !== 'vip' ? `<p>R$${Number(vehicle.price).toLocaleString("pt-br")}</p>` : ''}
      <button>VER</button>
    `
    document.querySelector('.vehicles').appendChild(div);
    div.addEventListener('click', () => {
      document.querySelector('.vehicleStat').innerHTML = `
        <h3>${vehicle.name}</h3>
        <img src="http://177.54.148.31:4020/lotus/carros/${vehicle.spawn}.png" alt="Vehicle Image">
        <div class="stats">
          <div class="stat">
            <p>Velocidade</p>
            <div class="statAmount">
              <p>${Math.floor(vehicle.maxspeed)}</p>
            </div>
          </div>
          <div class="stat">
            <p>Frenagem</p>
            <div class="statAmount">
              ${createPoints(vehicle.braking)}
            </div>
          </div>
          <div class="stat">
            <p>Agilidade</p>
            <div class="statAmount">
              ${createPoints(vehicle.agility)}
            </div>
          </div>
          <div class="stat">
            <p>Aderência</p>
            <div class="statAmount">
              ${createPoints(vehicle.aceleration)}
            </div>
          </div>
          <div class="buttons">
            ${isMy 
              ? `<button onclick="sell('${vehicle.spawn}', '${vehicle.type === 'vip' ? 'vip' : ''}')">VENDER PARA LOJA</button>` 
              : `<button onclick="buyVehicle('${vehicle.spawn}', '${vehicle.type === 'vip' ? 'vip' : ''}')">COMPRAR</button>`
            }
            ${isMy 
              ? `<button onclick="transfer('${vehicle.spawn}', '${vehicle.type === 'vip' ? 'vip' : ''}')">TRANSFERIR POSSE</button>` 
              : `<button onclick="testDrive('${vehicle.spawn}')">TEST-DRIVE</button>`
            }
          </div>
        </div>
      `
    })
  })
}

function createPoints (points) {
  var result = '';
  var maxSlot = 12;
  for (var i = 0; i <= maxSlot; i++) {
    if (i < points) {
      result += '<div class = "active"></div>'
    } else {
      result += '<div></div>'
    }
  }
  return result
}

function setFirstVehicle (vehicle, isMy = false) {
  document.querySelector('.vehicleStat').innerHTML = `
  <h3>${vehicle[0]?.name}</h3>
  <img src="http://177.54.148.31:4020/lotus/carros/${vehicle[0]?.spawn}.png" alt="Vehicle Image">
  <div class="stats">
    <div class="stat">
      <p>Velocidade</p>
      <div class="statAmount">
        <p>${Math.floor(vehicle[0]?.maxspeed)}</p>
      </div>
    </div>
    <div class="stat">
      <p>Frenagem</p>
      <div class="statAmount">
        ${createPoints(vehicle[0]?.braking)}
      </div>
    </div>
    <div class="stat">
      <p>Agilidade</p>
      <div class="statAmount">
        ${createPoints(vehicle[0]?.agility)}
      </div>
    </div>
    <div class="stat">
      <p>Aderência</p>
      <div class="statAmount">
        ${createPoints(vehicle[0]?.aceleration)}
      </div>
    </div>
    <div class="buttons">
      ${isMy 
        ? `<button onclick="sell('${vehicle[0]?.spawn}')">VENDER PARA LOJA</button>` 
        : `<button onclick="buyVehicle('${vehicle[0]?.spawn}', '${vehicle[0]?.type === 'vip' ? 'vip' : ''}')">COMPRAR</button>`
      }
      ${isMy 
        ? `<button onclick="transfer('${vehicle[0]?.spawn}')">TRANSFERIR POSSE</button>` 
        : `<button onclick="testDrive('${vehicle[0]?.spawn}')">TEST-DRIVE</button>`
      }
    </div>
  </div>
`
}

function close () {
  myVehiclesList = []
  vehiclesList = []
  promotional = {}
}

function buyVehicle(spawn, vip = false) {
  if (vip) {
    window.invokeNative('openUrl', 'https://tokyoroleplay.hydrus.gg/categories/3797')
  } else {
    fetch('http://bm_module/buyVehicle', {
      method: 'POST',
      body: JSON.stringify({ vehicle: spawn })
    })
  }
}

function testDrive(spawn) {
  fetch('http://bm_module/testDrive', {
    method: 'POST',
    body: JSON.stringify({ vehicle: spawn })
  })
}

function searchVehicle({ target }) {
  const value = target.value.toLowerCase();
  if (value.length === 0) {
    updateList(pageVehiclesList);
  } else {
    updateList(pageVehiclesList.filter(vehicle => String(vehicle.name).toLocaleLowerCase().includes(value)));
  }
}

function sell(spawn, isVip = false ) {
  if (isVip) return;
  fetch('http://bm_module/sellVehicle', { 
    method: 'POST',
    body: JSON.stringify({ vehicle: spawn })
  })
}

function transfer(spawn, isVip = false ) {
  if (isVip) return;
  fetch('http://bm_module/transferVehicle', { 
    method: 'POST',
    body: JSON.stringify({ vehicle: spawn })
  })
}