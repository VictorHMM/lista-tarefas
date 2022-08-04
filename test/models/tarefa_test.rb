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
require 'test_helper'

class TarefaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
