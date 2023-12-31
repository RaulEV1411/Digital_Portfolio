class User < ApplicationRecord
    enum role: [:regular , :admin]
    has_one_attached :photo
    has_many :project
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
end
