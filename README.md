# RailsAdminChangePassword

This extension for [RailsAdmin](https://github.com/sferik/rails_admin) (RA) adds change_password functionality for your models.
Internally it adds:
* a custom action named change_password
* a custom section named change_password where you declare the fields to fill in

## Installation
Add this line to your Gemfile, **BEFORE RailsAdmin**
`gem 'rails_admin_change_password', git: 'https://github.com/cec/rails_admin_change_password.git'`

               
## Configuration

### 1. Tell RA that you wish to use this action
Simply add the action in the actions block in RAs initializer (rails_admin.rb)
```
  config.actions do
    #.....
    # existing actions
    #.....            

    change_password do
      # In my case I need to change password only for the User model
      only [User] 
    end
  end
```
### 2. Add the change_password section in the the models you need
Here is how I use it in one of my projects
```
  class User
    # ... all the cool stuff ...
    rails_admin do
      # ... other sections ...
      edit do
        field :email, :string
        field :role
        field :password, :string
        field :password_confirmation, :string
      end
      update do
        exclude_fields(:password, :password_confirmation)
      end
      change_password do
        exclude_fields(:email, :role)
      end
    end
  end
```
