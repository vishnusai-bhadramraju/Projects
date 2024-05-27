CREATE TABLE IF NOT EXISTS receipts
(
    receipt_id varchar primary key,
    user_id varchar,
    create_date varchar,
    date_scanned varchar,
    finished_date varchar,
    points_awarded_date varchar,
    points_earned double precision,
    purchase_date varchar,
    purchased_item_count integer,
    rewards_receipt_status varchar,
    total_spent double precision
);

CREATE TABLE IF NOT EXISTS receipt_items
(
    receipt_id varchar,
    barcode varchar,
    description text ,
    final_price double precision,
    item_price double precision,
    quantity_purchased integer,
    points_earned double precision,
    points_not_awarded_reason text,
    rewards_group text,
    rewards_product_partner_id varchar,
    CONSTRAINT receipt_items_receipt_id_fkey FOREIGN KEY (receipt_id)
        REFERENCES receipts (receipt_id) MATCH SIMPLE
);
CREATE TABLE IF NOT EXISTS users
(
    user_id varchar primary key,
    active varchar,
    created_date varchar,
    last_login varchar,
    role varchar,
    signup_source varchar,
    state varchar
);

CREATE TABLE IF NOT EXISTS brands
(
    barcode varchar,
    category varchar,
    category_code varchar,
    brand_name varchar,
    top_brand varchar,
    brand_id varchar,
    cpg_id varchar,
    cpgref varchar,
    brand_code varchar,
    CONSTRAINT brands_pkey PRIMARY KEY (brand_id)
);

