class User < ActiveRecord::Base
  has_many :decks
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  # user_signed_in? - verify a user is signed in
  # current_user    - for the current signed-in user
  # user_session    - accessing the session for this scope
  
end
