/* refactor Object.values to verify attribute is being assigned correctly */

class User {
  constructor(obj) {
    let userValues = Object.values(obj);

    this.id = userValues[0];
    this.email = userValues[1];
  }
}

class Hour {
  constructor(obj) {
    let hourValues = Object.values(obj);

    this.id = hourValues[0];
    this.sunStart  = hourValues[1];
    this.sunEnd = hourValues[2];
    this.monStart = hourValues[3];
    this.monEnd = hourValues[4];
    this.tueStart = hourValues[5];
    this.tueEnd = hourValues[6];
    this.wedStart = hourValues[7];
    this.wedEnd = hourValues[8];
    this.thuStart = hourValues[9];
    this.thuEnd = hourValues[10];
    this.friStart = hourValues[11];
    this.friEnd = hourValues[12];
    this.satStart = hourValues[13];
    this.satEnd = hourValues[14];
  }
}

class Organization {
  constructor(obj) {
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

class Event {
  constructor(obj) {
    let eventValues = Object.values(obj);

    this.id = eventValues[0];
    this.name = eventValues[1];
    this.description = eventValues[2];
    this.phone = eventValues[3];
    this.email = eventValues[4];
    this.url = eventValues[5];
    this.image = eventValues[6];
    this.start = eventValues[7];
    this.end = eventValues[8];
    this.organization_id = eventValues[9];
    this.hour_id = eventValues[10];
    this.rank = eventValues[11];
  }
}

class Category {
  constructor(obj) {
    let catValues = Object.values(obj);

    this.id = catValues[0];
    this.name = catValues[1];
    this.rank = catValues[2];
  }
}

class Tag {
  constructor(obj) {
    let tagValues = Object.values(obj);

    this.id = tagValues[0];
    this.name = tagValues[1];
    this.rank = tagValues[2];
  }
}

class OrganizationCategory {
  constructor(obj) {
    let orgCatValues = Object.values(obj);

    this.id = orgCatValues[0];
    this.organization_id = orgCatValues[1];
    this.category_id = orgCatValues[2];
    this.subCategory = orgCatValues[3]
  }
}

class OrganizationTag {
  constructor(obj) {
    let orgTagValues = Object.values(obj);

    this.id = orgTagValues[0];
    this.organization_id = orgTagValues[1];
    this.tag_id = orgTagValues[2];
  }
}

class EventCategory {
  constructor(obj) {
    let eventCatValues = Object.values(obj);

    this.id = eventCatValues[0];
    this.event_id = eventCatValues[1];
    this.category_id = eventCatValues[2];
    this.subCategory = eventCatValues[3]
  }
}

class EventTag {
  constructor(obj) {
    let eventTagValues = Object.values(obj);

    this.id = eventTagValues[0];
    this.event_id = eventTagValues[1];
    this.tag_id = eventTagValues[2];
  }
}
