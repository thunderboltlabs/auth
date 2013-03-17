class User < ActiveRecord::Base
  devise *%i[database_authenticatable
             recoverable
             rememberable
             trackable
             validatable]
end
