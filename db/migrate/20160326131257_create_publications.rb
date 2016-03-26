class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :author
      t.string :source
      t.string :title
      t.date :date
      t.string :url
      t.string :pub_type

      t.timestamps null: false
    end
  end
end
