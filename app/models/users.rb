 class Schedule < ApplicationRecord
   validates :title, presence: true
   require Rails.root.join
 end