
INSERT INTO family_children
(family, children)
VALUES
('Smith', 'Chris, Abby, Susy'),
('Jones', 'Steve, Mary, Dillion');

INSERT INTO first_nf_family_children
(family, children)
VALUES
('Smith', 'Abby'),
('Smith', 'Susy'),
('Jones', 'Mary'),
('Smith', 'Chris'),
('Jones', 'Dillion'),
('Jones', 'Mary');

INSERT INTO second_nf_family
(family_id, family)
VALUES
(1, 'Smith'),
(2, 'Jones');

INSERT INTO second_nf_child
(child_id, family_id, children)
VALUES
(11, 1, 'Chris'),
(22, 1, 'Abby'),
(33, 1, 'Susy'),
(44, 2, 'Steve'),
(55, 2, 'Mary'),
(66, 2, 'Dillion');

INSERT INTO owner_store
(owner_id, owner_name, owner_address, store_name)
VALUES
(11, 'Marshall', '123, Fake Street', 'Soups and Stuff'),
(22, 'Susan', '44, New Drive', 'Sink Emporium'),
(33, 'Molly', '99, Old Lane', 'Tasty Burgers');

INSERT INTO third_nf_owner
(owner_id, owner_name, owner_address)
VALUES
(11, 'Marshall', '123, Fake Street'),
(22, 'Susan', '44, New Drive'),
(33, 'Molly', '92, Old Lane');

INSERT INTO third_nf_store 
(store_name, owner_id)
VALUES 
('Soups and Stuff', 11),
('Sink Emporium',22),
('Tasty Burgers',33)
