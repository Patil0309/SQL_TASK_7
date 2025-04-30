
select * from stocks

select * from user_account

select * from exchange

select * from daily_price

select * from company_profiles  
----------------------------------------------------------------------------
CREATE TABLE exchange (
    exchange_id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    mic_code VARCHAR(20) UNIQUE NOT NULL,
    country VARCHAR(255)
);

INSERT INTO exchange (exchange_id, name, mic_code, country) VALUES
(1, 'New York Stock Exchange', 'NYSE', 'USA'),
(2, 'NASDAQ', 'NASDAQ', 'USA'),
(3, 'London Stock Exchange', 'LSE', 'United Kingdom'),
(4, 'Tokyo Stock Exchange', 'TSE', 'Japan'),
(5, 'Shanghai Stock Exchange', 'SSE', 'China'),
(6, 'Hong Kong Stock Exchange', 'HKEX', 'Hong Kong'),
(7, 'Euronext Amsterdam', 'ENAM', 'Netherlands'),
(8, 'Deutsche Börse Xetra', 'XETR', 'Germany'),
(9, 'Toronto Stock Exchange', 'TSX', 'Canada'),
(10, 'Bombay Stock Exchange', 'BSE', 'India'),
(11, 'National Stock Exchange of India', 'NSE', 'India'),
(12, 'SIX Swiss Exchange', 'SIX', 'Switzerland'),
(13, 'Australian Securities Exchange', 'ASX', 'Australia'),
(14, 'Korea Exchange', 'KRX', 'South Korea'),
(15, 'Taiwan Stock Exchange', 'TWSE', 'Taiwan'),
(16, 'Brazil Stock Exchange (B3)', 'B3SA', 'Brazil'),
(17, 'Mexico Stock Exchange', 'BMV', 'Mexico'),
(18, 'Johannesburg Stock Exchange', 'JSE', 'South Africa'),
(19, 'Moscow Exchange', 'MOEX', 'Russia'),
(20, 'Singapore Exchange', 'SGX', 'Singapore'),
(21, 'Cboe Global Markets', 'CBOE', 'USA'),
(22, 'BATS Global Markets', 'BATS', 'USA'),
(23, 'IEX Exchange', 'IEX', 'USA'),
(24, 'New Zealand Exchange', 'NZX', 'New Zealand'),
(25, 'Oslo Stock Exchange', 'OSE', 'Norway'),
(26, 'Copenhagen Stock Exchange', 'CSE', 'Denmark'),
(27, 'Stockholm Stock Exchange', 'STO', 'Sweden'),
(28, 'Helsinki Stock Exchange', 'HEL', 'Finland'),
(29, 'Irish Stock Exchange', 'ISE', 'Ireland'),
(30, 'Athens Stock Exchange', 'ASE', 'Greece'),
(31, 'Vienna Stock Exchange', 'WBAG', 'Austria'),
(32, 'Warsaw Stock Exchange', 'WSE', 'Poland'),
(33, 'Budapest Stock Exchange', 'BUSE', 'Hungary'),
(34, 'Prague Stock Exchange', 'PSE', 'Czech Republic'),
(35, 'Bucharest Stock Exchange', 'BVB', 'Romania'),
(36, 'Zagreb Stock Exchange', 'ZSE', 'Croatia'),
(37, 'Ljubljana Stock Exchange', 'LJSE', 'Slovenia'),
(38, 'Bratislava Stock Exchange', 'BSSE', 'Slovakia'),
(39, 'Vilnius Stock Exchange', 'VSE', 'Lithuania'),
(40, 'Riga Stock Exchange', 'RSE', 'Latvia'),
(41, 'Tallinn Stock Exchange', 'TALSE', 'Estonia'),
(42, 'Iceland Stock Exchange', 'ICE', 'Iceland'),
(43, 'Santiago Stock Exchange', 'SNSE', 'Chile'),
(44, 'Colombia Stock Exchange', 'BVC', 'Colombia'),
(45, 'Lima Stock Exchange', 'BVL', 'Peru'),
(46, 'Buenos Aires Stock Exchange', 'BCBA', 'Argentina'),
(47, 'Lisbon Stock Exchange', 'ELIS', 'Portugal'),
(48, 'Istanbul Stock Exchange', 'BIST', 'Turkey'),
(49, 'Tel Aviv Stock Exchange', 'TASE', 'Israel'),
(50, 'Shanghai Stock Exchange', 'SSE', 'China');
-------------------------------------------------------------------------------------------------
CREATE TABLE stocks (
    stock_id SERIAL PRIMARY KEY,
    exchange_id INTEGER,
    company_name VARCHAR(255),
    sector_type VARCHAR(255),
    ipo_date DATE,
    FOREIGN KEY (exchange_id) REFERENCES exchange(exchange_id)
);

INSERT INTO stocks (exchange_id, company_name, sector_type, ipo_date) VALUES
(1, 'Apple Inc.', 'Technology', '1980-12-12'),
(2, 'Microsoft Corporation', 'Technology', '1986-03-13'),
(3, 'Amazon.com Inc.', 'Technology', '1997-05-15'),
(4, 'Toyota Motor Corporation', 'Automotive', '1935-08-28'),
(5, 'Sony Group Corporation', 'Consumer Electronics', '1958-05-07'),
(6, 'Samsung Electronics Co. Ltd.', 'Consumer Electronics', '1969-01-13'),
(7, 'Royal Dutch Shell plc', 'Energy', '1907-02-12'),
(8, 'Volkswagen AG', 'Automotive', '1937-05-28'),
(9, 'Nestlé S.A.', 'Food Processing', '1866-08-29'),
(10, 'Novartis AG', 'Pharmaceuticals', '1996-04-16'),
(11, 'Reliance Industries Limited', 'Conglomerate', '1977-05-08'),
(12, 'Tata Consultancy Services Limited', 'Information Technology', '2004-08-25'),
(13, 'HDFC Bank Limited', 'Financial Services', '1995-05-01'),
(14, 'Infosys Limited', 'Information Technology', '1993-06-14'),
(15, 'ICICI Bank Limited', 'Financial Services', '1994-01-05'),
(16, 'Banco Bradesco S.A.', 'Financials', '1943-03-10'),
(17, 'Petróleo Brasileiro S.A. - Petrobras', 'Energy', '1953-10-03'),
(18, 'Vale S.A.', 'Materials', '1942-06-01'),
(19, 'Grupo México, S.A.B. de C.V.', 'Materials', '1966-08-10'),
(20, 'América Móvil, S.A.B. de C.V.', 'Telecommunications', '1990-09-25'),
(21, 'Johnson & Johnson', 'Healthcare', '1944-09-12'),
(22, 'Procter & Gamble Company', 'Consumer Staples', '1890-05-02'),
(23, 'Coca-Cola Company', 'Consumer Staples', '1919-09-05'),
(24, 'PepsiCo, Inc.', 'Consumer Staples', '1965-01-22'),
(25, 'McDonald''s Corporation', 'Consumer Discretionary', '1965-04-21'),
(26, 'Starbucks Corporation', 'Consumer Discretionary', '1992-06-26'),
(27, 'Nike, Inc.', 'Consumer Discretionary', '1980-12-02'),
(28, 'The Home Depot, Inc.', 'Consumer Discretionary', '1981-09-22'),
(29, 'Lowe''s Companies, Inc.', 'Consumer Discretionary', '1961-10-10'),
(30, 'Ford Motor Company', 'Automotive', '1956-01-17'),
(31, 'General Motors Company', 'Automotive', '1916-10-13'),
(32, 'BMW AG', 'Automotive', '1918-10-07'),
(33, 'Daimler AG', 'Automotive', '1913-02-05'),
(34, 'Renault S.A.', 'Automotive', '1946-01-01'),
(35, 'Nissan Motor Co., Ltd.', 'Automotive', '1951-07-06'),
(36, 'Honda Motor Co., Ltd.', 'Automotive', '1953-09-25'),
(37, 'Hyundai Motor Company', 'Automotive', '1974-06-28'),
(38, 'Kia Corporation', 'Automotive', '1999-07-02'),
(39, 'Ferrari N.V.', 'Automotive', '2015-10-21'),
(40, 'Tesla, Inc.', 'Automotive', '2010-06-29'),
(41, 'Exxon Mobil Corporation', 'Energy', '1882-08-05'),
(42, 'Chevron Corporation', 'Energy', '1947-07-01'),
(43, 'BP plc', 'Energy', '1909-04-29'),
(44, 'TotalEnergies SE', 'Energy', '1992-06-22'),
(45, 'Royal Dutch Shell plc', 'Energy', '1907-02-12'),
(46, 'Saudi Arabian Oil Co. (Saudi Aramco)', 'Energy', '2019-12-11'),
(47, 'BHP Group Limited', 'Materials', '1885-07-16'),
(48, 'Rio Tinto Group', 'Materials', '1962-01-01'),
(49, 'Glencore plc', 'Materials', '2011-05-19'),
(50, 'Anglo American plc', 'Materials', '1917-09-25');
---------------------------------------------------------------------------------------
CREATE TABLE user_account (
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(255),
    mob_no NUMERIC,
    email VARCHAR(255) UNIQUE,
    stock_id INTEGER,
    FOREIGN KEY (stock_id) REFERENCES stocks(stock_id)
);

INSERT INTO user_account (user_name, mob_no, email, stock_id) VALUES
('Alice Smith', 9876543210, 'alice.smith@example.com', 1),
('Bob Johnson', 8765432109, 'bob.johnson@example.net', 2),
('Charlie Brown', 7654321098, 'charlie.brown@example.org', 3),
('Diana Miller', 6543210987, 'diana.miller@example.com', 4),
('Ethan Davis', 5432109876, 'ethan.davis@example.net', 5),
('Fiona Wilson', 4321098765, 'fiona.wilson@example.org', 6),
('George Garcia', 3210987654, 'george.garcia@example.com', 7),
('Hannah Rodriguez', 2109876543, 'hannah.rodriguez@example.net', 8),
('Isaac Williams', 1098765432, 'isaac.williams@example.org', 9),
('Jessica Brown', 9876543211, 'jessica.brown@example.com', 10),
('Kevin Davis', 8765432110, 'kevin.davis@example.net', 11),
('Laura Miller', 7654321109, 'laura.miller@example.org', 12),
('Michael Wilson', 6543211098, 'michael.wilson@example.com', 13),
('Nancy Garcia', 5432110987, 'nancy.garcia@example.net', 14),
('Oliver Rodriguez', 4321109876, 'oliver.rodriguez@example.org', 15),
('Patricia Williams', 3211098765, 'patricia.williams@example.com', 16),
('Quincy Brown', 2110987654, 'quincy.brown@example.net', 17),
('Rachel Davis', 1109876543, 'rachel.davis@example.org', 18),
('Samuel Miller', 9876543212, 'samuel.miller@example.com', 19),
('Tiffany Wilson', 8765432111, 'tiffany.wilson@example.net', 20),
('Victor Garcia', 7654321110, 'victor.garcia@example.org', 21),
('Wendy Rodriguez', 6543211109, 'wendy.rodriguez@example.com', 22),
('Xavier Williams', 5432111098, 'xavier.williams@example.net', 23),
('Yolanda Brown', 4321110987, 'yolanda.brown@example.org', 24),
('Zachary Davis', 3211109876, 'zachary.davis@example.com', 25),
('Aaliyah Miller', 2111098765, 'aaliyah.miller@example.net', 26),
('Benjamin Wilson', 1110987654, 'benjamin.wilson@example.org', 27),
('Catherine Garcia', 9876543213, 'catherine.garcia@example.com', 28),
('Daniel Rodriguez', 8765432112, 'daniel.rodriguez@example.net', 29),
('Eleanor Williams', 7654321111, 'eleanor.williams@example.org', 30),
('Franklin Brown', 6543211110, 'franklin.brown@example.com', 31),
('Grace Davis', 5432111109, 'grace.davis@example.net', 32),
('Henry Miller', 4321111098, 'henry.miller@example.org', 33),
('Isabella Wilson', 3211111097, 'isabella.wilson@example.com', 34),
('Jack Garcia', 2111111096, 'jack.garcia@example.net', 35),
('Katherine Rodriguez', 1111111095, 'katherine.rodriguez@example.org', 36),
('Liam Williams', 9876543214, 'liam.williams@example.com', 37),
('Mia Brown', 8765432113, 'mia.brown@example.net', 38),
('Noah Davis', 7654321112, 'noah.davis@example.org', 39),
('Olivia Miller', 6543211111, 'olivia.miller@example.com', 40),
('Penelope Wilson', 5432111110, 'penelope.wilson@example.net', 41),
('Quentin Garcia', 4321111109, 'quentin.garcia@example.org', 42),
('Rose Rodriguez', 3211111108, 'rose.rodriguez@example.com', 43),
('Theodore Williams', 2111111107, 'theodore.williams@example.net', 44),
('Ursula Brown', 1111111106, 'ursula.brown@example.org', 45),
('Vincent Davis', 9876543215, 'vincent.davis@example.com', 46),
('Willow Miller', 8765432114, 'willow.miller@example.net', 47),
('Xander Wilson', 7654321113, 'xander.wilson@example.org', 48),
('Yasmine Garcia', 6543211112, 'yasmine.garcia@example.com', 49),
('Zane Rodriguez', 5432111111, 'zane.rodriguez@example.net', 50);
-----------------------------------------------------------------------------------------------------------------------------
CREATE TABLE daily_price (
    date DATE,
    stock_id INTEGER,
    open_price DECIMAL,
    high_price DECIMAL,
    low_price DECIMAL,
    close_price DECIMAL,
    volume BIGINT,
    PRIMARY KEY (date, stock_id),
    FOREIGN KEY (stock_id) REFERENCES stocks(stock_id)
);
INSERT INTO daily_price (date, stock_id, open_price, high_price, low_price, close_price, volume) VALUES
('2024-01-01', 1, 150.25, 151.75, 149.50, 151.00, 1000000),
('2024-01-02', 1, 151.00, 152.50, 150.75, 152.25, 1200000),
('2024-01-03', 1, 152.25, 153.00, 151.50, 152.75, 1100000),
('2024-01-04', 1, 152.75, 154.00, 152.00, 153.50, 1300000),
('2024-01-05', 1, 153.50, 154.25, 153.00, 154.00, 1250000),
('2024-01-01', 2, 275.50, 277.00, 274.00, 276.50, 800000),
('2024-01-02', 2, 276.50, 278.00, 275.50, 277.25, 900000),
('2024-01-03', 2, 277.25, 279.00, 276.75, 278.50, 850000),
('2024-01-04', 2, 278.50, 280.00, 278.00, 279.25, 950000),
('2024-01-05', 2, 279.25, 280.50, 279.00, 280.00, 925000),
('2024-01-01', 3, 3300.00, 3320.00, 3280.00, 3310.00, 500000),
('2024-01-02', 3, 3310.00, 3330.00, 3300.00, 3320.00, 600000),
('2024-01-03', 3, 3320.00, 3340.00, 3310.00, 3325.00, 550000),
('2024-01-04', 3, 3325.00, 3350.00, 3320.00, 3340.00, 650000),
('2024-01-05', 3, 3340.00, 3355.00, 3335.00, 3350.00, 625000),
('2024-01-01', 4, 175.00, 176.50, 174.00, 176.00, 700000),
('2024-01-02', 4, 176.00, 177.00, 175.50, 176.75, 750000),
('2024-01-03', 4, 176.75, 178.00, 176.25, 177.25, 725000),
('2024-01-04', 4, 177.25, 178.50, 177.00, 178.00, 800000),
('2024-01-05', 4, 178.00, 179.00, 177.75, 178.50, 775000),
('2024-01-01', 5, 60.00, 61.00, 59.50, 60.50, 1500000),
('2024-01-02', 5, 60.50, 61.50, 60.25, 61.00, 1600000),
('2024-01-03', 5, 61.00, 62.00, 60.75, 61.25, 1550000),
('2024-01-04', 5, 61.25, 62.50, 61.00, 62.00, 1700000),
('2024-01-05', 5, 62.00, 63.00, 61.75, 62.50, 1650000),
('2024-01-01', 6, 80.00, 81.00, 79.50, 80.50, 1100000),
('2024-01-02', 6, 80.50, 81.50, 80.25, 81.00, 1200000),
('2024-01-03', 6, 81.00, 82.00, 80.75, 81.50, 1150000),
('2024-01-04', 6, 81.50, 82.50, 81.00, 82.00, 1300000),
('2024-01-05', 6, 82.00, 83.00, 81.75, 82.50, 1250000),
('2024-01-01', 7, 50.00, 51.00, 49.50, 50.50, 900000),
('2024-01-02', 7, 50.50, 51.50, 50.25, 51.00, 1000000),
('2024-01-03', 7, 51.00, 52.00, 50.75, 51.25, 950000),
('2024-01-04', 7, 51.25, 52.50, 51.00, 52.00, 1100000),
('2024-01-05', 7, 52.00, 53.00, 51.75, 52.50, 1050000),
('2024-01-01', 8, 120.00, 121.50, 119.00, 121.00, 850000),
('2024-01-02', 8, 121.00, 122.00, 120.50, 121.75, 900000),
('2024-01-03', 8, 121.75, 123.00, 121.25, 122.50, 875000),
('2024-01-04', 8, 122.50, 123.50, 122.00, 123.00, 950000),
('2024-01-05', 8, 123.00, 124.00, 122.75, 123.50, 925000),
('2024-01-01', 9, 140.00, 141.50, 139.00, 141.00, 600000),
('2024-01-02', 9, 141.00, 142.00, 140.50, 141.75, 650000),
('2024-01-03', 9, 141.75, 143.00, 141.25, 142.50, 625000),
('2024-01-04', 9, 142.50, 143.50, 142.00, 143.00, 700000),
('2024-01-05', 9, 143.00, 144.00, 142.75, 143.50, 675000),
('2024-01-01', 10, 200.00, 202.00, 199.00, 201.50, 1050000),
('2024-01-02', 10, 201.50, 203.00, 200.50, 202.25, 1150000),
('2024-01-03', 10, 202.25, 204.00, 201.75, 203.00, 1100000),
('2024-01-04', 10, 203.00, 204.50, 202.50, 203.75, 1200000),
('2024-01-05', 10, 203.75, 205.00, 203.25, 204.50, 1175000);

-----------------------------------------------------------------------------------------------------------
CREATE TABLE company_profiles (
    stock_id INTEGER PRIMARY KEY REFERENCES stocks(stock_id),
    description TEXT,
    ceo VARCHAR(255),
    employees INTEGER,
    website VARCHAR(255)
);
INSERT INTO company_profiles (stock_id, description, ceo, employees, website) VALUES
(1, 'Company A Description', 'John Smith', 1000, 'www.companya.com'),
(2, 'Company B Description', 'Jane Doe', 2500, 'www.companyb.com'),
(3, 'Company C Description', 'Robert Jones', 1200, 'www.companyc.com'),
(4, 'Company D Description', 'Mary Brown', 3000, 'www.companyd.com'),
(5, 'Company E Description', 'Michael Davis', 1500, 'www.companye.com'),
(6, 'Company F Description', 'Jennifer Wilson', 4000, 'www.companyf.com'),
(7, 'Company G Description', 'David Garcia', 1800, 'www.companyg.com'),
(8, 'Company H Description', 'Linda Rodriguez', 2200, 'www.companyh.com'),
(9, 'Company I Description', 'Christopher Williams', 2800, 'www.companyi.com'),
(10, 'Company J Description', 'Angela Brown', 3500, 'www.companyj.com'),
(11, 'Company K Description', 'Brian Davis', 1100, 'www.companyk.com'),
(12, 'Company L Description', 'Nicole Miller', 2600, 'www.companyl.com'),
(13, 'Company M Description', 'Kevin Wilson', 1300, 'www.companym.com'),
(14, 'Company N Description', 'Stephanie Garcia', 3100, 'www.companyn.com'),
(15, 'Company O Description', 'Timothy Rodriguez', 1600, 'www.companyo.com'),
(16, 'Company P Description', 'Michelle Williams', 4100, 'www.companyp.com'),
(17, 'Company Q Description', 'Eric Brown', 1900, 'www.companyq.com'),
(18, 'Company R Description', 'Jessica Davis', 2300, 'www.companyr.com'),
(19, 'Company S Description', 'Jason Miller', 2900, 'www.companys.com'),
(20, 'Company T Description', 'Melissa Garcia', 3600, 'www.companyt.com'),
(21, 'Company U Description', 'Ryan Rodriguez', 1200, 'www.companyu.com'),
(22, 'Company V Description', 'Kimberly Williams', 2700, 'www.companyv.com'),
(23, 'Company W Description', 'Brandon Brown', 1400, 'www.companyw.com'),
(24, 'Company X Description', 'Ashley Davis', 3200, 'www.companyx.com'),
(25, 'Company Y Description', 'Justin Miller', 1700, 'www.companyy.com'),
(26, 'Company Z Description', 'Sarah Garcia', 4200, 'www.companyz.com'),
(27, 'Company AA Description', 'Adam Rodriguez', 2000, 'www.companyaa.com'),
(28, 'Company BB Description', 'Rachel Williams', 2400, 'www.companybb.com'),
(29, 'Company CC Description', 'Andrew Brown', 3000, 'www.companycc.com'),
(30, 'Company DD Description', 'Nicole Davis', 3700, 'www.companydd.com'),
(31, 'Company EE Description', 'Ethan Miller', 1350, 'www.companyee.com'),
(32, 'Company FF Description', 'Olivia Garcia', 3150, 'www.companyff.com'),
(33, 'Company GG Description', 'Jacob Rodriguez', 1650, 'www.companygg.com'),
(34, 'Company HH Description', 'Sophia Williams', 4150, 'www.companyhh.com'),
(35, 'Company II Description', 'Joshua Brown', 1950, 'www.companyii.com'),
(36, 'Company JJ Description', 'Emily Davis', 2350, 'www.companyjj.com'),
(37, 'Company KK Description', 'Daniel Miller', 2950, 'www.companykk.com'),
(38, 'Company LL Description', 'Madison Garcia', 3650, 'www.companyll.com'),
(39, 'Company MM Description', 'David Rodriguez', 1250, 'www.companymm.com'),
(40, 'Company NN Description', 'Hannah Williams', 2750, 'www.companynn.com'),
(41, 'Company OO Description', 'Christopher Brown', 1450, 'www.companyoo.com'),
(42, 'Company PP Description', 'Angela Davis', 3250, 'www.companypp.com'),
(43, 'Company QQ Description', 'Ryan Miller', 1750, 'www.companyqq.com'),
(44, 'Company RR Description', 'Kimberly Garcia', 4250, 'www.companyrr.com'),
(45, 'Company SS Description', 'Brandon Rodriguez', 2050, 'www.companys.com'),
(46, 'Company TT Description', 'Ashley Williams', 2450, 'www.companytt.com'),
(47, 'Company UU Description', 'Justin Brown', 3050, 'www.companyuu.com'),
(48, 'Company VV Description', 'Sarah Davis', 3750, 'www.companyvv.com'),
(49, 'Company WW Description', 'Adam Miller', 1400, 'www.companyww.com'),
(50, 'Company XX Description', 'Rachel Garcia', 2800, 'www.companyxx.com');
-
SELECT 
    ua.user_name,
    ua.email_id,
    s.company_name,
    s.sector_type
FROM 
    user_account ua
INNER JOIN 
    stocks s ON ua.user_id = s.user_id;
	
select * from stocks

select * from user_account

select * from exchange

select * from daily_price

select * from company_profiles  
----------------------------------------------------------------------------------------------------

--1]apply inner join on table user_account and stock to get require output
SELECT
  ua.user_name,
  ua.email,
  s.company_name,
  s.sector_type
FROM
  user_account AS ua
INNER JOIN
  stocks AS s ON ua.stock_id = s.stock_id;

2]--Applying left join on stock wrt daily_price table and also get differecne between high_price and ipo_price
SELECT
    s.*,
    dp.high_price,
    (dp.high_price - s.ipo_price) AS price_difference 
FROM
    stocks s 
LEFT JOIN
    daily_price dp ON s.stock_id = dp.stock_id;

--3]Update query to change country name from USA to united state of america
update exchange set country ='United state of America' where country='USA'

--4]View on daily price

select * from price_view

CREATE VIEW price_view_ AS
SELECT
  dp.open_price,
  dp.low_price,
  dp.high_price,
  dp.close_price,
  s.company_name
FROM
  daily_price AS dp
INNER JOIN
  stocks AS s ON s.stock_id = dp.stock_id;

--5]to rename the name of colums of table company profile use alter
ALTER TABLE company_profiles
RENAME COLUMN ceo TO chief_executive_officer;

--6] add column ipo_price to table of stocks and insert values into it 
alter table stocks add column ipo_price numeric

WITH cte AS (
  SELECT
    stock_id,
    ROW_NUMBER() OVER (ORDER BY stock_id) AS rn
  FROM stocks
  WHERE ipo_price IS NULL
  LIMIT 50
)
UPDATE stocks
SET ipo_price = 10.00 + (cte.rn * 1.5)
FROM cte
WHERE stocks.stock_id = cte.stock_id;

--7] Drop constraint of column mic_code
select * from exchange
ALTER TABLE exchange
DROP CONSTRAINT IF EXISTS exchange_mic_code_key;






  


	











