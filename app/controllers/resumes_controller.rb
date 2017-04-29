class ResumesController < ApplicationController
  before_action :authenticate_user!

  def new
    @job = Job.find(params[:job_id])
    @resume = Resume.new
  end

  def create
    @job = Job.find(params[:job_id])
    @resume = Resume.new(resume_params)
    @resume.job = @job
    @resume.user = current_user

    if @resume.save
      flash[:notice] = "resume success"
      redirect_to job_path(@job)
    else
      render :new
    end
  end

  def destroy
    @resume = Resume.find(params[:id])
    @job = Job.find(params[:job_id])
    @resume.destroy

  redirect_to job_path(@job) ,alert:"Review deleted!"
  end

  def edit
    @job = Job.find(params[:job_id])
    @resume =  Resume.find(params[:id])
  end

  def update
    @job = Job.find(params[:job_id])
    @resume =  Resume.find(params[:id])
    @resume.job = @job
    if @resume.update(resume_params)
      redirect_to account_resumes_path,notice:"resume edited!"
    else
      render :edit
    end

  end
  private

  def resume_params
    params.require(:resume).permit(:content,:attachment)
  end
end
