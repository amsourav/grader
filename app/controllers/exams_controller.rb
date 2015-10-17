class ExamsController < ApplicationController
  before_action :authenticate_teacher!
  before_action :load_course

  # GET /exams
  def index
    course = Course.find(params[:course_id])
    @exams = course.exams.all
  end

  # GET /exams/1
  def show
    @exam = @course.exams.find(params[:id])
  end

  # GET /exams/new
  def new
    @exam = @course.exams.new
  end

  # GET /exams/1/edit
  def edit
    @exam = @course.exams.find(params[:id])
  end

  # POST /exams
  def create
    @exam = @course.exams.new(exam_params)

    if @exam.save
      redirect_to [@course, @exam], notice: 'Exam was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /exams/1
  def update
    @exam = @course.exams.find(params[:id])
    if @exam.update(exam_params)
      redirect_to course_exams_path, notice: 'Exam was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /exams/1
  def destroy
    @exam = @course.exams.find(params[:id])
    @exam.destroy
    redirect_to course_exams_url(@course), notice: 'Exam was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def load_course
      @course = Course.find(params[:course_id])
    end

    def set_exam
      @exam = Exam.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def exam_params
      params.require(:exam).permit(:name, :date, :course_id)
    end
end
