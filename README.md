# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



rails g scaffold Person first_name:string last_name:string birth_date:date email:string mobile_phone:string full_address:string personable:references{polymorphic} lat:decimal lng:decimal

# TGSC
