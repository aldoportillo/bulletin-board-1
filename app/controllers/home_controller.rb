class HomeController < ApplicationController{
  def home
    render({ :template => "boards/index" })
  end
}
