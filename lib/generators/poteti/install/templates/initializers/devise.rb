Devise.secret_key = '<%= SecureRandom.hex(50) %>' if Object.const_defined?(:Devise)
