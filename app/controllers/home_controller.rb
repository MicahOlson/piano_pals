class HomeController < ApplicationController

  def index
    @chords = Keynote.all
    render :index
  end
end
