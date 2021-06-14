class Deposit < ApplicationRecord
  require 'httparty'

  belongs_to :user
end
