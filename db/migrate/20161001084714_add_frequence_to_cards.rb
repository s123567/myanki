class AddFrequenceToCards < ActiveRecord::Migration[5.0]
  def change
    add_column :cards, :frequence, :string
  end
end
