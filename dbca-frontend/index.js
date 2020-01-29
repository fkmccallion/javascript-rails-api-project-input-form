document.addEventListener("DOMContentLoaded", function() {
  let displayContainer = document.querySelector('main');
  let searchDiv = document.createElement('div');
  searchDiv.setAttribute('id', 'search');
  let resultDiv = document.createElement('div');
  resultDiv.setAttribute('id', 'result');
  displayContainer.appendChild(searchDiv);
  displayContainer.appendChild(resultDiv);
});

function updateCatsToSearch() {
  // add categories to search div
  let div = document.getElementById('search');
  let span = document.createElement('span');
  span.classList.add('floatLeft', 'spanPadding');
  // sort categories by rank
  categories.sort((a, b) => (a.rank < b.rank) ? 1 : -1)
  for (const cat of categories) {
    let p = document.createElement('p');
    let a = document.createElement('a');
    a.innerHTML = cat.name;
    // add href to give link style
    a.setAttribute('href', '');
    a.addEventListener('click', function(event) {
      event.preventDefault();
      console.log(`clicked ${cat.name}`)
    });
    p.appendChild(a);
    span.appendChild(p);
  }
  div.appendChild(span);
}

function updateTagsToSearch() {
  // add categories to search div
  let div = document.getElementById('search');
  let span = document.createElement('span');
  span.classList.add('floatLeft', 'spanPadding');
  // sort tags by rank
  tags.sort((a, b) => (a.rank < b.rank) ? 1 : -1)
  for (const tag of tags) {
    let p = document.createElement('p');
    let a = document.createElement('a');
    a.innerHTML = tag.name;
    // add href to give link style
    a.setAttribute('href', '');
    a.addEventListener('click', function(event) {
      event.preventDefault();
      console.log(`clicked ${tag.name}`)
    });
    p.appendChild(a);
    span.appendChild(p);
  }
  div.appendChild(span);
}
