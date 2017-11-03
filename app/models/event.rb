class Event < ApplicationRecord

validates :description, presence: true
validates :date, presence: true
validates :location, presence: true

belongs_to :user

=begin 
belongs_to creator, class_name: ‘User’
has_many :invitations
has_many :attendees, through: :invitations
=end 
 
end
