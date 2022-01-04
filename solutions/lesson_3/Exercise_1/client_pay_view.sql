CREATE VIEW client_pay AS (
 SELECT c.name, t_s.hours * co.hourly_rate AS total
  FROM Clients c JOIN Training_sequence t_s ON (c.c_id = t_s.c_id) JOIN Coach co ON (t_s.coach_id = co.id)
)