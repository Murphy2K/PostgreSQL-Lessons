-- Add UNIQUE constrain to a column

CREATE TABLE web_links(
	link_id SERIAL PRIMARY KEY,
	link_url VARCHAR(255) NOT NULL,
	link_target VARCHAR(20)
);

ALTER TABLE web_links
ADD CONSTRAINT unique_web_url UNIQUE (link_url);


-- To set a column to accept only defined allowed/acceptable values

ALTER TABLE web_links
ADD COLUMN is_enable VARCHAR(2);

ALTER TABLE web_links
ADD CHECK (is_enable IN ('Y', 'N'));
