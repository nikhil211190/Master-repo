Movie Booking Assignment:

Below are the two cases covered :

Read scenario:
Browse theatres currently running the show (movie selected) in the town, including show timing
by a chosen date


Write Scenario:
Theatres can allocate seat inventory and update them for the show


API endpoints have been implemented to cater the above scenarios are as below :
1) /api/theatre//getTheatreDetails
2) /api/theatre/getShowsForCity
3) /api/theatre/updateInventoryForShow


Swagger URL for the detailed request response structure has been implemented :
URL swagger:http://localhost:5000/swagger-ui/#/
(Please refer theatre Controller for the suitable endpoints for read and write scenarios)

Database: Mysql database has been implemented
Adding insert scripts for valid data under src/resources/data.sql -(export with structure and data inserts are included in this sql)

For good data wise sample rest requests-sharing request bodies in src/resources/requests.txt for each of the endpoints in Postman.

