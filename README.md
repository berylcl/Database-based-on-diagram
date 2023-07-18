# Database-based-on-diagram
<a name="readme-top"></a>
<div align="center">

  <h3><b># Database-based-on-diagram</b></h3>

</div>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
- [👤 Author](#author)
- - [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)


# 📖  Vet Clinic <a name="about-project"></a>

**Database-based-on-diagram** This repository contains an SQL script that creates a database schema based on the provided diagram. The schema consists of several tables representing the relationships between patients, medical histories, invoices, invoice items, and treatments.
## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

## Key Features

- **Patient Management**: The schema includes a `patients` table to store patient information, allowing for easy management and retrieval of patient data.
- **Medical Histories**: The `medical_histories` table maintains records of patient medical histories, including admission timestamps, status, and a one-to-many relationship with patients.
- **Invoice Generation**: The `invoices` table facilitates invoice generation with fields for total amount, generation timestamps, payment timestamps, and a one-to-one relationship with medical histories.
- **Itemized Invoices**: The `invoice_items` table allows for itemization of invoices, including unit prices, quantities, and total prices, with a one-to-many relationship with invoices and treatments.
- **Treatment Tracking**: The `treatments` table tracks various treatments, including their type, name, and a one-to-many relationship with invoice items.
- **Many-to-Many Relationship**: The `medical_history_treatments` table represents the many-to-many relationship between medical histories and treatments, allowing for efficient tracking and association.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>
To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- An IDE e.g [Visual studio code](https://code.visualstudio.com/).
- [PostgresSQL](https://www.postgresql.org/)
- [A terminal](https://code.visualstudio.com/docs/terminal/basics).

### Setup

Clone this repository to your desired folder:

```
  git clone https://github.com/berylcl/Database-based-on-diagram.git
```

- Navigate to the location of the folder in your machine:

you@your-Pc-name:~$ cd Database-based-on-diagram
## Usage

To create the database schema, follow these steps:

1. Ensure that you have a compatible database management system (DBMS) installed, such as MySQL or PostgreSQL.
2. Execute the SQL script `schema_based_on_diagram.sql` against your database using a compatible client or command-line tool.
3. The script will create all the necessary tables, define primary keys, foreign keys, and indexes.
4. Adjust the data types and lengths of VARCHAR and DECIMAL columns as needed to fit your requirements.
5. Once the script has executed successfully, the database schema will be ready for use.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👤 Author <a name="author"></a>

👤 **Gakii Beryl**

- GitHub: [@berylcl] (https://github.com/berylcl)
- Twitter: [omg_its_beryl](https://twitter.com/omg_its_beryl)
- LinkedIn: [gakii](https://www.linkedin.com/in/gakii-beryl-305391180/)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Add More Data**
- [ ] **Make the details more graphical(Like Barchart or Histogram)**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

If you like this project please give it a Start ⭐️.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>
- Project from [Microverse](https://www.microverse.org/) Ruby, Databases & Interviewing Module.
- Thanks to the Microverse team for the great curriculum.
- Thanks to the Code Reviewer(s) for the insightful feedbacks.
- A great thanks to My coding partner(s), morning session team, and standup team for their contributions.
- Hat tip to anyone whose code was used.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ❓ FAQ <a name="faq"></a>

- **Can I Fork it and Imporove on it**

  - Yes, You can, feel free.

- **Can I improve the repository, and my changes will be accepted if they are good?**

  - Yes please, nice ideas are welcome, please.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
## Note

- It's important to review and modify the script as per your specific needs before executing it.
- Make sure to have appropriate access rights and permissions to create tables and define foreign key constraints in your database.
- The script assumes that the necessary database and user accounts have been created separately. Adjust the database connection details accordingly before running the script.

Please refer to your DBMS documentation for instructions on executing SQL scripts and managing databases.

## 📝 License <a name="license"></a>

This project is [GNU](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>