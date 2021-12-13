class ReservationSerializer < ActiveModel::Serializer

  attributes :id, :desired_date, :desired_time, :special_request, :client_id, :tour_id

end
