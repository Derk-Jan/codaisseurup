# app/controllers/events_controller.rb

def show
##
  @photos = @event.photos
end

def create
  @event = current_user.events.build(event_params)

  if @event.save
    image_params.each do |image|
      @event.photos.create(image: image)
    end

    redirect_to edit_event_path(@event), notice: "Event successfully created"
  else
    render :new
  end

  def edit
  if current_user.id == @event.user.id
    @photos = @event1.photos
  else
    redirect_to root_path, notice: "You don't have permission."
  end
  def update
    if @event.update(event_params)
      image_params.each do |image|
        @event.photos.create(image: image)
      end

      redirect_to edit_event_path(@event), notice: "event successfully updated"
    else
      render :edit
    end
  end

  private

  def image_params
    params[:images].present? ? params.require(:images) : []
  end
end
