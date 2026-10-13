-- checking fleet size and model diversity

select

    count(distinct vehicle_id) as total_vehicles,

    count(distinct model_id) as total_models

from rentals;