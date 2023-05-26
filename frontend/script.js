const fetchDataBtn = document.getElementById('fetch-data-btn');
const dataContainer = document.getElementById('data-container');

fetchDataBtn.addEventListener('click', async () => {
  try {
    const response = await fetch('/api/data');
    const data = await response.json();
    dataContainer.textContent = JSON.stringify(data);
  } catch (error) {
    console.error(error);
    dataContainer.textContent = 'An error occurred while fetching data from the server';
  }
});
