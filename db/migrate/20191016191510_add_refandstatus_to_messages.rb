class AddRefandstatusToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :read, :boolean, default: false
    add_reference :messages, :conversation, foreign_key: true
  end
end
