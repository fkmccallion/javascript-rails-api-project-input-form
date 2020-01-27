class ChangeHoursDataTypeFromDateTimeToString < ActiveRecord::Migration
  def change
    change_column :hours, :sunStart, :string
    change_column :hours, :sunEnd, :string
    change_column :hours, :monStart, :string
    change_column :hours, :monEnd, :string
    change_column :hours, :tueStart, :string
    change_column :hours, :tueEnd, :string
    change_column :hours, :wedStart, :string
    change_column :hours, :wedEnd, :string
    change_column :hours, :thuStart, :string
    change_column :hours, :thuEnd, :string
    change_column :hours, :friStart, :string
    change_column :hours, :friEnd, :string
    change_column :hours, :satStart, :string
    change_column :hours, :satEnd, :string
  end
end
