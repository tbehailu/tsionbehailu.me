class ProjectsController < ApplicationController
	def new
	end

	def create
	  @project = Project.new(params[:article])
	 
	  @project.save
	  redirect_to @project
	end

	def index
	  @projects = Project.all
	end

	def show
	  @project = Project.find(params[:id])
	end

private
  def project_params
    params.require(:article).permit(:title, :text)
  end
end
