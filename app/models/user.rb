class User < ApplicationRecord

validates :name, presence: true, uniqueness: true
has_many :events

=begin  
has_many :created events, class_name: ‘Event’
has_many :invitations
has_many :attented_events, through: :invitations 
=end
end
