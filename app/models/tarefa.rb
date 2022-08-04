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
    validate :valida_prioridade
    #validates :prioridade, inclusion: {in: [1..5], message: "Prioridade deve ser um valor entre 1 e 5."}, presence: false

    private

    def default_values
        self.concluido = false
        self.prioridade ||= 5
    end

    def valida_prioridade
        if self.prioridade.present?
            errors.add(:prioridade, "Texto") unless [1..5].include?(self.prioridade)
        end
    end
end
