class User < ApplicationRecord
    validates :name, presence: true
    validates :nickname, presence: true 
    validates :email, presence: true
    validates :password, presence: true

    has_one :user_preference
    has_many :posts
    has_many :comments
    has_many :tasks, through: :post_task
    has_many :sports, through: :sport_user
    has_many :roles, through: :match
    belongs_to :address, dependent: :destroy

    enum role: [:fremium , :premium , :administrador]
    enum gender: [:masculino , :femenino , :transgenero , :no_indicar]

    paginates_per 20
end

def select_address
    @address.pluck(:id, :communne_name)
end