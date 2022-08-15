# README


* Run `bundle install` to install the requirements

* Copy the content of `config/application.yml.sample` to `config/application.yml`
* Create the database and add the database connection details to `config/application.yml`

## Starting the server

* run rails s
*  The application will be available at `http://127.0.0.1:3000`

## API Resources
| HTTP METHOD | ENDPOINT | DESCRIPTION |
| :---: | :---: | :---: |
| POST | /transactions | add a transaction
| GET | /transactions | get all transactions
| GET | /transactions/<:id>| get a particular transaction


## Payload for POST
  ``` 
  { "transaction":{
  "identifier":"12",
  "customer_id":"1221",
  "input_amount":5000,
  "input_currency":"USD",
  "output_amount":5000,
  "output_currency":"UGX",
  "transaction_date":"2022-06-21"
  }}
  ```

## Running the Tests

* Run rspec
