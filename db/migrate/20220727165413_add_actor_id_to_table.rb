class AddActorIdToTable < ActiveRecord::Migration[6.1]
  def change
    add_column :roles, :actor_id, :integer 
  end
end
