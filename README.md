# Welcome to this dbt challenge project

This project is intended to configure and run data modeling using dbt and bigquery.

### Pre-requisites:

1. A configured project in GCP
2. A service account key.json to authenticate with our Google project 
3. DBT installed in your local.

### The datasource for this project is:
- Public dataset from bigquery: **bigquery-public-data:new_york_subway.**

### This project generates the following:

- Four models:
    - copy_data_from_source
    - refering_to_a_model
    - stations_by_complex
    - stops_by_trip_by_route
- One analysis:
    - total_trips_by_route

### Using the project

1. Create your profile:
   1. Use the file `profiles.yml` as template and change the `keyfile` value pointing to the path where the Google key is stored.
   2. Move the `profiles.yml` file to `~./dbt`
2. Clone this repository and go to `/dbt-bigquery-challenge`
3. There you will be able to run the following commands:
   1. dbt run
   2. dbt compile
   3. dbt docs generate
   4. dbt docs serve


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
