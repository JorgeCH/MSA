class RemoveDescToBoard < ActiveRecord::Migration
  def change
    remove_column :boards, :desc, :string
  end
end
