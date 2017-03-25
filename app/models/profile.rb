class Profile < ActiveRecord::Base
  belongs_to :user #Relationship zwischen profile und user
end