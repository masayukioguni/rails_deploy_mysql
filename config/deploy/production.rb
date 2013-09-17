load 'deploy/assets'
load 'config/deploy/_common'

default_environment['MYSQL_PASSWORD'] = ENV['RAILS_TEST_PASSWORD']
default_environment['MYSQL_USERNAME'] = ENV['RAILS_TEST_USERNAME']
