class Spree::Admin::TicksController < Spree::Admin::ResourceController

  def index
    @ticks = Spree::Tick.all
  end

  def show
    @tick = Spree::Tick.find(params[:id])
  end

  def new
    @tick = Spree::Tick.new
  end

  def create
    @tick = Spree::Tick.new(params[:tick])
    if @tick.save
      flash[:notice] = "Tick saved successfully"
      redirect_to admin_ticks_path
    else
      flash[:alert] = "There was an error saving your tick"
      redirect_to :back
    end
  end

  def edit
    @tick = Spree::Tick.find(params[:id])
  end

  def update
    @tick = Spree::Tick.find(params[:id])
    if @tick.update_attributes(params[:tick])
      flash[:notice] = "Ticks saved successfully"
      redirect_to admin_ticks_path
    else
      flash[:alert] = "There was an error saving your tick"
      redirect_to :back
    end
  end

  def destroy
    @tick = Spree::Tick.find(params[:id])
    if @tick.destroy
      redirect_to admin_ticks_path
    else
      redirect_to :back
    end
  end

end
