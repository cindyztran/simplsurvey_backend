require "test_helper"

class ChosenAnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chosen_answer = chosen_answers(:one)
  end

  test "should get index" do
    get chosen_answers_url, as: :json
    assert_response :success
  end

  test "should create chosen_answer" do
    assert_difference('ChosenAnswer.count') do
      post chosen_answers_url, params: { chosen_answer: { answer_option_id: @chosen_answer.answer_option_id, survey_question_id: @chosen_answer.survey_question_id, user_id: @chosen_answer.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show chosen_answer" do
    get chosen_answer_url(@chosen_answer), as: :json
    assert_response :success
  end

  test "should update chosen_answer" do
    patch chosen_answer_url(@chosen_answer), params: { chosen_answer: { answer_option_id: @chosen_answer.answer_option_id, survey_question_id: @chosen_answer.survey_question_id, user_id: @chosen_answer.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy chosen_answer" do
    assert_difference('ChosenAnswer.count', -1) do
      delete chosen_answer_url(@chosen_answer), as: :json
    end

    assert_response 204
  end
end
