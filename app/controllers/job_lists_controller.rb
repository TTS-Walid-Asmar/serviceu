class JobListsController < ApplicationController
  before_action :set_job_list, only: [:show, :edit, :update, :destroy]

  before_filter :authenticate_user!

  # GET /job_lists
  # GET /job_lists.json
  def index
    @job_lists = JobList.all.order("created_at DESC")
  end

  # GET /job_lists/1
  # GET /job_lists/1.json
  def show
    @comment = Comment.new
  end

    def user_profiles_jobs
        @user = User.find(params[:id])
    end

  # GET /job_lists/new
  def new
    @job_list = JobList.new
  end

  # GET /job_lists/1/edit
  def edit
  end

  # POST /job_lists
  # POST /job_lists.json
  def create
    @job_list = JobList.new(job_list_params)

    respond_to do |format|
      if @job_list.save
        format.html { redirect_to @job_list, notice: 'Job list was successfully created.' }
        format.json { render :show, status: :created, location: @job_list }
      else
        format.html { render :new }
        format.json { render json: @job_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_lists/1
  # PATCH/PUT /job_lists/1.json
  def update
    respond_to do |format|
      if @job_list.update(job_list_params)
        format.html { redirect_to @job_list, notice: 'Job list was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_list }
      else
        format.html { render :edit }
        format.json { render json: @job_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_lists/1
  # DELETE /job_lists/1.json
  def destroy
    @job_list.destroy
    respond_to do |format|
      format.html { redirect_to job_lists_url, notice: 'Job list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_list
      @job_list = JobList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_list_params
      params.require(:job_list).permit(:title, :description, :user_id)
    end
end
