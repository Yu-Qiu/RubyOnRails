require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @post = articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articles)
  end

  test "should create article" do
    article = Article.new
    article.title = "Test article"
    article.text = "Test body"

    assert article.save
  end

end
