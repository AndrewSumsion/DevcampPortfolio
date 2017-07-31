class User < ApplicationRecord
  
  petergate(roles: [:site_admin], multiple: false)
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  validates_presence_of :name
  
  has_many :comments, dependent: :destroy
  
  def first_name
    name = self.name.split
    name.delete_at(-1) if name.length > 1
    name.join(" ")
  end
  def last_name
    self.name.split.last
  end
end
