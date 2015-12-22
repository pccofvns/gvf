class CreateNewsEvents < ActiveRecord::Migration
  def change
    create_table :news_events do |t|
      t.string :title
      t.text :description
      t.string :detail_url
      t.date :on
      t.string :image_url

      t.timestamps null: false
    end
  end
end
