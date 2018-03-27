## Bank tech-test

This is an attempt at the Bank tech-test with a timeframe of one day.

### Features

* User is able to make transactions
* Transaction can be a `deposit` or a `withdrawal`
* User is able to print their bank statement, which includes date, amount and balance at the time of the transaction
* Covered edge cases such as user-typos, wrong input of integers in the amount of the transaction, etc.


### Installing

* Fork the repo
* Run bundle to install dependencies:

```
bundle install
```

## Running the tests

To run RSpec simply type in `rspec` into the CL


### Approach

* Initial diagramming to decide how many classes this exercise needed to be split into.
* Planning out the "core" methods
* Diagramming how methods would interact with each other. Eg. print individual transaction from the Transaction class & print all transactions from the Account class

### Future features

The core functionality of this tech test is finished, but it can easily be extended to accommodate additional features such as database interaction