module Poteti
  class User < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    DEVISE_OPTIONS = %i(
      database_authenticatable
      registerable
      recoverable
      rememberable
      trackable
      validatable
    )
    devise(*DEVISE_OPTIONS)

    has_many :tips
  end
end
