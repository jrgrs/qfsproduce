# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Qfsproduce::Application.initialize!

Qfsproduce::Application.configure do 
	config.action_mailer.delivery_method = :smtp

	config.action_mailer.smtp_settings = {
		address: "smtp.gmail.com",
		port: "587",
		authentication: "plain",
		user_name: "orders@qfsproduce.com",
		password: "zsaxzsax",
		enable_starttls_auto: true
	}
end

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
	:user_name => "orders@qfsproduce.com",
	:password => "zsaxzsax",
	:port => "587",
	:address => "smtp.gmail.com",
	:authentication => :plain,
	:enable_starttls_auto => true

}