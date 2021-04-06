class PagesController < ApplicationController

  def home
    render :home
  end

  def setup
    @keynotes = Keynote.all
    render :setup
  end

  def cards
    @selected_keys = params.values[1..-4]
    render :cards
  end
end
