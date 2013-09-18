load 'deploy/assets'
load 'config/deploy/_common'


#ec2-54-200-47-184.us-west-2.compute.amazonaws.com
#ec2-54-200-58-9.us-west-2.compute.amazonaws.com
#ec2-54-200-50-163.us-west-2.compute.amazonaws.com
#deploy_hosts = 
#['ec2-54-200-47-184.us-west-2.compute.amazonaws.com',
#'ec2-54-200-58-9.us-west-2.compute.amazonaws.com',
#'ec2-54-200-50-163.us-west-2.compute.amazonaws.com']

#ec2-54-200-47-184.us-west-2.compute.amazonaws.com,ec2-54-200-58-9.us-west-2.compute.amazonaws.com,ec2-54-200-50-163.us-west-2.compute.amazonaws.com

deploy_hosts = ENV['DEPLOY_HOSTS'].split(',')

deploy_hosts.each do |host|
	role :web, host
	role :app, host
end

set :default_environment, {
	'MYSQL_PASSWORD' => ENV['RAILS_TEST_PASSWORD'],
	'MYSQL_USERNAME' => ENV['RAILS_TEST_USERNAME'],
	'MYSQL_DB_NAME' => ENV['RAILS_TEST_DB_NAME']
}
