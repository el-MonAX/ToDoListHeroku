class ProjectsController < ApplicationController
  respond_to :html, :js

  def index
    @projects = Project.all #current_user.projects
    @project = Project.new
    #@task = Task.new
  end

  def create

  end

  def update

  end

  def destroy

  end
  private
    def project_params
      params.require(:project).permit(:title)
    end
end
