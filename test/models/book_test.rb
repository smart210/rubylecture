require 'test_helper'

class BookTest < ActiveSupport::TestCase
  mount_uploader :avatar, AvatarUploader
  mount_uploader :image, ImageUploader
  # test "the truth" do
  #   assert true
  # end
end
