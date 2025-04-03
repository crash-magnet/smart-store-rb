CREATE TABLE IF NOT EXISTS customer (
    customer_id INTEGER PRIMARY KEY,
    name TEXT,
    region TEXT,
    join_date TEXT,
    LoyaltyPoints INTEGER,
    PreferredContactMethod TEXT
);

CREATE TABLE IF NOT EXISTS product (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT,
    category TEXT,
    unitprice INTEGER,
    stockquantity INTEGER,
    subcategory TEXT
);

CREATE TABLE IF NOT EXISTS sale (
    sale_id INTEGER PRIMARY KEY,
    sale_date TEXT,
    customer_id INTEGER,
    product_id INTEGER,
    StoreID INTEGER,
    CampaignID INTEGER,
    sale_amount REAL,
    DiscountPercent INTEGER,
    PaymentType TEXT,
    FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
    FOREIGN KEY (product_id) REFERENCES product (product_id)
);
