class ResultsController < ApplicationController
  def index
    @results = current_user.results
    @result = Result.new
  end

  def show
    
  end

  def new
    @result = Result.new
  end

  def create
    @result = current_user.results.build(result_params)
    @result.save
  end

  def control
  end

  private

  def result_params
    params.require(:result).permit(:count_times, :subject, :start_time)
  end
end
