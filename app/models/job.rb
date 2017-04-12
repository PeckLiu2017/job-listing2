class Job < ApplicationRecord

 validates :title, presence: true

 validates :wage_upper_bound, presence: true
 validates :wage_lower_bound, presence: true
 validates :wage_lower_bound, numericality: {greater_than: 0,less_than: 100000000}

 def publish!
     self.is_hidden = false
     self.save
   end

   def hide!
     self.is_hidden = true
     self.save
   end

   has_many :resumes

end
