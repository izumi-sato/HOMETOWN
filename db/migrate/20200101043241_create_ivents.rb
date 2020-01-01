class CreateIvents < ActiveRecord::Migration[5.2]
  def change
    create_table :ivents do |t|
      t.string :ivent_name
      t.text :text
      t.text :url
      t.text :image
      t.string :owner_name
      t.string :place
      t.datetime :start_day
      t.datetime :end_day
      t.timestamps
    end
  end
end
