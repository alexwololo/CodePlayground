import { useEffect } from "react";

document.getElementById('loadData').addEventListener('click', function () {
  //status
  document.querySelector('.data').innerHTML = `Data loading...`;
  if (clickedCount == 80) {
    clickedCount = 0;
  }
  clickedCount++;

  // Make a API call
  fetch(`https://swapi.dev/api/people/${clickedCount}/`)
    .then((e) => e.json())
    .then((data) => {
      // Display the content of the API
      document.querySelector('.data').innerHTML = `
          <strong>Name</strong>: <span>${data.name}</span><br>
          <strong>Height</strong>: <span>${data.height}</span><br>
          <strong>Mass</strong>: <span>${data.mass}</span><br>
          <strong>Hair Color</strong>: <span>${data.hair_color}</span><br>
          <strong>Skin Color</strong>: <span>${data.skin_color}</span><br>
          <strong>Eye Color</strong>: <span>${data.eye_color}</span><br>
          <strong>Birth Year</strong>: <span>${data.birth_year}</span><br>
          <strong>Gender</strong>: <span>${data.gender}</span><br>
      `;
    }
  }
}
