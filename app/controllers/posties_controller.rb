class PostiesController < ApplicationController
  def new
    @postie = Postie.new
  end

  def create
    @postie = Postie.new(params[:postie])
    @postie.save
    redirect_to postie_path(@postie)
  end

  def show
  end

end
