class TaggingsController < ApplicationController
  def index
    @tagging = Tagging.all
  end

  def new
    @job = Job.find(params[:job_id])
    @tagging = Tag.new()
  end
end
