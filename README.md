# sql-challenge

#### Data Modeling

Inspect the CSVs and sketch out an ERD of the tables. Feel free to use a tool like [http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com).

#### Data Engineering

- Use the information you have to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.
- The schema should be saved in a file called `schema.sql`, which can be run once to create and populate all base tables in the database.

  - For the primary keys check to see if the column is unique, otherwise create a [composite key](https://en.wikipedia.org/wiki/Compound_key). Which takes two+ primary keys in order to uniquely identify a row. _Optional_: A helpful function you might look at is `md5()`, which will generate a unique hash for each combination of composite keys. [Check this out for more info](https://blog.getdbt.com/the-most-underutilized-function-in-sql/).
  - Be sure to create tables in the correct order to handle foreign keys.

- Import each CSV file into the corresponding SQL table. **Note** be sure to import the data in the same order that the tables were created and account for the headers when importing to avoid errors.

#### Data Analysis

Once you have a complete database, write a query to select the following information from the database.

Save the queries in a file called `queries.sql`:

1. Select the employee number, last name, first name, sex, and salary of all employees, ordered by employee number

2. Select the first name, last name, and hiring date for all employees hired in 1986

3. Select the department number, department name, employee number, last name, and first name of all managers of each department

4. Select the employee number, last name, first name, and department of each employee, ordered by employee number

5. Select first name, last name, birth date, and sex of all employees whose first name is "Hercules" and last name begins with a "B"

6. Select employee number, last name, first name, and department name of all employees in the Sales department, ordered by employee number

7. Select employee number, last name, first name, and department name of all employees in the 'Sales' OR the 'Development' department, ordered by employee number

8. Count the number of employees, grouped by last name

## Bonus (Optional)

As you examine the data, you are overcome with a creeping suspicion that the dataset is fake. You surmise that your boss handed you spurious data in order to test the data engineering skills of a new employee. To confirm your hunch, you decide to take the following steps to generate a visualization of the data, with which you will confront your boss:

1. Import the SQL database into Pandas. (Yes, you could read the CSVs directly in Pandas, but you are, after all, trying to prove your technical mettle.) This step may require some research. Install sqlalchemy library in your python environment and feel free to use the code below to get started. Be sure to make any necessary modifications for your username, password, host, port, and database name:

   ```sql
   from sqlalchemy import create_engine
   engine = create_engine('postgresql://localhost:5432/<your_db_name>')
   connection = engine.connect()
   ```

- Consult [SQLAlchemy documentation](https://docs.sqlalchemy.org/en/latest/core/engines.html#postgresql) for more information.

- If using a password, do not upload your password to your GitHub repository. See [https://www.youtube.com/watch?v=2uaTPmNvH0I](https://www.youtube.com/watch?v=2uaTPmNvH0I) and [https://help.github.com/en/github/using-git/ignoring-files](https://help.github.com/en/github/using-git/ignoring-files) for more information.

2. Create a histogram to visualize the most common salary ranges for employees.

3. Create a bar chart of average salary by title.