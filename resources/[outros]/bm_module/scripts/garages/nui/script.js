var pending = false;
var vehiclesList = []

$(document).ready(() => requestCars());

function requestCars() {
  $.post("http://bm_module/requestGarages", JSON.stringify({}), (data) => {
    console.log(JSON.stringify(data, null, 4))
    const ipva = data.cars[0].ipva || 0
    const detido = data.cars[0].status || 0
    
    ipva === true ? pending = true : pending = false
    detido === true ? pending = true : pending = false

    vehiclesList = data.cars;

    document.querySelector('.vehicleInfo h3').innerHTML = data.cars[0].name
    document.querySelector('.vehicleInfo section').innerHTML = `
      <img src="http://177.54.148.31:4020/lotus/carros/${data.cars[0].vehicle}.png" alt="Vehicle" id="vehicleImage">
      <div class="infos">
        <div class="vehicleStats">
          <img src="${data.cars[0].ipva ? 'garages/nui/assets/ipvaTrue.svg' : 'garages/nui/assets/ipva.svg'}" alt="Ipva" id="ipva">
          <div class="stats">
            <div class="stat">
              <p>Velocidade</p>
              <div class="statAmount">
                <p>${Math.floor(data.cars[0].maxspeed)} Km/h</p>
              </div>
            </div>
            <div class="stat">
              <p>Frenagem</p>
              <div class="statAmount">
                ${createPoints(data.cars[0].braking)}
              </div>
            </div>
            <div class="stat">
              <p>Agilidade</p>
              <div class="statAmount">
                ${createPoints(data.cars[0].agility)}
              </div>
            </div>
            <div class="stat">
              <p>Aderência</p>
              <div class="statAmount">
              ${createPoints(data.cars[0].aceleration)}
              </div>
            </div>
          </div>
        </div>
        <div class="vehicleButtons">
          <button onclick = "withdraw('${data.cars[0].ipva}')">RETIRAR</button>
          <button onclick = "save(true)">GUARDAR PROXIMO</button>
          <button onclick = "save(false)">GUARDAR</button>
        </div>
      </div>
    `
    data.cars.forEach(vehicle => {
      const div = document.createElement('div');
      div.classList.add('vehicle')
      div.setAttribute('data-name', vehicle.vehicle)
      div.innerHTML = `
        <p>${vehicle.name}</p>
        <img src="http://177.54.148.31:4020/lotus/carros/${vehicle.vehicle}.png" alt="Vehicle Image">
        <button>SELECIONAR</button>
      `
      document.querySelector('.vehicles').appendChild(div);
      vehicleSelected(div);
      div.addEventListener('click', () => {
        vehicle.ipva === true ? pending = true : pending = false
        vehicle.status === true ? pending = true : pending = false;
        document.querySelector('.vehicleInfo h3').innerHTML = vehicle.name
        document.querySelector('.vehicleInfo section').innerHTML = `
          <img src="http://177.54.148.31:4020/lotus/carros/${vehicle.vehicle}.png" alt="Vehicle" id="vehicleImage">
          <div class="infos">
            <div class="vehicleStats">
              <img src="${vehicle.ipva ? 'garages/nui/assets/ipvaTrue.svg' : 'garages/nui/assets/ipva.svg'}" alt="Ipva" id="ipva">
              <div class="stats">
                <div class="stat">
                  <p>Velocidade</p>
                  <div class="statAmount">
                    <p>${Math.floor(vehicle.maxspeed)} Km/h</p>
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
              </div>
            </div>
            <div class="vehicleButtons">
              <button onclick = "withdraw()">RETIRAR</button>
              <button onclick = "save(true)">GUARDAR PROXIMO</button>
              <button onclick = "save(false)">GUARDAR</button>
            </div>
          </div>
        `
        vehicleSelected(div);
      })
    })
  })
}

function searchVehicle ({ target }) {
  console.log(target)
  document.querySelector('.vehicles').innerHTML = '';
  const vehicleFiltered = vehiclesList.filter(vehicle => String(vehicle.name).toLowerCase().includes(target.value.toLowerCase()));
  vehicleFiltered.forEach(vehicle => {
    const div = document.createElement('div');
    div.classList.add('vehicle')
    div.setAttribute('data-name', vehicle.vehicle)
    // div.setAttribute('style', `background-image: url('http://177.54.148.31:4020/lotus/carros/${vehicle.vehicle}.png')`)
    div.innerHTML = `
      <p>${vehicle.name}</p>
      <img src="http://177.54.148.31:4020/lotus/carros/${vehicle.vehicle}.png" alt="Vehicle Image">
      <button>SELECIONAR</button>
    `
    document.querySelector('.vehicles').appendChild(div);
    div.querySelector('button').addEventListener('click', () => {
      vehicle.ipva === true ? pending = true : pending = false
      vehicle.status === true ? pending = true : pending = false;
      document.querySelector('.vehicleInfo h3').innerHTML = vehicle.name
      document.querySelector('.vehicleInfo section').innerHTML = `
        <img src="http://177.54.148.31:4020/lotus/carros/${vehicle.vehicle}.png" alt="Vehicle" id="vehicleImage">
        <div class="infos">
          <div class="vehicleStats">
            <img src="${vehicle.ipva ? 'garages/nui/assets/ipvaTrue.svg' : 'garages/nui/assets/ipva.svg'}" alt="Ipva" id="ipva">
            <div class="stats">
              <div class="stat">
                <p>Velocidade</p>
                <div class="statAmount">
                  <p>${Math.floor(vehicle.maxspeed)} Km/h</p>
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
            </div>
          </div>
          <div class="vehicleButtons">
            <button onclick = "withdraw()">RETIRAR</button>
            <button onclick = "save(true)">GUARDAR PROXIMO</button>
            <button onclick = "save(false)">GUARDAR</button>
          </div>
        </div>
      `
      vehicleSelected(div);
    })
  })
} 

function createPoints(points) {
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

function withdraw(ipva) {
  fetch('http://bm_module/spawnCar', {
    method: 'POST',
    body: JSON.stringify({
      name: document.querySelector('.vehicle.selected').getAttribute('data-name'),
      pending: pending
    })
  })
  fetch('http://bm_module/onClose', {
    method: 'POST',
    body: JSON.stringify({ close: 'garages' })
  })
  close();
}

function save(proximity) {
  fetch('http://bm_module/storeCar', {
    method: 'POST',
    body: JSON.stringify({
      name: document.querySelector('.vehicle.selected').getAttribute('data-name'),
      status: proximity
    })
  })
  fetch('http://bm_module/onClose', {
    method: 'POST',
    body: JSON.stringify({ close: 'garages' })
  })
  close();
}

function vehicleSelected(element) {
  document.querySelectorAll('.vehicles .vehicle').forEach(vehicle => vehicle.classList.remove('selected'))
  element.classList.add('selected')
}

function close () {
  window.location.reload()
}

window.addEventListener('keyup', ({ key }) => {
  if (key === 'Escape') {
    fetch('http://bm_module/onClose', {
      method: 'POST',
      body: JSON.stringify({ close: 'garages' })
    })
    close();
  }
})