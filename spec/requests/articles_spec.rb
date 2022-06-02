require 'rails_helper'
  
require 'will_paginate/array'


RSpec.describe "Articles", type: :request do
describe "GET #index" do
   include Devise::Test::IntegrationHelpers
   before(:each) do

	  @user = FactoryBot.create(:user, email: "some@some.com", password:"someSome")
	  sign_in(@user)
   end
	
   it 'does have more than 1 articles' do
	   get '/index'
	   expect(Article.count).to eq(4)
 	   end 
end
end





