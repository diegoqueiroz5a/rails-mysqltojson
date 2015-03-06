# Create the local sqlite database
$ rake db:migrate

# Create a user:
$ rails c
$ user=User.create!(:email=>'test@test.com',:password=>'password')
$ exit

# Add the target mysql database credentials:
## Create a new file: config/bi_database.yml
## Set the database credentials inside:
##$ credentials:
##$   host: 'localhost'
##$   user: 'root'
##$   pass: ''
##$   database: 'mydatabase'

# Run
$ rails s

# The application will be available in:
$ http://localhost:3000
