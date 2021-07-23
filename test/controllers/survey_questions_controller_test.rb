require "test_helper"

class SurveyQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @survey_question = survey_questions(:one)
  end

  test "should get index" do
    get survey_questions_url, as: :json
    assert_response :success
  end

  test "should create survey_question" do
    assert_difference('SurveyQuestion.count') do
      post survey_questions_url, params: { survey_question: { categories: @survey_question.categories, survey_question_text: @survey_question.survey_question_text, total_votes: @survey_question.total_votes, user_id: @survey_question.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show survey_question" do
    get survey_question_url(@survey_question), as: :json
    assert_response :success
  end

  test "should update survey_question" do
    patch survey_question_url(@survey_question), params: { survey_question: { categories: @survey_question.categories, survey_question_text: @survey_question.survey_question_text, total_votes: @survey_question.total_votes, user_id: @survey_question.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy survey_question" do
    assert_difference('SurveyQuestion.count', -1) do
      delete survey_question_url(@survey_question), as: :json
    end

    assert_response 204
  end
end
