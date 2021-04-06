class PagesController < ApplicationController

  def home
    render :home
  end

  def setup
    @keynotes = Keynote.all
    render :setup
  end

  def cards
    # @selected_keys = @keynotes.find(params[:keynote[id]])
    # @refined_chords = @chords.find(params[:mode])
    render :cards
  end
end
