class CreateArticles < ActiveRecord::Migration[8.0]
  def change

    create_table :articles do |t|
      t.string :name
      t.string :title
      t.text :content
      t.timestamps
    end

  end
end
