// build search and result pane templates
document.addEventListener("DOMContentLoaded", function() {

  // create search and results pane
  let searchPane = document.createElement('div');
  searchPane.setAttribute('id', 'search');
  let resultPane = document.createElement('div');
  resultPane.setAttribute('id', 'result');

  // create cat span
  catSpan = document.createElement('span');
  catSpan.setAttribute('id', 'cats')
  catSpan.classList.add('floatLeft', 'spanPadding');
  searchPane.appendChild(catSpan);

  // create tag span
  tagSpan = document.createElement('span');
  tagSpan.setAttribute('id', 'tags')
  tagSpan.classList.add('floatLeft', 'spanPadding');
  searchPane.appendChild(tagSpan);

  // append search and result pane to display container
  let displayContainer = document.querySelector('main');
  displayContainer.appendChild(searchPane);
  displayContainer.appendChild(resultPane);
  
});

// update categories to search pane
function updateCatsToSearchPane() {

  // clear existing category span in search pane
  let catSpan = document.getElementById('cats');
  while (catSpan.firstChild) {
    catSpan.removeChild(catSpan.firstChild);
  }

  // sort categories by rank
  categories.sort((a, b) => (a.rank < b.rank) ? 1 : -1)

  // populate span container with sorted categories
  for (const cat of categories) {
    let p = document.createElement('p');
    let a = document.createElement('a');
    a.innerHTML = cat.name;
    a.addEventListener('click', function(event) {
      event.preventDefault();
      /* update action later */
      console.log(`clicked ${cat.name}`)
    });

    // add href to give link style
    a.setAttribute('href', '#');

    // append cat to new span
    p.appendChild(a);
    catSpan.appendChild(p);
  }

}

function updateTagsToSearchPane() {

  // clear existing tag span in search pane
  let tagSpan = document.getElementById('tags');
  while (tagSpan.firstChild) {
    tagSpan.removeChild(tagSpan.firstChild);
  }

  // sort tags by rank
  tags.sort((a, b) => (a.rank < b.rank) ? 1 : -1)

  // populate span container with sorted categories
  for (const tag of tags) {
    let p = document.createElement('p');
    let a = document.createElement('a');
    a.innerHTML = tag.name;
    a.addEventListener('click', function(event) {
      event.preventDefault();
      /* update action later */
      console.log(`clicked ${tag.name}`)
    });

    // add href to give link style
    a.setAttribute('href', '#');

    // append cat to new span
    p.appendChild(a);
    tagSpan.appendChild(p);
  }

}
