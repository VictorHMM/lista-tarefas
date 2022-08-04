class CreateTarefas < ActiveRecord::Migration[6.0]
  def change
    create_table :tarefas do |t|
      t.string :titulo
      t.text :descricao
      t.boolean :concluido
      t.integer :prioridade

      t.timestamps
    end
  end
end
