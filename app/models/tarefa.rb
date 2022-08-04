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
    before_save :default_values
    validates :titulo, presence: true
    validates :prioridade, inlusion: {in: [1...5], message: "Prioridade deve ser um valor entre 1 e 5."}

    private

    def default_values
        self.concluido = false
        self.prioridade ||= 5
    end
end
