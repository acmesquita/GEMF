class AddColumnCidadeToUsuarios < ActiveRecord::Migration[5.0]
  def change
    add_column :usuarios, :cidade, :string
  end
end
