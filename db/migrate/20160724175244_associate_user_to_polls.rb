class AssociateUserToPolls < ActiveRecord::Migration[5.0]
  def change
    add_reference :polls, :user, index: true
  end
end
