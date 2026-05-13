/*
===============================================================================
Stored Procedure: Load Bronze Layer (Source -> Bronze)
===============================================================================
Script Purpose:
    This stored procedure loads data into the 'bronze' schema from external CSV files. 
    It performs the following actions:
    - Truncates the bronze tables before loading data.
    - Uses the `COPY` command to load data from csv Files to bronze tables.

Parameters:
    None. 
	  This stored procedure does not accept any parameters or return any values.
===============================================================================
*/

TRUNCATE TABLE bronze.crm_cust_info;
COPY bronze.crm_cust_info
FROM '/Users/sahilkharat/Documents/Projects/Data_WareHouse_Project/sql-data-warehouse-project/datasets/source_crm/cust_info.csv'
DELIMITER ','
CSV HEADER;

-- SELECT COUNT(*) FROM bronze.crm_cust_info;


TRUNCATE TABLE bronze.crm_prd_info;
COPY bronze.crm_prd_info
FROM '/Users/sahilkharat/Documents/Projects/Data_WareHouse_Project/sql-data-warehouse-project/datasets/source_crm/prd_info.csv'
DELIMITER ','
CSV HEADER;

-- SELECT COUNT(*) FROM bronze.crm_prd_info;


TRUNCATE TABLE bronze.crm_sales_details;
COPY bronze.crm_sales_details
FROM '/Users/sahilkharat/Documents/Projects/Data_WareHouse_Project/sql-data-warehouse-project/datasets/source_crm/sales_details.csv'
DELIMITER ','
CSV HEADER;

-- SELECT COUNT(*) FROM bronze.crm_sales_details;


TRUNCATE TABLE bronze.erp_cust_az12;
COPY bronze.erp_cust_az12
FROM '/Users/sahilkharat/Documents/Projects/Data_WareHouse_Project/sql-data-warehouse-project/datasets/source_erp/CUST_AZ12.csv'
DELIMITER ','
CSV HEADER;

-- SELECT COUNT(*) FROM bronze.erp_cust_az12;


TRUNCATE TABLE bronze.erp_loc_a101;
COPY bronze.erp_loc_a101
FROM '/Users/sahilkharat/Documents/Projects/Data_WareHouse_Project/sql-data-warehouse-project/datasets/source_erp/LOC_A101.csv'
DELIMITER ','
CSV HEADER;

-- SELECT COUNT(*) FROM bronze.erp_loc_a101;


TRUNCATE TABLE bronze.erp_px_cat_g1v2;
COPY bronze.erp_px_cat_g1v2
FROM '/Users/sahilkharat/Documents/Projects/Data_WareHouse_Project/sql-data-warehouse-project/datasets/source_erp/PX_CAT_G1V2.csv'
DELIMITER ','
CSV HEADER;

-- SELECT COUNT(*) FROM bronze.erp_px_cat_g1v2;
