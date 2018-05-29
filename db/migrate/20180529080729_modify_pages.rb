class ModifyPages < ActiveRecord::Migration[5.2]
  def up
    add_index('pages','permalink')
  end
  def down
  end
end
