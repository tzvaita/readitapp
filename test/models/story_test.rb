require 'test_helper'

class StoryTest < ActiveSupport::TestCase
  test "is not valid without a name" do
  s = Story.create(
    name: nil,
    link: 'http://www.testsubmission.com/'
  )
  assert s.errors[:name].any?
  refute s.valid?
end

test "is not valid without a link" do
  s = Story.create(name: 'My test submission', link: nil)
  assert s.errors[:link].any?
  refute s.valid?
end
test "is valid with required attributes" do
  s = Story.create(
    name: 'My test submission',
    link: 'http://www.testsubmission.com/')
  assert s.valid?
end
end
