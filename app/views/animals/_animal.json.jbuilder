json.extract! animal, :id, :species, :breed, :birthdate, :initial_weight, :gender, :status, :acquisition_date, :supplier, :health_history, :production, :comments, :corral_id, :ranch_id, :created_at, :updated_at
json.url animal_url(animal, format: :json)
