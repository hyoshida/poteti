module Poteti
  class AdminUser < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    DEVISE_OPTIONS = %i(
      database_authenticatable
      recoverable
      rememberable
      trackable
      validatable
    )
    devise(*DEVISE_OPTIONS)
  end
end
