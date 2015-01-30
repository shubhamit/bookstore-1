class SellersController < ApplicationController
  def index
  	@books= current_user.books

  	respond_to do |format|
      format.html
      format.json { render json: @books }
    end
  end

  def new
  	@book = Book.new
  end
end
