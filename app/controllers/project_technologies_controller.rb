class ProjectTechnologiesController < ApplicationController
  private

  def task_params
    params.require(:project).permit(:name, :description :tag_list) 
    #tag_list を追加
  end
end
