class EventsController < ApplicationController

  before_action :set_event, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]

  def index
    @events = current_user.events
  end

  def show
    @categories = @event.categories
    @photos = @event.photos
      end

  def new
    @event = current_user.events.build
  end

  def create
    @event = current_user.events.build(event_params)

    if @event.save
      redirect_to @event, notice: "event successfully created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to @event, notice: "event successfully updated"
    else
      render :edit
    end
  end

  private
    def set_event
      @event = event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:name, :description, :location,
      :includes_food, :includes_drinks, :price, :starts_at, :ends_at,
      :capacity, :active, :user)
    end
end
