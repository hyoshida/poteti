module Poteti
  class Tip < ActiveRecord::Base
    belongs_to :user
  end
end
