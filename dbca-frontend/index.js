// build search and result pane templates
document.addEventListener("DOMContentLoaded", function() {

  // create display pane
  let displayPane = document.createElement('div');
  displayPane.setAttribute('id', 'display');

  // create search pane
  let searchPane = document.createElement('div');
  searchPane.setAttribute('id', 'search');

  // create cat span
  let catSpan = document.createElement('span');
  catSpan.setAttribute('id', 'cats')
  catSpan.classList.add('spanStyle');
  searchPane.appendChild(catSpan);

  // create tag span
  let tagSpan = document.createElement('span');
  tagSpan.setAttribute('id', 'tags')
  tagSpan.classList.add('spanStyle');
  searchPane.appendChild(tagSpan);

  // create result pane
  let resultPane = document.createElement('div');
  resultPane.setAttribute('id', 'result');

  // create org span
  let orgSpan = document.createElement('span');
  orgSpan.setAttribute('id', 'orgs')
  orgSpan.classList.add('spanStyle');
  resultPane.appendChild(orgSpan);

  // create event span
  let eventSpan = document.createElement('span');
  eventSpan.setAttribute('id', 'events')
  eventSpan.classList.add('spanStyle');
  resultPane.appendChild(eventSpan);

  // append search and result pane to display container
  let displayContainer = document.querySelector('main');
  displayContainer.appendChild(displayPane);
  displayContainer.appendChild(searchPane);
  displayContainer.appendChild(resultPane);

});

// increment cat, tag, org, or event rank
function updateRank(o) {

  let rankUpdate = ++o.rank

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

  switch(o.constructor.name) {
    case 'Category':
      fetch(CATEGORIES_URL + `/${o.id}`, configObj);
      break;
    case 'Tag':
      fetch(TAGS_URL + `/${o.id}`, configObj);
      break;
    case 'Organization':
      fetch(ORGANIZATIONS_URL + `/${o.id}`, configObj);
      break;
    case 'Event':
      fetch(EVENTS_URL + `/${o.id}`, configObj);
      break;
  }

}

// populate display pane
function updateDisplayPane(o) {

  // clear existing display pane
  let div = document.getElementById('display');
  while (div.firstChild) {
    div.removeChild(div.firstChild);
  }

  // creqte DOM elements
  let image = document.createElement('img');
  let h3 = document.createElement('h3');
  let description = document.createElement('span');
  let info = document.createElement('div')

  // assign info to DOM elements
  h3.innerHTML = o.name;
  description.innerHTML = o.description;
  image.setAttribute('src', o.image);

  // assign styles
  image.classList.add('imgAttr');
  info.classList.add('info');

  // append children
  info.appendChild(h3);
  info.appendChild(description);
  div.appendChild(image);
  div.appendChild(info);

}

// update organizations to result pane
function updateOrgsToResultPane(orgIds = false) {

  // clear existing organization span in search pane
  let orgSpan = document.getElementById('orgs');
  while (orgSpan.firstChild) {
    orgSpan.removeChild(orgSpan.firstChild);
  }

  // sort organizations by rank
  orgs.sort((a, b) => (a.rank < b.rank) ? 1 : -1)

  // determine if all orgs or selected orgs
  let orgsArray = {};
  if (orgIds) {
    orgsArray = orgIds;
  } else {
    orgsArray = orgs;
  }

  // populate span container with sorted organizations
  for (const org of orgsArray) {
    let p = document.createElement('p');
    let a = document.createElement('a');

    a.innerHTML = org.name;
    a.setAttribute('href', '#'); /* update style later */
    a.addEventListener('click', function(event) {
      event.preventDefault();
      updateRank(org);
      updateDisplayPane(org);
    });

    p.appendChild(a);
    orgSpan.appendChild(p);
  }

}

// update events to result pane
function updateEventsToResultPane(eventIds = false) {

  // clear existing event span in search pane
  let eventSpan = document.getElementById('events');
  while (eventSpan.firstChild) {
    eventSpan.removeChild(eventSpan.firstChild);
  }

  // sort events by rank
  events.sort((a, b) => (a.rank < b.rank) ? 1 : -1)

  // determine if all events or selected events
  let eventsArray = {};
  if (eventIds) {
    eventsArray = eventIds;
  } else {
    eventsArray = events;
  }

  // populate span container with sorted events
  for (const eve of eventsArray) {
    let p = document.createElement('p');
    let a = document.createElement('a');

    a.innerHTML = eve.name;
    a.setAttribute('href', '#'); /* update style later */
    a.addEventListener('click', function(event) {
      event.preventDefault();
      updateRank(eve);
      updateDisplayPane(eve);
    });

    p.appendChild(a);
    eventSpan.appendChild(p);
  }

}

// update search panel according to category or tag selection
function updateSearchPane(type, o) {

  // callback functions for filters
  function callbackIdCats(v) {
    return v.category_id == o.id
  }
  function callbackIdTags(v) {
    return v.tag_id == o.id
  }
  function callbackOrg(org) {
    return orgIds.includes(org.id);
  }
  function callbackEvent(eve) {
    return eventIds.includes(eve.id);
  }

  let orgIds = [];
  let eventIds = [];


  // determine object type
  if (type == 'categories') {

    // retrieve relevent orgs
    let org_cats = organization_categories.filter(callbackIdCats);
    orgIds = org_cats.map(org => org.organization_id);

    // retrieve relevent events
    let event_cats = event_categories.filter(callbackIdCats);
    eventIds = event_cats.map(eve => eve.event_id);

  } else if (type == 'tags') {

    // retrieve relevent orgs
    let org_tags = organization_tags.filter(callbackIdTags);
    orgIds = org_tags.map(tag => tag.organization_id);

    // retrieve relevent events
    let eventTags = event_tags.filter(callbackIdTags);
    eventIds = eventTags.map(eve => eve.event_id);

  }

  let orgObjs = orgs.filter(callbackOrg);
  let eventObjs = events.filter(callbackEvent);

  // update result panes
  updateOrgsToResultPane(orgObjs);
  updateEventsToResultPane(eventObjs);

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
      updateRank(cat);
      updateSearchPane('categories', cat);
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
      updateRank(tag);
      updateSearchPane('tags', tag);
    });

    p.appendChild(a);
    tagSpan.appendChild(p);
  }

}
