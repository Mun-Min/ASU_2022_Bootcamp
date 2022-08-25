CREATE TABLE inventory (
  inventory_id integer NOT NULL,
  film_id smallint NOT NULL,
  store_id smallint NOT NULL,
  last_update timestamp without time zone DEFAULT now() NOT NULL
);

CREATE TABLE payment (
  payment_id integer NOT NULL,
  customer_id smallint NOT NULL,
  staff_id smallint NOT NULL,
  rental_id integer NOT NULL,
  amount numeric(5,2) NOT NULL,
  payment_date timestamp without time zone NOT NULL
);

CREATE TABLE rental (
  rental_id integer NOT NULL,
  rental_date timestamp without time zone NOT NULL,
  inventory_id integer NOT NULL,
  customer_id smallint NOT NULL,
  return_date timestamp without time zone,
  staff_id smallint NOT NULL,
  last_update timestamp without time zone DEFAULT now() NOT NULL
);

CREATE TABLE store (
    store_id integer NOT NULL,
    manager_staff_id smallint NOT NULL,
    address_id smallint NOT NULL,
    last_update timestamp without time zone DEFAULT now() NOT NULL
);
