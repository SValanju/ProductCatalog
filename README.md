# ProductCatalog

A simple MVC web application built with .NET to demonstrate user authentication and display a catalog of products. After a successful login, users are redirected to a page showcasing a list of available products. The project focuses on user authentication, MVC pattern implementation, and basic data display.

## Setup Instructions

### 1. Update Connection String

The application requires a valid connection string to interact with your database. Please update the connection string in the `web.config` file:

1. Open `web.config` in the root of the project.
2. Locate the `<connectionStrings>` section.
3. Update the connection string pointing to your database.

Example:
```xml
<connectionStrings>
	<add name="connString" connectionString="Data Source={SERVER_NAME};Initial Catalog={DATABASE_NAME};User Id={USERNAME};Password={PASSWORD};Connection Timeout=60;Encrypt=false;" providerName="System.Data.SqlClient" />
</connectionStrings>
```

### 2. Setup DB

To set up the database and required tables, navigate to the SQL folder in the repository. Inside, you will find SQL scripts to create the necessary database schema and sample data. Execute these queries on your SQL server.

### 3. Running the application

1. Build and run the project in Visual Studio or using the .NET CLI.
2. Navigate to the login page, provide valid credentials (as set up in the database), and successfully log in.
3. Upon successful authentication, you will be redirected to the products listing page.
