const BASE_URL = "https://dbca-backend-test.herokuapp.com/"

const USERS_URL = `${BASE_URL}/users`
const HOURS_URL = `${BASE_URL}/hours`
const ORGANIZATIONS_URL = `${BASE_URL}/organizations`
const EVENTS_URL = `${BASE_URL}/events`
const CATEGORIES_URL = `${BASE_URL}/categories`
const TAGS_URL = `${BASE_URL}/tags`
const ORGANIZATION_CATEGORIES_URL = `${BASE_URL}/organization_categories`
const ORGANIZATION_TAGS_URL = `${BASE_URL}/organization_tags`
const EVENT_CATEGORIES_URL = `${BASE_URL}/event_categories`
const EVENT_TAGS_URL = `${BASE_URL}/event_tags`

/* to be used in refactoring iteration loop */
const URL_ARRAY = [USERS_URL, HOURS_URL, ORGANIZATIONS_URL, EVENTS_URL, CATEGORIES_URL, TAGS_URL, ORGANIZATION_CATEGORIES_URL, ORGANIZATION_TAGS_URL, EVENT_CATEGORIES_URL, EVENT_TAGS_URL]

let users = [];
let hours = [];
let orgs = [];
let events = [];
let categories = [];
let tags = [];
let organization_categories = [];
let organization_tags = [];
let event_categories = [];
let event_tags = [];


/* refactor fetch requests in an iteration loop */
document.addEventListener("DOMContentLoaded", function() {

  updateObjects();

});

function updateObjects() {

  updateUsers();
  updateHours();
  updateOrganizations();
  updateEvents();
  updateTags();
  updateCategories();
  updateOrganizationCategories();
  updateOrganizationTags();
  updateEventCategories();
  updateEventTags();

}

function updateUsers() {
  // create array of user objects from users JSON data
  users = [];
  fetch(USERS_URL)
    .then(function(response) {
      return response.json();
    })
    .then(function(json) {
      for (const element of json) {
        let n = new User(element);
        users.push(n);
      }
    })
}

function updateHours() {
  // create array of user objects from users JSON data
  hours = [];
  fetch(HOURS_URL)
    .then(function(response) {
      return response.json();
    })
    .then(function(json) {
      for (const element of json) {
        let n = new Hour(element);
        hours.push(n);
      }
    })
}

function updateOrganizations() {
  // create array of organization objects from users JSON data
  orgs = [];
  fetch(ORGANIZATIONS_URL)
    .then(function(response) {
      return response.json();
    })
    .then(function(json) {
      for (const element of json) {
        let n = new Organization(element);
        orgs.push(n);
      }
      updateOrgsToResultPane();
    })
}

function updateEvents() {
  // create array of event objects from users JSON data
  events = [];
  fetch(EVENTS_URL)
    .then(function(response) {
      return response.json();
    })
    .then(function(json) {
      for (const element of json) {
        let n = new Event(element);
        events.push(n);
      }
      updateEventsToResultPane();

      // select highest ranked event and display
      events.sort((a, b) => (a.rank < b.rank) ? 1 : -1)
      updateDisplayPane(events[0]);
    })
}

function updateTags() {
  // create array of tag objects from users JSON data
  tags = [];
  fetch(TAGS_URL)
    .then(function(response) {
      return response.json();
    })
    .then(function(json) {
      for (const element of json) {
        let n = new Tag(element);
        tags.push(n);
      }
      updateTagsToSearchPane();
    })
}

function updateCategories() {
  // create array of category objects from users JSON data
  categories = [];
  fetch(CATEGORIES_URL)
    .then(function(response) {
      return response.json();
    })
    .then(function(json) {
      for (const element of json) {
        let n = new Category(element);
        categories.push(n);
      }
      updateCatsToSearchPane();
    })
}

function updateOrganizationCategories() {
  // create array of organizationCategory objects from users JSON data
  organization_categories = [];
    fetch(ORGANIZATION_CATEGORIES_URL)
    .then(function(response) {
      return response.json();
    })
    .then(function(json) {
      for (const element of json) {
        let n = new OrganizationCategory(element);
        organization_categories.push(n);
      }
    })
}

function updateOrganizationTags() {
  // create array of organizationTag objects from users JSON data
  organization_tags = [];
  fetch(ORGANIZATION_TAGS_URL)
    .then(function(response) {
      return response.json();
    })
    .then(function(json) {
      for (const element of json) {
        let n = new OrganizationTag(element);
        organization_tags.push(n);
      }
    })
}

function updateEventCategories() {
  // create array of eventCategory objects from users JSON data
  event_categories = [];
  fetch(EVENT_CATEGORIES_URL)
    .then(function(response) {
      return response.json();
    })
    .then(function(json) {
      for (const element of json) {
        let n = new EventCategory(element);
        event_categories.push(n);
      }
    })
}

function updateEventTags() {
  // create array of organizationTag objects from users JSON data
  event_tags = [];
  fetch(EVENT_TAGS_URL)
    .then(function(response) {
      return response.json();
    })
    .then(function(json) {
      for (const element of json) {
        let n = new EventTag(element);
        event_tags.push(n);
      }
    })
}
