frank = User.create(email: "frank@mccallion.com", password: "test")
steve = User.create(email: "steve@jobs.com", password: "test")
colin = User.create(email: "colin@hanson.com", password: "test")
bill = User.create(email: "bill@gates.com", password: "test")
ayn = User.create(email: "ayn@rand.com", password: "test")
jeff = User.create(email: "jeff@bezos.com", password: "test")

dbcaHours = Hour.create(sunStart: "7:00am", sunEnd: "7:00pm", monStart: "6:00am", monEnd: "6:30pm", tueStart: "6:00am", tueEnd: "6:30pm", wedStart: "6:00am", wedEnd: "6:30pm", thuStart: "6:00am", thuEnd: "6:30pm", friStart: "6:00am", friEnd: "6:30", satStart: "7:00am", satEnd: "7:00pm")
appleHours = Hour.create(monStart: "6:00am", monEnd: "6:30pm", tueStart: "6:00am", tueEnd: "6:30pm", wedStart: "6:00am", wedEnd: "6:30pm", thuStart: "6:00am", thuEnd: "6:30pm", friStart: "6:00am", friEnd: "6:30", satStart: "7:00am", satEnd: "7:00pm")
sensortechHours = Hour.create(monStart: "8:00am", monEnd: "4:30pm", tueStart: "8:00am", tueEnd: "4:30pm", wedStart: "8:00am", wedEnd: "4:30pm", thuStart: "8:00am", thuEnd: "4:30pm", friStart: "8:00am", friEnd: "4:30")
microsoftHours = Hour.create(sunStart: "7:00am", sunEnd: "7:00pm", monStart: "7:00am", monEnd: "6:30pm", tueStart: "6:30am", tueEnd: "7:30pm", wedStart: "5:00am", wedEnd: "5:30pm", thuStart: "4:30am", thuEnd: "4:00pm", friStart: "7:00am", friEnd: "3:30", satStart: "7:00am", satEnd: "7:30pm")
ariHours = Hour.create(sunStart: "11:00am", sunEnd: "2:00pm")

dbca = Organization.create(name: "DBCA", state: "California", address1: "1st Street", address2: "Unit 1", city: "Ventura", zip: 93045, phone: "805 999-8888", email: "ceo@dbca.com", website: "dbca.com", description: "This is a business and event directory", image: "https://i0.wp.com/downeast.com/wp-content/uploads/2019/07/1909_Lighthouse3.jpg?fit=1412%2C1843&ssl=1", rank: 1, user_id: frank.id, hour_id: dbcaHours.id)
apple = Organization.create(name: "Apple", state: "California", address1: "2nd Road", address2: "Suite 2", city: "Oxnard", zip: 93290, phone: "805 888-7777", email: "ceo@apple.com", website: "apple.com", description: "Hardware and Software company used worldwide", image: "https://www.apple.com/ac/structured-data/images/knowledge_graph_logo.png?201911210958", rank: 1, user_id: steve.id, hour_id: appleHours.id)
sensortech = Organization.create(name: "Sensortech Systems, Inc.", state: "California", address1: "3rd Place", city: "Simi Valley", zip: 93456, address2: "Apartment 3", phone: "805 777-6666", email: "ceo@sensortech.com", website: "sensortech.com", description: "Manufacturer that makes online moisture sensors", image: "http://sensortech.com/wp-content/themes/sensor/images/logo.png", rank: 1, user_id: colin.id, hour_id: sensortechHours.id)
microsoft = Organization.create(name: "Microsoft Corp", state: "California", address1: "4th Square", address2: "Unit 4", city: "Thousand Oaks", zip: 94504, phone: "805 666-5555", email: "ceo@microsoft.com", website: "microsoft.com", description: "Software company used worldwidey", image: "https://3er1viui9wo30pkxh1v2nh4w-wpengine.netdna-ssl.com/wp-content/uploads/2016/05/Microsoft-Logo-2012.jpg", rank: 1, user_id: bill.id, hour_id: microsoftHours.id)
ari = Organization.create(name: "Ayn Rand Institute", state: "California", address1: "5th Court", address2: "Ste. 5", city: "Camarillo", zip: 93094, phone: "805 555-4444", email: "ceo@ayi.com", website: "ayi.com", description: "Intitute to promote the Objectivist philosophy", image: "https://yt3.ggpht.com/a/AGF-l7-7JEsCnED-1Nd6YlbNIrL0oLVqKNlFRuMhnQ=s900-c-k-c0xffffffff-no-rj-mo", rank: 1, user_id: ayn.id, hour_id: ariHours.id)
amazon = Organization.create(name: "Amazon", state: "California", address1: "6th Circler", address2: "", city: "Fillmore", zip: 93243, phone: "805 444-3333", email: "ceo@amazon.com", website: "amazon.com", description: "Online Shopping", image: "http://g-ec2.images-amazon.com/images/G/01/social/api-share/amazon_logo_500500._V323939215_.png", rank: 1, user_id: jeff.id)

officiallaunch = Event.create(name: "DBCA Official Launch", phone: "805 345-2346", email: "event@dbca.com", url: "eventdbca.com", description: "This is the official launch of Database California", image: "http://vccamember.com/wp-content/uploads/2019/08/Ventura_County_Contractor19_COV-1.jpg", rank: 1, organization_id: dbca.id)
applewatch = Event.create(name: "Official Launch of the Apple Watch", phone: "805 342-3421", email: "event@apple.com", url: "appleevent.com", description: "Official kickoff branding the Apple Watch", image: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/42-alu-space-sport-black-nc-s3-grid?wid=540&hei=550&fmt=jpeg&qlt=80&op_usm=0.5,0.5&.v=1573757651944", rank: 1, organization_id: apple.id)
sensortechip67 = Event.create(name: "Launching the new IP67 Moisture Analyzer", phone: "805 342-5555", email: "event@sensortech.com", url: "sensortechevent.com", description: "New moisture analyzer for harsh environments", image: "https://www.powderbulksolids.com/sites/powderbulksolids.com/files/articles/images/moisture-analyzer-Sensortech.jpg", rank: 1, organization_id: sensortech.id)
zunelaunch = Event.create(name: "Launching the new Zune MP3 player", phone: "805 444-0543", email: "event@microsoft.com", url: "microsoftevent.com", description: "Launching a new MP3 player for public consumption", image: "https://images-na.ssl-images-amazon.com/images/I/41CPGXoKbgL._AC_SY355_.jpg", rank: 1, organization_id: microsoft.id)
collegepush = Event.create(name: "Objectivism and College Campuses", phone: "805 657-0007", email: "event@ari.com", url: "arievent.com", description: "Push to promote Objectivism on College Campuses", image: "https://upload.wikimedia.org/wikipedia/commons/9/91/Objectivist1.jpg", rank: 1, organization_id: ari.id)
musicoption = Event.create(name: "Add Music to Your Account", phone: "805 333-4568", email: "event@amazon.com", url: "amazonevent.com", description: "Add new music to your Amazon Prime account", image: "https://m.media-amazon.com/images/I/41VXGF76krL._SR500,500_.jpg", rank: 1, organization_id: amazon.id)

webservices = Category.create(name: "Web Services", rank: 1)
manufacturing = Category.create(name: "Manufacturing", rank: 1)
computer = Category.create(name: "Computer", rank: 1)
organization = Category.create(name: "Organization", rank: 1)
recruitment = Category.create(name: "Recruitment", rank: 1)

manufacturing_tag = Tag.create(name: "Manufacturing", rank: 1)
retail_tag = Tag.create(name: "Retail", rank: 1)
organization_tag = Tag.create(name: "Organization", rank: 1)
homerepair_tag = Tag.create(name: "Home Repair", rank: 1)
laptop_tag = Tag.create(name: "Laptop", rank: 1)
computer_tag = Tag.create(name: "Computer", rank: 1)
phone_tag = Tag.create(name: "Phone", rank: 1)
music_tag = Tag.create(name: "Music", rank: 1)
moisturesensor_tag = Tag.create(name: "Moisture Sensor", rank: 1)
onlinesensor_tag = Tag.create(name: "Online Sensor", rank: 1)
nirsensor_tag = Tag.create(name: "NIR Sensor", rank: 1)
software_tag = Tag.create(name: "Software", rank: 1)
games_tag = Tag.create(name: "Games", rank: 1)
operatingsystem_tag = Tag.create(name: "Operating System", rank: 1)
objectivism_tag = Tag.create(name: "Objectivism", rank: 1)
freemarket_tag = Tag.create(name: "Free Market", rank: 1)
politics_tag = Tag.create(name: "Politics", rank: 1)
economics_tag = Tag.create(name: "Economics", rank: 1)
gifts_tag = Tag.create(name: "Gifts", rank: 1)
movies_tag = Tag.create(name: "Movies", rank: 1)
onlineshopping_tag = Tag.create(name: "Online Shopping", rank: 1)
bargain_tag = Tag.create(name: "Bargain", rank: 1)

OrganizationCategory.create(organization_id: dbca.id, category_id: webservices.id, subCategory: "Search")
OrganizationCategory.create(organization_id: apple.id, category_id: computer.id, subCategory: "Hardware")
OrganizationCategory.create(organization_id: sensortech.id, category_id: manufacturing.id, subCategory: "Electronics")
OrganizationCategory.create(organization_id: microsoft.id, category_id: computer.id, subCategory: "Software")
OrganizationCategory.create(organization_id: ari.id, category_id: organization.id, subCategory: "Philosophy")
OrganizationCategory.create(organization_id: amazon.id, category_id: webservices.id, subCategory: "Shopping")

EventCategory.create(event_id: officiallaunch.id, category_id: webservices.id, subCategory: "Promotion")
EventCategory.create(event_id: applewatch.id, category_id: manufacturing.id, subCategory: "New Product")
EventCategory.create(event_id: sensortechip67.id, category_id: manufacturing.id, subCategory: "Online Sensor")
EventCategory.create(event_id: zunelaunch.id, category_id: manufacturing.id, subCategory: "MP3 Player")
EventCategory.create(event_id: collegepush.id, category_id: recruitment.id, subCategory: "Freedom and Liberty")
EventCategory.create(event_id: musicoption.id, category_id: webservices.id, subCategory: "New Service")

EventTag.create(event_id: officiallaunch.id, tag_id: manufacturing_tag.id)
EventTag.create(event_id: officiallaunch.id, tag_id: retail_tag.id)
EventTag.create(event_id: officiallaunch.id, tag_id: organization_tag.id)
EventTag.create(event_id: officiallaunch.id, tag_id: homerepair_tag.id)
EventTag.create(event_id: applewatch.id, tag_id: laptop_tag.id)
EventTag.create(event_id: applewatch.id, tag_id: computer_tag.id)
EventTag.create(event_id: applewatch.id, tag_id: phone_tag.id)
EventTag.create(event_id: applewatch.id, tag_id: music_tag.id)
EventTag.create(event_id: sensortechip67.id, tag_id: moisturesensor_tag.id)
EventTag.create(event_id: sensortechip67.id, tag_id: onlinesensor_tag.id)
EventTag.create(event_id: sensortechip67.id, tag_id: nirsensor_tag.id)
EventTag.create(event_id: sensortechip67.id, tag_id: manufacturing_tag.id)
EventTag.create(event_id: zunelaunch.id, tag_id: software_tag.id)
EventTag.create(event_id: zunelaunch.id, tag_id: games_tag.id)
EventTag.create(event_id: zunelaunch.id, tag_id: operatingsystem_tag.id)
EventTag.create(event_id: zunelaunch.id, tag_id: computer_tag.id)
EventTag.create(event_id: collegepush.id, tag_id: objectivism_tag.id)
EventTag.create(event_id: collegepush.id, tag_id: freemarket_tag.id)
EventTag.create(event_id: collegepush.id, tag_id: politics_tag.id)
EventTag.create(event_id: collegepush.id, tag_id: economics_tag.id)
EventTag.create(event_id: musicoption.id, tag_id: gifts_tag.id)
EventTag.create(event_id: musicoption.id, tag_id: movies_tag.id)
EventTag.create(event_id: musicoption.id, tag_id: onlineshopping_tag.id)
EventTag.create(event_id: musicoption.id, tag_id: bargain_tag.id)

OrganizationTag.create(organization_id: dbca.id, tag_id: manufacturing_tag.id)
OrganizationTag.create(organization_id: dbca.id, tag_id: retail_tag.id)
OrganizationTag.create(organization_id: dbca.id, tag_id: organization_tag.id)
OrganizationTag.create(organization_id: dbca.id, tag_id: homerepair_tag.id)
OrganizationTag.create(organization_id: apple.id, tag_id: laptop_tag.id)
OrganizationTag.create(organization_id: apple.id, tag_id: computer_tag.id)
OrganizationTag.create(organization_id: apple.id, tag_id: phone_tag.id)
OrganizationTag.create(organization_id: apple.id, tag_id: music_tag.id)
OrganizationTag.create(organization_id: sensortech.id, tag_id: moisturesensor_tag.id)
OrganizationTag.create(organization_id: sensortech.id, tag_id: onlinesensor_tag.id)
OrganizationTag.create(organization_id: sensortech.id, tag_id: nirsensor_tag.id)
OrganizationTag.create(organization_id: sensortech.id, tag_id: manufacturing_tag.id)
OrganizationTag.create(organization_id: microsoft.id, tag_id: software_tag.id)
OrganizationTag.create(organization_id: microsoft.id, tag_id: games_tag.id)
OrganizationTag.create(organization_id: microsoft.id, tag_id: operatingsystem_tag.id)
OrganizationTag.create(organization_id: microsoft.id, tag_id: computer_tag.id)
OrganizationTag.create(organization_id: ari.id, tag_id: objectivism_tag.id)
OrganizationTag.create(organization_id: ari.id, tag_id: freemarket_tag.id)
OrganizationTag.create(organization_id: ari.id, tag_id: politics_tag.id)
OrganizationTag.create(organization_id: ari.id, tag_id: economics_tag.id)
OrganizationTag.create(organization_id: amazon.id, tag_id: gifts_tag.id)
OrganizationTag.create(organization_id: amazon.id, tag_id: movies_tag.id)
OrganizationTag.create(organization_id: amazon.id, tag_id: onlineshopping_tag.id)
OrganizationTag.create(organization_id: amazon.id, tag_id: bargain_tag.id)
