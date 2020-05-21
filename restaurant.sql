CREATE TABLE restaurant (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    distance NUMERIC,
    rating NUMERIC,
    category VARCHAR,
    fav_dish VARCHAR,
    takeout BOOLEAN,
    last_visit DATE
);

INSERT INTO restaurant VALUES (
    DEFAULT,
    'Staplehouse',
    1.2,
    4.7,
    'fine dining',
    'Chicken Liver Tart',
    TRUE,
    '2020-03-15'
),
INSERT INTO restaurant VALUES (
 DEFAULT,
    'Ticonderoga Club',
    0.9,
    4.7,
    'New American',
    'Sweetbreads 65',
    FALSE,
    '2020-02-11'
),
(
 DEFAULT,
    'Cafe Bombay',
    5.4,
    4.2,
    'Indian',
    'Chili Paneer',
    TRUE,
    '2020-03-05'
),
(
 DEFAULT,
    'Superica',
    0.9,
    4.5,
    'Tex-Mex',
    'Steak Nachos',
    TRUE,
    '2020-01-26'
);
INSERT INTO restaurant VALUES (
 DEFAULT,
    'Fox Bros',
    1.7,
    4.6,
    'BBQ',
    'Brisket Plate',
    TRUE,
    '2020-02-20'
);
INSERT INTO restaurant VALUES (
 DEFAULT,
    'Kimball House',
    6.2,
    4.7,
    'New American',
    'Kumamoto Oysters',
    TRUE,
    '2019-05-18'
);

