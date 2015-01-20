class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_save :update_points

  private

  def update_points
    parents = Relationship.where(:child_id => self.id).map(&:parent_id)
    puts parents
  end


end
