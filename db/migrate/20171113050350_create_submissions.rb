class CreateSubmissions < ActiveRecord::Migration[5.1]
  def change
    create_table :submissions do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
