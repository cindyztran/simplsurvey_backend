require "test_helper"

class AnswerOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @answer_option = answer_options(:one)
  end

  test "should get index" do
    get answer_options_url, as: :json
    assert_response :success
  end

  test "should create answer_option" do
    assert_difference('AnswerOption.count') do
      post answer_options_url, params: { answer_option: { answer_numeric: @answer_option.answer_numeric, answer_text: @answer_option.answer_text, survey_question_id: @answer_option.survey_question_id } }, as: :json
    end

    assert_response 201
  end

  test "should show answer_option" do
    get answer_option_url(@answer_option), as: :json
    assert_response :success
  end

  test "should update answer_option" do
    patch answer_option_url(@answer_option), params: { answer_option: { answer_numeric: @answer_option.answer_numeric, answer_text: @answer_option.answer_text, survey_question_id: @answer_option.survey_question_id } }, as: :json
    assert_response 200
  end

  test "should destroy answer_option" do
    assert_difference('AnswerOption.count', -1) do
      delete answer_option_url(@answer_option), as: :json
    end

    assert_response 204
  end
end
