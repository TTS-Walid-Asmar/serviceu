class JobLists::CommentsController < CommentsController
  before_action :set_commentable

  private

    def set_commentable
        @commentable = JobList.find(params[:job_list_id])
    end
end
