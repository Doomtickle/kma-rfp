class Proposal < ActiveRecord::Base
  belongs_to :user
    validates :rfp_amount, 
      :format => { :with => /[0-9]/, :message => 'Please only enter numbers'},
      :on => :create
end
