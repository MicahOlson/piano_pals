class PagesController < ApplicationController

  def home
    render :home
  end

  def setup
    @chords = Keynote.all
    @keys = 
    render :setup
  end

  def cards
    # @chords = Keynote.find(params[:keynote])
    # @refined_chords = @chords.find(params[:mode])
    render :cards
  end
end
