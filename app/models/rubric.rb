class Rubric < ActiveRecord::Base

  mount_uploader :rubric_avatar, RubricAvatarUploader

  validates_integrity_of  :rubric_avatar
  validates_processing_of :rubric_avatar

  validates :rubric_name, :rubric_description, presence: true

  private
  def rubric_avatar_size_validation
    errors[:rubric_avatar] << "should be less than 500KB" if avatar.size > 0.5.megabytes
  end

end
