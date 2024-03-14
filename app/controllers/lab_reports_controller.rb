class LabReportsController < ApplicationController
  def index
    @reports = LabReport.all
  end

  def show
    @report = LabReport.find(params[:id])
    @user = @report.user
  end

  def new
    @report = LabReport.new
  end

  def create
    @report = LabReport.new(report_params)
    if @report.save
      redirect_to lab_reports_path
    else
      render :new, status: :unprocessable_entity
    end
  end


  def edit
    @report = LabReport.find(params[:id])
  end

  def update
    @report = LabReport.find(params[:id])

    if @report.update(report_params)
      redirect_to lab_reports_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @report = LabReport.find(params[:id])
    @report.destroy

    redirect_to lab_reports_path, status: :see_other
  end

  def add_mark
    @report = LabReport.find(params[:id])
  end

  private
  def report_params
    params.require(:lab_report).permit(:title, :description, :grade, :user_id)
  end
end
