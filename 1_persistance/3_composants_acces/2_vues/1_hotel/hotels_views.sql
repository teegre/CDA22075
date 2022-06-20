CREATE VIEW v_hotels_stations AS
SELECT hotel_nom, station_nom FROM hotel
JOIN station ON hotel.hotel_sta_id = station.station_id
ORDER BY hotel_nom;

CREATE VIEW v_chambres_hotels AS
SELECT hotel_nom, chambre_numero, chambre_capacite FROM chambre
JOIN hotel ON chambre.chambre_hot_id = hotel.hotel_id
ORDER BY hotel_nom, chambre_numero;

CREATE VIEW v_reservations_clients AS
SELECT client_nom, client_prenom, reservation_date, reservation_date_debut, reservation_date_fin, chambre_numero, reservation_arrhes FROM reservation
JOIN client ON reservation.reservation_cli_id = client.client_id
JOIN chambre ON reservation.reservation_cha_id = chambre.chambre_id
ORDER BY client_nom;

CREATE VIEW v_chambres_hotels_stations AS
SELECT station_nom, hotel_nom, chambre_numero, chambre_capacite FROM chambre
JOIN hotel ON chambre.chambre_hot_id = hotel.hotel_id
JOIN station ON hotel.hotel_sta_id = station.station_id
ORDER BY station_nom, hotel_nom, chambre_numero;

CREATE VIEW v_reservations_clients_hotels AS
SELECT client_nom, client_prenom, reservation_date, reservation_date_debut, reservation_date_fin, hotel_nom, chambre_numero, reservation_arrhes FROM reservation
JOIN client ON reservation.reservation_cli_id = client.client_id
JOIN chambre ON reservation.reservation_cha_id = chambre.chambre_id
JOIN hotel ON chambre.chambre_hot_id = hotel.hotel_id
ORDER BY client_nom;
