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

p ENV.select { |k,v| k =~ /^RAILS_/ }
p deploy_hosts.first

set :host, deploy_hosts.first
role :db, host, :primary => true

set :default_environment, ENV.select { |k,v| k =~ /^RAILS_/ }


