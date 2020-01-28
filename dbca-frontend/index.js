const BASE_URL = "http://localhost:3000"
const ORGANIZATIONS_URL = `${BASE_URL}/organizations`

const orgs = [];

document.addEventListener("DOMContentLoaded", function() {
  fetch(ORGANIZATIONS_URL)
      .then(function(response) {
        return response.json();
      })
      .then(function(json) {
        for (const element of json) {
          let n = new Organization(element)
          orgs.push(n);
        }
      })
});

class Organization {
  constructor(obj) {
    // refactor orgValues to verify attribute is being assigned correctly
    let orgValues = Object.values(obj);

    this.id = orgValues[0];
    this.name = orgValues[1];
    this.description = orgValues[2];
    this.address1 = orgValues[3];
    this.address2 = orgValues[4];
    this.city = orgValues[5];
    this.state = orgValues[6];
    this.zip = orgValues[7];
    this.phone = orgValues[8];
    this.email = orgValues[9];
    this.website = orgValues[10];
    this.image = orgValues[11];
    this.rank = orgValues[12];
    this.user_id = orgValues[13];
    this.hour_id = orgValues[14];
  }
}
