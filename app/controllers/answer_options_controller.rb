class AnswerOptionsController < ApplicationController
  before_action :set_answer_option, only: %i[ :show, :update, :destroy ]

  # GET /answer_options 
  def index
    @answer_options = get_answer_options
    
    render json: @answer_options
  end

  # GET /answer_options/1 
  def show
    render json: @answer_option
  end

  # POST /answer_options 
  def create
    @answer_option = AnswerOption.new(answer_option_params)

      if @answer_option.save
        render json: get_answer_options, status: :created, location: @answer_option

      else
        render json: @answer_option.errors, status: :unprocessable_entity

      end
    end
  
  # PATCH/PUT /answer_options/1 
  def update
      if @answer_option.update(answer_option_params)
        render json: get_answer_options 

      else
        render json: @answer_option.errors, status: :unprocessable_entity

      end
    end


  # DELETE /answer_options/1 
  def destroy
    @answer_option.destroy
    render json: get_answer_options
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
