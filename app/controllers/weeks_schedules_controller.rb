class WeeksSchedulesController < ApplicationController
  before_action :set_weeks_schedule, only: [:show, :edit, :update, :destroy]

  # GET /weeks_schedules
  # GET /weeks_schedules.json
  def index
    @weeks_schedules = WeeksSchedule.all
  end

  # GET /weeks_schedules/1
  # GET /weeks_schedules/1.json
  def show
  end

  # GET /weeks_schedules/new
  def new
    @weeks_schedule = WeeksSchedule.new
  end

  # GET /weeks_schedules/1/edit
  def edit
  end

  # POST /weeks_schedules
  # POST /weeks_schedules.json
  def create
    @weeks_schedule = WeeksSchedule.new(weeks_schedule_params)

    respond_to do |format|
      if @weeks_schedule.save
        format.html { redirect_to @weeks_schedule, notice: 'Weeks schedule was successfully created.' }
        format.json { render :show, status: :created, location: @weeks_schedule }
      else
        format.html { render :new }
        format.json { render json: @weeks_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weeks_schedules/1
  # PATCH/PUT /weeks_schedules/1.json
  def update
    respond_to do |format|
      if @weeks_schedule.update(weeks_schedule_params)
        format.html { redirect_to @weeks_schedule, notice: 'Weeks schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @weeks_schedule }
      else
        format.html { render :edit }
        format.json { render json: @weeks_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weeks_schedules/1
  # DELETE /weeks_schedules/1.json
  def destroy
    @weeks_schedule.destroy
    respond_to do |format|
      format.html { redirect_to weeks_schedules_url, notice: 'Weeks schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weeks_schedule
      @weeks_schedule = WeeksSchedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weeks_schedule_params
      params.require(:weeks_schedule).permit(:day, :classroom, :week_type, :date_from, :date_to, :time_p)
    end
end
