class CreateLegalForms < ActiveRecord::Migration
  def change
    create_table :legal_forms do |t|
      t.string :event
      t.string :group
      t.date :date
      t.string :presenter
      t.string :twitter
      t.string :title
      t.text :description
      t.boolean :slides
      t.integer :fileformat
      t.boolean :livedemo
      t.boolean :audio
      t.boolean :sharedlaptop
      t.integer :OS
      t.integer :videooutput
      t.boolean :creativecommons
      t.string :email

      t.timestamps null: false
    end
  end
end
