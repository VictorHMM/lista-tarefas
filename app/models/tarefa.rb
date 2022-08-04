# == Schema Information
#
# Table name: tarefas
#
#  id         :bigint           not null, primary key
#  concluido  :boolean
#  descricao  :text
#  prioridade :integer
#  titulo     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Tarefa < ApplicationRecord
    validates :titulo, presence: true

    private

    def default_values
        self.concluido = false
        self.prioridade ||= 5
    end
end
