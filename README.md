# SailsJs-RestAPI
<b>SailsJS Application with simple RestAPI</b><br>

1. Packages needed for this project<br>
    i. npm install sails-mysql <br>
    ii. npm install lodash

2. Import DB.sql file in your database.

<b>API's Included</b>

1. http://localhost:1337/list
    Fetch all data from table (JSON Format)

2. http://localhost:1337/count
    Counts all the records in the table (JSON)

3. http://locahost:1337/stats
    Response after some processing with the fetched results (JSON Format)

4. http://localhost:1337/search?name={name}
    Response after searching 'name' in table

5. http://localhost:1337/search?type={battle_type}
    Response after searching 'name' in table

6. http://localhost:1337/search?king={king}
    Response after searching 'name' in table

7. http://localhost:1337/search?location={location}
    Response after searching 'name' in table
