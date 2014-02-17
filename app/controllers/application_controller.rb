class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  
  before_action :authorize

  protected 

  def authorize

  	if User.count == 0
  		if request.path_parameters[:controller] == 'users' and request.path_parameters[:action] == 'create'
  			#do nothing, let the users controller verify
  		elsif !(request.path_parameters[:controller] == 'users' and request.path_parameters[:action] == 'new')
  		flash[:notice] = "Please Create Administrative User"
  		redirect_to :controller => 'users', :action => 'new'
  		end
  	elsif !User.find_by_id(session[:user_id])
  		session[:original_uri] = request.request_uri
  		redirect_to :controller => 'admin', :action => 'login'
	end
  	
 end
