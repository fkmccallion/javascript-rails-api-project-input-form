const BASE_URL = "http://localhost:3000"

const USERS_URL = `${BASE_URL}/users`
const HOURS_URL = `${BASE_URL}/hours`
const ORGANIZATIONS_URL = `${BASE_URL}/organizations`
const EVENTS_URL = `${BASE_URL}/events`
const CATEGORIES_URL = `${BASE_URL}/categories`
const TAGS_URL = `${BASE_URL}/tags`

const users = [];
const hours = [];
const orgs = [];
const events = [];
const categories = [];
const tags = [];

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
    })

});
