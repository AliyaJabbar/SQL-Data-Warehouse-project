
---

# 🏗️ SQL Data Warehouse Project — End-to-End ETL (Bronze | Silver | Gold)

 **Hii, Welcome . Let's Dive into  Data Warehouse & Analytics Project 🚀** 

### 📘 Overview

This project demonstrates the design and implementation of a **modern Data Warehouse** using the **Bronze–Silver–Gold architecture**.
It showcases how raw operational data from CRM and ERP systems is ingested, transformed, validated, and made analytics-ready.

---

## 🗂️ Project Structure

```
📦 data-warehouse-project
 ┣ 📁 docs
 ┃ ┣ 📄 datawarehouse.drawio.png
 ┃ ┣ 📄 crm_erp_integration_model.drawio.png
 ┃ ┣ 📄 dataflow_org.jpg
 ┃ ┗ 📄 integration_model.drawio.pdf
 ┣ 📁 scripts
 ┃ ┣ 📁 bronze
 ┃ ┃ ┣ 📄 ddl_bronze.sql
 ┃ ┃ ┗ 📄 proc_load_bronze.sql
 ┃ ┣ 📁 Silver
 ┃ ┃ ┣ 📄 ddl_silver.sql
 ┃ ┃ ┗ 📄 Proc_load_Silver.sql
 ┃ ┣ 📁 gold
 ┃ ┃ ┣ 📄 ddl_Gold.sql
 ┃ ┃ ┗ 📄 init_database.sql
 ┣ 📁 tests
 ┃ ┣ 📁 quality_checks_gold
 ┃ ┗ 📄 quality_checks_silver.sql
 ┣ 📄 LICENSE-MIT
 ┗ 📄 README.md
```

---

## 🧩 Architecture Overview

### 🔹 **Bronze Layer**

* Raw data ingestion layer from CRM & ERP CSV sources.
* Data stored as-is, maintaining source structure.
* Uses `ddl_bronze.sql` and `proc_load_bronze.sql` for DDL creation and loading via `BULK INSERT`.

### 🔹 **Silver Layer**

* Performs **data cleaning**, **standardization**, and **validation**.
* Combines multiple sources for consistency (CRM & ERP).
* Scripts:

  * `ddl_silver.sql` — defines Silver schema tables.
  * `Proc_load_Silver.sql` — applies transformations and loads cleansed data.
  * `quality_checks_silver.sql` — ensures data validity and consistency.

### 🔹 **Gold Layer**

* The **analytics-ready layer** for business users.
* Builds **Dimension** and **Fact** views using Star Schema design.
* Scripts:

  * `ddl_Gold.sql` — defines final dimensional model.
  * `init_database.sql` — initializes Gold schema.
  * `quality_checks_gold` — validates model relationships.

---

## 🧠 Data Flow Diagram

![Data Flow Diagram](
https://github.com/AliyaJabbar/SQL-Data-Warehouse-project/blob/main/docs/dataflow_org.jpg)

---

## 🌐 Data Warehouse Overview

![Data Warehouse Overview](https://github.com/AliyaJabbar/SQL-Data-Warehouse-project/blob/main/docs/Datawarehouse.drawio.png 
)

---

## 🔄 CRM–ERP Integration Model

![CRM–ERP Integration Model](https://github.com/AliyaJabbar/SQL-Data-Warehouse-project/blob/main/docs/crm_erp%20integration.drawio.png 
)

---

## ⚙️ ETL Process Flow

| Layer              | Script                                             | Description                                        |
| ------------------ | -------------------------------------------------- | -------------------------------------------------- |
| **Bronze**         | `proc_load_bronze.sql`                             | Ingests raw CSV data from CRM & ERP.               |
| **Silver**         | `Proc_load_Silver.sql`                             | Cleans, validates, and standardizes data.          |
| **Gold**           | `ddl_Gold.sql`                                     | Builds star schema for reporting.                  |
| **Quality Checks** | `quality_checks_silver.sql`, `quality_checks_gold` | Validates data accuracy and referential integrity. |

---

## ✅ Quality Checks Summary

### 🧾 **Silver Layer**

* Duplicate or NULL key detection
* Invalid date formats
* Standardization of categorical fields
* Validation: `sales = quantity × price`

### 🧾 **Gold Layer**

* Unique surrogate keys
* Referential integrity between dimensions and fact tables
* Data completeness verification

---

## 🛠️ Tools & Technologies

* **SQL Server (T-SQL)**
* **ETL Data Pipeline Design**
* **Data Quality Framework**
* **Draw.io** (for architecture diagrams)
* **GitHub** (for version control)
* **Power BI** (optional for visualization)

---

## 📊 Key Highlights

* Complete **end-to-end ETL pipeline** implementation.
* **Error handling** and **logging** within stored procedures.
* Quality assurance through systematic validation scripts.
* **Star Schema** design for analytics and reporting.

---




---

## 📜 License

This project is licensed under the **MIT License** — see `LICENSE-MIT` for details.


