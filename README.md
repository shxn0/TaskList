# Todolist

### Description
* Task Management application
* Intuitive button layout to switch a status of each tasks
* Being able to search your undone tasks

## Technical elements

#### Development environment
* MacOS Sierra version: 10.12.6
* Rails version: 5.1.6
* Ruby version: 2.5.0 (x86_64-darwin16)
* PostgreSQL 9.6.4
* bootstrap 4.0
* jQuery
* heroku

#### Package management tool
* Homebrew
* yarn

#### Rubygems (except default gems on rails 5.1)
* better_errors
* dotenv-rails
* pry-rails
* rails_12factor
* bundler

## Entire specifications

#### Fundamental Function
* CRUD operations
* Task table has 6 columns as below
  - `id`
  - `task_name` (*task contents registered by users*)
  - `deadline` (*task deadline selected by users*)
  - `status` (*task status managed by users and updated via Ajax*)
  - `created_at` (*used for displaying the order of task list*)
  - `updated_at`

#### Database
* Structure of tasks table

| Column name | id | task_name | deadline | status | created_at | updated_at |
:---:|:---:|:---:|:---:|:---:|:---:|:---:
| Data type | int | string | date | boolean | datetime | datetime |

#### Status Function
* Ajax  
This app is implemented Ajax in order to switch a status of each tasks intuitively on view page. Ajax is used for updating "status" column. As the "status" column is boolean data type, its data is updated by switching true or false values.

#### Search Function
* Regular expression  
This app is implemented the partial matching function in order to search your undone tasks. First, it retrieves data that is only false in "status" column. After that, it filters the data by executing partial matching with data that is string in "task_name" column and displays them on view page as the searching result.

#### Layout
* Now-ui-kit template
* Responsive web design

#### Setting
* Default locale: Japanese
* Time zone     : JST

## Usage
Please clone repository to create a "local" copy on your computer.
```
$ git clone git@github.com:shxn0/TodoList.git
```

Execute the bundle command to install ruby gems to run this app.
```
$ bundle install
```

Execute the migrate command.
```
$ rails db:migrate
```

Now, you are ready for getting started this app.
```
$ rails server
```

## Setup procedure (development environment)

### Required elements and summary

1. `homebrew` Make it easier to install software into Mac OS
2. `rbenv` Required to switch Ruby versions *(installed via homebrew)*
3. `Ruby` Operated by rbenv *(installed via rbenv)*
4. `Rubygems` Library packaging and distribution for Ruby
5. `Bundler` Manage gems and its version for each your projects *(gem)*
6. `PostgreSQL` *(Database)*

***

#### 1. Install homebrew

[Homebrew for macOS](https://brew.sh/index_ja)
```
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

#### 2. Uninstall standard equipment ruby
If `path` has been displayed, Ruby has already been installed, so uninstall it.
```
$ which ruby
$ sudo port uninstall ruby
```

#### 3. Upgrade homebrew
```
$ brew upgrade
```

#### 4. Install rbenv and ruby-build to manage ruby versions
```
$ brew install rbenv ruby-build
```

#### 5. Set up rbenv
```
$ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
```

#### 6. Install ruby
If its `version` has been displayed, Ruby has successfully been installed.
```
$ rbenv install 2.5.0
$ ruby -v
```

#### 7. Set up default ruby version
```
$ rbenv global 2.5.0
```

#### 8. Install bundler
```
$ gem install bundler
```

#### 9. Install rails 5
```
$ gem install rails -v 5.1.6
```

#### 10. Install postgresql
```
$ brew install postgresql
```

#### 11. Start postgresql  
`only once` for an application
```
$ brew services start postgresql
```

#### 12. Install git
```
$ brew install git
```

#### 13. Install heroku
```
$ brew install heroku
```

## Author
[shin](https://github.com/shxn0)
