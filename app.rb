require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:

  get "/goodbye/:name" do
    @user = params[:name]
    "Goodbye, #{@user}."
  end

  get "/multiply/:num1/:num2" do

    @n1 = params[:num1]
    @n2 = params[:num2]

    "#{@n1.to_i * @n2.to_i}"
  end
end
