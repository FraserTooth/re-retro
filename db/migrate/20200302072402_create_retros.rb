class CreateRetros < ActiveRecord::Migration[6.0]
  def change
    create_table :retros do |t|
      t.string :facilitator
      t.text :introduction
      t.date :date
      t.string :team
      
      t.timestamps
    end
  end
end
