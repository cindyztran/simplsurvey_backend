class UsersController < ApplicationController
  before_action :set_user, only: %i[ :show :update :destroy ]
  


  # GET /users 
  def index
    @users = User.all
    render json: @users.to_json(include: {
      chosen_answers: {
        include: {
          survey_question: {}
        }
      } 

    })

  end

  # GET /users/:google_id
  def show
    user = User.find_by(:google_id => params[:google_id])
    render json: user.to_json(include: :survey_questions)
  end

  # POST /users 
  def create
    @user = User.new(user_params)

      if @user.save
        render json: @user, status: :created
      else
        render json: @user.errors, status: :unprocessable_entity 
      end
    end



  # PATCH/PUT /users/:google_id
  def update
    user = User.find_by(:google_id => params[:google_id])
      if user.update(user_params)
        render json: user, status: :ok, location: user 

      else
        render json: user.errors, status: :unprocessable_entity 
      end
    end
  

  # DELETE /users/:google_id
  def destroy
    user = User.find_by(:google_id => params[:google_id])
    user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def get_users 
      User.order('created_at DESC')
    end

    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:google_id)
    end
end

