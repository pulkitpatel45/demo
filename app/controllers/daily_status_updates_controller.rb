class DailyStatusUpdatesController < ApplicationController
  def new
    @daily_status_update=DailyStatusUpdate.new
  end
  def create
    @daily_status_update=DailyStatusUpdate.new(daily_status_update_params)
   if @daily_status_update.save
      
   end
  end

  private

  def daily_status_update_params
    params.require(:daily_status_update).permit(:to,:status_date,:project,:working_hours,:task,:user_id)
  end
end

