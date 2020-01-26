class CreateHours < ActiveRecord::Migration
  def change
    create_table :hours do |t|
      t.datetime :sunStart
      t.datetime :sunEnd
      t.datetime :monStart
      t.datetime :monEnd
      t.datetime :tueStart
      t.datetime :tueEnd
      t.datetime :wedStart
      t.datetime :wedEnd
      t.datetime :thuStart
      t.datetime :thuEnd
      t.datetime :friStart
      t.datetime :friEnd
      t.datetime :satStart
      t.datetime :satEnd

      t.timestamps null: false
    end
  end
end
