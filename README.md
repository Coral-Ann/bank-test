Bank Tech Test
==================
```
         _._._                       _._._
        _| o |_                     _| o |_
        | ... |_._._._._._._._._._._| ... |
        | ||| |  o o TECH BANK o o  | ||| |
        | """ |  """    """    """  | """ |
   ())  |[-|-]| [-|-]  [-|-]  [-|-] |[-|-]|  ())
  (())) |  o  |---------------------|  o  | (()))
 (())())| """ |  """    """    """  | """ |(())())
 (()))()|[-|-]|  :::   .-"-.   :::  |[-|-]|(()))()
 ()))(()|     | |~|~|  |_|_|  |~|~| |     |()))(()
    ||  |_____|_|_|_|__|_|_|__|_|_|_|_____|  ||
 ~ ~^^ @@@@@@@@@@@@@@/=======\@@@@@@@@@@@@@@ ^^~ ~
      ^~^~                                ~^~^
 ```


Test Requirements
-------
This program should allow users to do the following:

- Interact with the code via a REPL like IRB or Node (CLI not neccessary).
- Deposits, withdrawals.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (database not neccessary).


Installation
-----
- Fork this repository.
- Clone your new forked repository using `git clone` followed by your fork URL.
- Move into the repository by using `cd bank-test`.
- Run the command `gem install bundler` (if you don't have bundler already).
- When the installation completes, run `bundle`.


Program Usage
-----
Use irb from the main repository and require the following file:

```zsh
irb
require './lib/bank_account.rb'
```

Now make your own bank account:
```zsh
yourname = Account.new
```

To deposit an amount:
```zsh
yourname.deposit(100)
```

To withdraw an amount:
```zsh
yourname.withdraw(50)
```

View your balance:
```zsh
yourname.view_balance
```

View your full statement:
```zsh
yourname.view_statement
```


Test Usage
-----
Use rspec to run the tests from the main repository:

```zsh
rspec
```

Feel free to check rubocop from the main repository:

```zsh
rubocop
```


Planning Process
-----
My basic plan is as follows:

- Convert the requirements into user stories.
- Create a plan for my classes and objects.
- Create the initial files (repo > README > git init > rspec init > gemfile).
- Code each user story, test first (TDD).
- Consider edge case user stories to potentially add.


User Stories
-----
The client requests are broken down as follows:

```
As a user,
So I can keep my money somewhere,
I want to open an account.

As a user,
So that I can add money to this account,
I want to deposit an amount given.

As a user,
So I can view my stored money,
I want to be able to see my account balance.

As a user,
So that I can access my stored amount,
I want to withdraw an amount from my account.

As a user,
So that my money is recorded,
I want my deposits and withdrawals to be saved.

As a user,
So that I can view my previous transactions,
I want to see a statement with my withdrawals, deposits & dates in which these occurred.
```


Domain Model
-----

WIP

Tech Stack
-----
- Ruby
- irb
- Rspec
- Rubocop
- Simplecov
- Timecop