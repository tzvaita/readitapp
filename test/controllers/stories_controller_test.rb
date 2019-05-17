require 'test_helper'

class StoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stories_url
    assert_response :success
  end

  test "new shows new form" do
  get new_story_path
  assert_select 'form div', count: 2
end

test "adds a story" do
assert_difference "Story.count" do
  post stories_path, params: {
    story: {
      name: 'test story',
      link: 'http://www.test.com/'
    }
  }
end
assert_redirected_to stories_path
assert_not_nil flash[:notice]
end

test "rejects when missing story attribute" do
assert_no_difference "Story.count" do
  post stories_path, params: {
    story: { name: 'story without a link' }
      }
end
end

end
