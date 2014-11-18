class DatesSchedulesController < ApplicationController
  before_action :set_dates_schedule, only: [:show, :edit, :update, :destroy]

  # GET /dates_schedules
  # GET /dates_schedules.json
  def index
    @dates_schedules = DatesSchedule.all
  end

  # GET /dates_schedules/1
  # GET /dates_schedules/1.json
  def show
  end

  # GET /dates_schedules/new
  def new
    @dates_schedule = DatesSchedule.new
  end

  # GET /dates_schedules/1/edit
  def edit
  end

  # POST /dates_schedules
  # POST /dates_schedules.json
  def create
    @dates_schedule = DatesSchedule.new(dates_schedule_params)

    respond_to do |format|
      if @dates_schedule.save
        format.html { redirect_to @dates_schedule, notice: 'Dates schedule was successfully created.' }
        format.json { render :show, status: :created, location: @dates_schedule }
      else
        format.html { render :new }
        format.json { render json: @dates_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dates_schedules/1
  # PATCH/PUT /dates_schedules/1.json
  def update
    respond_to do |format|
      if @dates_schedule.update(dates_schedule_params)
        format.html { redirect_to @dates_schedule, notice: 'Dates schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @dates_schedule }
      else
        format.html { render :edit }
        format.json { render json: @dates_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dates_schedules/1
  # DELETE /dates_schedules/1.json
  def destroy
    @dates_schedule.destroy
    respond_to do |format|
      format.html { redirect_to dates_schedules_url, notice: 'Dates schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dates_schedule
      @dates_schedule = DatesSchedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dates_schedule_params
      params.require(:dates_schedule).permit(:classroom, :timestamp)
    end
end
