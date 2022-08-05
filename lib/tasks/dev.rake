namespace :dev do
  desc "Gera dados mockados no banco"
  task setup: :environment do
    50.times do |i|
      Tarefa.create!(
        titulo: Faker::Lorem.sentence(word_count: 4)
      )
    end
  end

end
