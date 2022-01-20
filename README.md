# Ruby on Rails blog

> Blog app - Add forms

![form](https://user-images.githubusercontent.com/9049260/150311945-b6963670-fcad-4237-ad82-0db5040dd215.png)

In this project, I add forms to the Blog app.
## Getting Started

To get a local copy up and running follow these simple example steps.

## Prerequisites
  - Ruby
  - Rails
  - PostgreSQL
  - rspec-rails

## Setup

- Make sure you have Ruby IRB installed on your computer
- Clone or download this repo on your machine
- Enter project directory
## Install

```sh
bundle install
```

### Database

```sh
# Create user
sudo -u postgres createuser blog -s

# Create the database
rake db:create

# Load the schema
rails db:schema:load

## Apply migration (only if you generate a new migration file)
rails db:migrate
```
### Run

```sh
rails s
```
## Author

👤 **Ntazama Willy**

- GitHub: [@ntzwilly](https://github.com/ntzwilly)
- LinkedIn: [@ntazamawilly](https://linkedin.com/in/ntazama-willy-b676b7aa)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used