set :rails_env, 'development'
set :branch, 'dev'

default_environment['MYSQL_PASSWORD'] = ENV['RAILS_TEST_PASSWORD']

load 'config/deploy/_common'



