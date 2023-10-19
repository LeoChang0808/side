class AddLevelToProfile < ActiveRecord::Migration[7.1]
  def change
    add_column :profiles, :level, :integer, default: 1
    #Ex:- :default =>''
    add_column :profiles, :exp, :integer, default:0, limit: 99
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
