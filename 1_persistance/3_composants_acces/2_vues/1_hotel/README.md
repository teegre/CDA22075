# Création de vues : base de donnée Hotels

## Liste des hôtels avec leur station :

```sql
CREATE VIEW v_hotels_stations AS
SELECT hotel_nom, station_nom FROM hotel
JOIN station ON hotel.hotel_station_id = station.station_id
ORDER BY hotel_nom;
```

## Liste des chambres et leur hôtel :

```sql
CREATE VIEW v_chambres_hotels AS
SELECT hotel_nom, chambre_numero, chambre_capacite FROM chambre
JOIN hotel ON chambre.chambre_hotel_id = hotel.hotel_id
ORDER BY hotel_nom, chambre_numero;
```

## Liste des réservations avec le nom des clients :

```sql
CREATE VIEW v_reservations_clients AS
SELECT client_nom, client_prenom, reservation_date, reservation_date_debut, reservation_date_fin, chambre_numero, reservation_arrhes FROM reservation
JOIN client ON reservation.reservation_client_id = client.client_id
JOIN chambre ON reservation.reservation_chambre_id = chambre.chambre_id
ORDER BY client_nom;
```

## Liste des chambres avec le nom de l'hôtel et le nom de la station :

```sql
CREATE VIEW v_chambres_hotels_stations AS
SELECT station_nom, hotel_nom, chambre_numero, chambre_capacite FROM chambre
JOIN hotel ON chambre.chambre_hotel_id = hotel.hotel_id
JOIN station ON hotel.hotel_station_id = station.station_id
ORDER BY station_nom, hotel_nom, chambre_numero;
```

## Liste des réservations avec le nom du client et le nom de l'hôtel :

```sql
CREATE VIEW v_reservations_clients_hotels AS
SELECT client_nom, client_prenom, reservation_date, reservation_date_debut, reservation_date_fin, hotel_nom, chambre_numero, reservation_arrhes FROM reservation
JOIN client ON reservation.reservation_client_id = client.client_id
JOIN chambre ON reservation.reservation_chambre_id = chambre.chambre_id
JOIN hotel ON chambre.chambre_hotel_id = hotel.hotel_id
ORDER BY client_nom;
```
