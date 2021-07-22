class AnswerOptionsController < ApplicationController
  before_action :set_answer_option, only: %i[:update, :destroy ]

  #GET 
  def index
    @answer_options = get_answer_options
    
    render json: @answer_options
  end
  # POST /survey_questions/:survey_question_id/answer_options 
  def create
    @answer_option = AnswerOption.new(answer_option_params)
    @answer_option.survey_question_id = params[:survey_question_id]

      if @answer_option.save
        render json: get_answer_options, status: :created

      else
        render json: @answer_option.errors, status: :unprocessable_entity

      end
    end
  
  # PATCH/PUT /survey_questions/:survey_question_id/answer_options/:id 
  def update
    @answer_option = AnswerOption.find(params[:id])
    if @answer_option.update(answer_option_params)
      render json: @answer_option
    else
      render json: @answer_option.errors, status: :unprocessable_entity
    end
  end


  # DELETE /survey_questions/:survey_question_id/answer_options/:id answer_options/1 
  def destroy
    @answer_option = AnswerOption.find(params[:id])
    @answer_option.destroy
  end

  private
    def get_answer_options
      AnswerOption.order('created_at DESC')
    end

    def set_answer_option
      @answer_option = AnswerOption.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def answer_option_params
      params.require(:answer_option).permit(:answer_numeric, :answer_text)
    end
end
