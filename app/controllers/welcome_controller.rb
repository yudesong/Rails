class WelcomeController < ApplicationController
  def index
  	
  end

  def  login
  	 @name=params[:name]
        @passwd=params[:passwd]
        @user=Manager.find_by_name_and_passwd(@name,@passwd)
         if @user!=nil
             redirect_to :action =>"index" ,:controller=>"users"  
          else   
             redirect_to :action =>"index"  
          end

#      @user=User.where(name:"yudesong",email:"yudesong@foxmail.com").order("create_at DESC")
#      @user=User.where(:name=>"yudesong", :email=>"yudesong@foxmail.com")
=begin


       	 if @name=="yu" && @passwd=="111"
       	     redirect_to :action =>"index" ,:controller=>"users"
       	 end
=end	
  end
  	

end
