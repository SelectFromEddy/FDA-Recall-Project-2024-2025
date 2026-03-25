

-- Create table for FDA recall events (2025)



CREATE TABLE fda_recalls (
recalling_firm NVARCHAR(100),
product_id NVARCHAR(MAX),
status NVARCHAR(50),
recall_state NVARCHAR(50),
recall_date DATE,
reason_for_recall NVARCHAR(MAX),
product_description NVARCHAR(MAX),
recall_id INT ,
recall_class NVARCHAR(50),
recall_month NVARCHAR(50) 
);
