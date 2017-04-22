class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def admin?
    is_admin
  end

  mount_uploader :avatar, AttachmentUploader

  has_many :resumes
  has_many :jobs

  has_many :activity_relationships
  has_many :participated_activitys,:through => :activity_relationships, :source => :job

  def is_member_of?(job)
    participated_activitys.include?(job)
  end

  def favorite!(job)
    participated_activitys  << job
  end

  def unfavorite!(job)
    participated_activitys.delete(job)
  end
end
