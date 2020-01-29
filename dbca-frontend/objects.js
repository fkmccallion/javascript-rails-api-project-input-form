const BASE_URL = "http://localhost:3000"

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

const users = [];
const hours = [];
const orgs = [];
const events = [];
const categories = [];
const tags = [];
const organization_categories = [];
const organization_tags = [];
const event_categories = [];
const event_tags = [];


/* refactor fetch requests in an iteration loop */
document.addEventListener("DOMContentLoaded", function() {

  // create array of user objects from users JSON data
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

  // create array of user objects from users JSON data
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

  // create array of organization objects from users JSON data
  fetch(ORGANIZATIONS_URL)
    .then(function(response) {
      return response.json();
    })
    .then(function(json) {
      for (const element of json) {
        let n = new Organization(element);
        orgs.push(n);
      }
    })

  // create array of event objects from users JSON data
  fetch(EVENTS_URL)
    .then(function(response) {
      return response.json();
    })
    .then(function(json) {
      for (const element of json) {
        let n = new Event(element);
        events.push(n);
      }
    })

    // create array of tag objects from users JSON data
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

  // create array of category objects from users JSON data
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

  // create array of organizationCategory objects from users JSON data
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

  // create array of organizationTag objects from users JSON data
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

  // create array of eventCategory objects from users JSON data
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

  // create array of organizationTag objects from users JSON data
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

});
