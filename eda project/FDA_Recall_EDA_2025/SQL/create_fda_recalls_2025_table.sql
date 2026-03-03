

-- File: create_fda_recalls_2025_table.sql
-- Purpose: Create table for FDA recall events (2025)
-- Notes: recall number represents a recall event not a product ID

CREATE TABLE fda_recalls_2025 (
recalling_firm TEXT,
product_type TEXT,
status TEXT,
state TEXT,
recall_date DATE,
reason_for_recall TEXT,
product_description TEXT,
recall_number TEXT,
recall_class TEXT,
recall_month TEXT
);




