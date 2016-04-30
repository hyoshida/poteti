module Poteti
  class Tip < ActiveRecord::Base
    belongs_to :user

    default_scope { order(updated_at: :desc, id: :desc) }
  end
end
