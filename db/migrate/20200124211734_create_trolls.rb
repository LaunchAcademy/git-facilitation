class CreateTrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :trolls do |t|
      t.string :name
      t.string :habitat
    end
  end
end
