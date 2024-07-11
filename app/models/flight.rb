class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport' #aeroporto de partida 
  belongs_to :arrival_airport, class_name: 'Airport' #aeroporto de chegada
end
