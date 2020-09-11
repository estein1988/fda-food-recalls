# Recalls. It's What's For Dinner.

Every FDS food recall since 2013 stored in a single database.

## General Info
Our food recall database is based off of the FDA's current information on past recalls in the United States. Their API consists of 20,000 records. Each record is able to be accessed by the end-user, and displays information regarding the recall. Due to the volume of records, the user first accesses the database through their state, and then is able to display each company that has a recall in that state. Additional search functionality is also available to access records. 
 
### Walk-through Video
https://www.youtube.com/watch?v=93FAXJ4IsEY

### Technologies Used
* Ruby 2.6.1
* Rails 6.0.3
* Sqlite3 1.4
* Puma 4.1
* Bootsnap 1.4.2
* Rack-cors
* HTML/CSS/Javascript

### Setup

To run Recalls. It's What's for Dinner, install it locally by cloning this GitHub repository and run:
```
BE:
bundle install
rails db:migrate
rails db:seed
Open Rails on local host

FE:
View on lite-server

```
The repo's library will have current data through 9/7/2020. If are looking for more current data, head to: https://open.fda.gov/downloads/ and downlod the Food Recall Enforcement Report json file. Seeding may take 3-5 minutes to complete.

### Code Examples

BE database structure:

```
ActiveRecord::Schema.define(version: 2020_09_09_211515) do

  create_table "recalls", force: :cascade do |t|
    t.string "classification"
    ...
    t.string "product_quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "save_recalls", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "recall_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recall_id"], name: "index_save_recalls_on_recall_id"
    t.index ["user_id"], name: "index_save_recalls_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "save_recalls", "recalls"
  add_foreign_key "save_recalls", "users"
end
```

Filtering company data by unique references in the FE: 
```
fetch(`http://localhost:3000/state?state=${state}`)
    .then(response => response.json())
    .then(handleStates)

function handleStates(recalls) {
    const companies = new Set();
        recalls.forEach(recall => {
            companies.add(recall.recalling_firm)
        })

    companies.forEach(company => { ... }

```
### Features
* Backend library populates database from FDA's json file (2013 - present).
* Utilized a many:many relationship that enables users and new users to save their favorite recall cards. Saved recalls are stored in the database for future reference.
* Backend is able to be viewed on Rails framework, with each route consisting of an index, show and create method.
* Frontend communication is enabled by Cors gem.
* A new user name feature appears first on the site's homepage. Due to the create route on the User class, the new user's information will be stored on the BE for future reference.
* Existing users can select their username through "View your Saved Recalls" and view their saved recall IDs and recall information.
* A global search feature is provided on the homepage, where users can search by certain foods. Results are limited to 100 recalls per search.
* To browse all recalls, users can select their rrespective states and companies to filter down available recalls.
* After selecting a recall, all FDA information pertaining to the recall is shown on the end-page.
* Users have the ability to save recalls by their User ID from the recall show page.


_Additional Options for Features_
* Incorporate Rest Client to the API so the database automatically populates when new FDA data is released.
* Recognition of user and recall IDs in the recall show page as opposed to the user entering in their information. 
* Additional search functionality features.

### Status
App is fully functioning with option to grow with additional features. App is not currently deployed.

### Contact
Created by **[Elliott Stein](https://www.linkedin.com/in/steinelliott/)** and **[Kelsey Creehan](https://www.linkedin.com/in/kelsey-creehan/)**
Please feel free to contact us!! 