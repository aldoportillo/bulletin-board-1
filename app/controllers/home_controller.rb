class HomeController < ApplicationController
  def home
    matching_boards = Board.all

    @list_of_boards = matching_boards.order({ :created_at => :desc })

    render({ :template => "boards/index" })
  end
end
