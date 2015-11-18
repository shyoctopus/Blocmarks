class IncomingController < ApplicationController
  # http://stackoverflow.com/questions/1177863/how-do-i-ignore-the-authenticity-token-for-specific-actions-in-rails
 skip_before_action :verify_authenticity_token, only: [:create]

 def create
   # Take a look at these in your server logs
   # to get a sense of what you're dealing with.
   puts "INCOMING PARAMS HERE: #{params}"

   # You put the message-splitting and business
   # magic here.

   @user = User.find_by(email: params[:sender])
   if @user
     @topic = @user.topics.find_or_create_by(title: params[:subject])
     @bookmark = @topic.bookmarks.create(url: params['stripped-text'])
   end

   # Assuming all went well.
   head 200
 end
end
