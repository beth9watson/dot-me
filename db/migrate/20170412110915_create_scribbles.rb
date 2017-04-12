class CreateScribbles < ActiveRecord::Migration[5.0]
  def change
    create_table :scribbles do |t|
      t.text :before_image, null: false
      t.text :after_image

      t.string :requester_email, null: false

      t.timestamps
    end
  end
end
