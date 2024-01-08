// URL of the API endpoint
const url = "http://numbersapi.com/1..51";

// Get the numbers-container div from the DOM
const numbersList = document.getElementById("numbers-container");

// Fetch data from the API endpoint asynchronously
async function fetchData() {
  try {
    const response = await fetch(url);
    const data = await response.json();
    takeData(data);
  } catch (error) {
    console.error('Error:', error);
    numbersList.innerHTML = '<p>An error occurred while fetching data.</p>';
  }
}

function takeData(data) {
  const numbersFacts = Object.entries(data);
  renderData(numbersFacts);
}

function renderData(data) {
  let list = [];

  data.forEach(([key, value]) => {
    let elem = 
    `<div class="number-box">
      <div class="number-fact">
        <p>${value}</p>
      </div>
      <div class="number">
        ${key}
      </div>
    </div>`;
    list.push(elem);
  });

  numbersList.innerHTML = list.join(" ");
}

fetchData();