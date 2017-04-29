class Job < ApplicationRecord

 belongs_to :user
 validates :title, presence: true

 scope :published, -> { where(is_hidden: false) }
 scope :recent, -> { order("created_at DESC") }

 mount_uploader :picture, AttachmentUploader

   def publish!
     self.is_hidden = false
     self.save
   end

   def hide!
     self.is_hidden = true
     self.save
   end

   has_many :resumes

   has_many :activity_relationships
   has_many :members, through: :activity_relationships, source: :user

end
