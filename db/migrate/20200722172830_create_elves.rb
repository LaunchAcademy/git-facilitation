class CreateElves < ActiveRecord::Migration[5.2]
  def change
    create_table :elves do |t|
      t.string :name
      t.string :elf_type
    end
  end
end
