// build search and result pane templates
document.addEventListener("DOMContentLoaded", function() {

  // create search pane
  let searchPane = document.createElement('div');
  searchPane.setAttribute('id', 'search');

  // create cat span
  catSpan = document.createElement('span');
  catSpan.setAttribute('id', 'cats')
  catSpan.classList.add('spanStyle');
  searchPane.appendChild(catSpan);

  // create tag span
  tagSpan = document.createElement('span');
  tagSpan.setAttribute('id', 'tags')
  tagSpan.classList.add('spanStyle');
  searchPane.appendChild(tagSpan);

  // create result pane
  let resultPane = document.createElement('div');
  resultPane.setAttribute('id', 'result');

  // create org span
  orgSpan = document.createElement('span');
  orgSpan.setAttribute('id', 'orgs')
  orgSpan.classList.add('spanStyle');
  resultPane.appendChild(orgSpan);

  // append search and result pane to display container
  let displayContainer = document.querySelector('main');
  displayContainer.appendChild(searchPane);
  displayContainer.appendChild(resultPane);

});

function updateRank(type, o) {
  let rankUpdate = ++o.rank
  console.log(rankUpdate);

  let configObj = {
    method: "PATCH",
    headers: {
      "Content-Type": "application/json",
      "Accept": "application/json"
    },
    body: JSON.stringify({
      'rank': `${rankUpdate}`
    })
  };
  switch(type) {
    case 'categories':
      fetch(CATEGORIES_URL + `/${o.id}`, configObj);
      break;
    case 'tags':
      fetch(TAGS_URL + `/${o.id}`, configObj);
      break;
    case 'organizations':
      fetch(ORGANIZATIONS_URL + `/${o.id}`, configObj);
      break;
  }
}

// update organizations to result pane
function updateOrgsToResultPane() {

  // clear existing organization span in search pane
  let orgSpan = document.getElementById('orgs');
  while (orgSpan.firstChild) {
    orgSpan.removeChild(orgSpan.firstChild);
  }

  // sort organizations by rank
  orgs.sort((a, b) => (a.rank < b.rank) ? 1 : -1)

  // populate span container with sorted organizations
  for (const org of orgs) {
    let p = document.createElement('p');
    let a = document.createElement('a');

    a.innerHTML = org.name;
    a.setAttribute('href', '#'); /* update style later */
    a.addEventListener('click', function(event) {
      event.preventDefault();
      updateRank('organizations', org);
    });

    p.appendChild(a);
    orgSpan.appendChild(p);
  }

}

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
    a.setAttribute('href', '#'); /* update style later */
    a.addEventListener('click', function(event) {
      event.preventDefault();
      updateRank('categories', cat);
    });

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
    a.setAttribute('href', '#'); /* update style later */
    a.addEventListener('click', function(event) {
      event.preventDefault();
      updateRank('tags', tag);
    });

    p.appendChild(a);
    tagSpan.appendChild(p);
  }

}
