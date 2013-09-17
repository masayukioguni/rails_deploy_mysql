load 'deploy/assets'
load 'config/deploy/_common'

default_environment['MYSQL_PASSWORD'] = ENV['RAILS_TEST_PASSWORD']
default_environment['MYSQL_USERNAME'] = ENV['RAILS_TEST_USERNAME']
default_environment['MYSQL_DB_NAME'] = ENV['RAILS_TEST_DB_NAME']

