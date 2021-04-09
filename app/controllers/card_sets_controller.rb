class CardSetsController < ApplicationController
  before_action :only => [:edit, :delete] do
    if @card_set = CardSet.where(id: params[:id]).first
    unless current_user && @card_set.user_id == current_user.id
      flash[:notice] = "You are not authorized to visit that page"
      redirect_to root_path
    end
    else
      flash[:notice] = "The card set with that id does not exist."
        redirect_to root_path
    end
  end

  def index
    @card_array = []
    @card_sets = CardSet.all
    @card_sets.each do |card_set|
      if card_set.user_id == current_user.id
        @card_array.push(card_set)
      end
    end
    render :index
  end

  def new
    @card_set = CardSet.new
    @keynotes = Keynote.all
    render :new
  end

  def create
    set_name = params[:set_name]
    selected_keys = params.keys
    display_keys = []
    selected_keys.each do |id|
      display_keys.push(id.to_i)
    end
    if selected_keys.include?('all_keys')
      Keynote.all.each { |keynote| display_keys.push(keynote.id) }
    else
      if selected_keys.include?('all_major')
        Keynote.all.each { |keynote| display_keys.push(keynote.id) if keynote.mode == "Major" }
      end
      if selected_keys.include?('all_minor')
        Keynote.all.each { |keynote| display_keys.push(keynote.id) if keynote.mode == "minor" }
      end
    end
    display_keys.uniq!
    display_keys.delete(0)
    if selected_keys.include?('all_randomize')
      display_keys.push("T")
    else
      display_keys.push("F")
    end
    set = display_keys.join(",")
    @card_set = CardSet.new(set_name: set_name, set: set, user_id: current_user.id)
    if @card_set.save
      flash[:notice] = "Set successfully added!"
      redirect_to card_sets_path
    else
      render :new
    end
  end

  def show
    @selected_keys = []
    @card_set = CardSet.find(params[:id])
    @id_array = @card_set.set.split(",")
    @random = @id_array.pop
    @display_keys = []
    @id_array.each do |id|
      @display_keys.push(Keynote.find(id.to_i))
    end
    render :show
  end

  def edit
    @keynotes = Keynote.all
    @card_set = CardSet.find(params[:id])
    @id_array = @card_set.set.split(",")
    @random = @id_array.pop
    render :edit
  end

  def update
    set_name = params[:set_name]
    selected_keys = params.keys
    display_keys = []
    selected_keys.each do |id|
      display_keys.push(id.to_i)
    end
    if selected_keys.include?('all_keys')
      Keynote.all.each { |keynote| display_keys.push(keynote.id) }
    else
      if selected_keys.include?('all_major')
        Keynote.all.each { |keynote| display_keys.push(keynote.id) if keynote.mode == "Major" }
      end
      if selected_keys.include?('all_minor')
        Keynote.all.each { |keynote| display_keys.push(keynote.id) if keynote.mode == "minor" }
      end
    end

    display_keys.uniq!
    display_keys.delete(0)
    if selected_keys.include?('all_randomize') 
      display_keys.push("T")
    else
      display_keys.push("F")
    end
    set = display_keys.join(",")
    @card_set = CardSet.find(params[:id])
    if @card_set.update(set_name: set_name, set: set)
      flash[:notice] = "Set successfully updated!"
      redirect_to card_sets_path
    else
      render :edit
    end
  end

  def destroy
    @card_set = CardSet.find(params[:id])
    @card_set.destroy
    flash[:notice] = "Set successfully deleted!"
    redirect_to card_sets_path
  end
  
  private
  def card_set_params
    params.require(:card_set).permit(:set_name, :set)
  end
end
