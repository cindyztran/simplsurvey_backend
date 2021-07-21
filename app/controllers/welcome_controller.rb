class WelcomeController < ApplicationController
    def index
        render json: {status: 200, message: 'SimplSurvey API'}
    end
end
