# Village Pandesal Order Management System

**Course:** APPDEV LEC/LAB PRELIM EXAM
**Student Name:** David Hans Lancelotte M. Molina
**Section:** UCOS 3-1
**Student Number:** 21-1-05685

## Project Description
This repository contains the database schema and queries for the Village Pandesal Order Management System. This system is designed to manage a village-based bakery business, keeping track of neighborhood customers, daily bread orders, product pricing, and delivery statuses to ensure smooth morning operations.

## Repository Structure
This project is divided into three SQL files:

* `01_create_tables.sql`: Contains the DDL (Data Definition Language) commands to create the 5 relational tables (`Customers`, `Products`, `Orders`, `OrderDetails`, `Deliveries`) with appropriate primary keys, foreign keys, and constraints (NOT NULL, UNIQUE).
* `02_insert_bakery_records.sql`: Contains the DML (Data Manipulation Language) commands to populate the database with sample business records.
* `03_queries_where_join_groupby.sql`: Contains the specific SQL queries demonstrating the use of `WHERE`, `JOIN`, `GROUP BY`, and aggregate functions for the exam requirements.

## Data Model
The Entity-Relationship Diagram (ERD) for this database was designed using [dbdiagram.io](https://dbdiagram.io/d). It features one-to-many relationships (Customers to Orders, Orders to OrderDetails) and a one-to-one relationship (Orders to Deliveries).
