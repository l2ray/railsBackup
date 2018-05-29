class CreatePages < ActiveRecord::Migration[5.2]
  def up
    create_table :pages do |t|
      t.integer 'subject_id';
      t.string 'name',:limit=>255;
      t.integer 'permalink';
      t.integer 'position';
      t.boolean 'visible'

      t.timestamps
    end
    add_index('pages','subject_id');
  end
  def down
    drop_table :pages
  end
end
