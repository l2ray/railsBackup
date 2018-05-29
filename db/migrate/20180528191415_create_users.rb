class CreateUsers < ActiveRecord::Migration[5.2]
  def up
    create_table :users do |t|
      t.string 'f_name',:limit=>25,:null=>false
      t.string 'l_name',:limit=>30,:null=>false;
      t.string 'u_name',:limit=>10,:null=>false;
      t.string 'password',:limit=>20,:null=>false;

      t.timestamps
    end
  end
  def down
    drop_user :users
  end
end
