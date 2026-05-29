# PostgreSQL õppematerjalid

SQL-failid Udemy kursusest [SQL and PostgreSQL for Beginners: Become a SQL Expert](https://www.udemy.com/share/103ZWO3@t3moof2PYUEtj4X7HpZrXzxL3Y4QpiSlfdtkpMFZBn42NaG_cNYqunrKLdaWqezxqw==/).
Siin on Northwind andmebaasi dump ja erinevad SQL õpiküsimused tabelite loomise, muutmise ja päringutega.

## Sisukord

- `northwind.sql` – Northwind näidisandmebaasi täielik dump (tabelid, andmed, seosed)
- `q_*.sql` – kursuse harjutuste lahendused (tabelite loomine, andmete sisestamine/uuendamine/kustutamine, päringud)
- Muud failid – PostgreSQL teemad: ALTER TABLE, CONSTRAINTS, LIKE/ILIKE, BETWEEN, CONCAT, tüübid jne.

## PostgreSQL installimine

### Arch Linux / CachyOS

```bash
sudo pacman -S postgresql
```

### Ubuntu / Debian

```bash
sudo apt install postgresql postgresql-client
```

### macOS (Homebrew)

```bash
brew install postgresql@16
```

### Windows

Laadi alla installer: https://www.postgresql.org/download/windows/

## Pärast installi seadistamine (Linux)

```bash
# Määra postgres kasutaja parool
sudo passwd postgres

# Käivita PostgreSQL (systemd)
sudo systemctl enable --now postgresql

# Kui esmakordne seadistus (ainult Archil on seda vaja):
sudo -iu postgres initdb --locale en_US.UTF-8 -D /var/lib/postgres/data

# Logi sisse postgres kasutajana ja loo endale andmebaas
sudo -iu postgres
createuser --interactive   # loo kasutaja (nt heiko)
createdb heiko             # loo andmebaas enda nimega
exit
```

## Kuidas neid faile kasutada

### 1. Ühenda PostgreSQL-ga

```bash
sudo -iu postgres psql
```
või
```bash
psql -U heiko -d heiko
```

### 2. Loo Northwind andmebaas

```bash
# Loo andmebaas
sudo -iu postgres createdb northwind

# Impordi dump
sudo -iu postgres psql -d northwind < northwind.sql
```

Või kui kasutad enda kasutajat:
```bash
psql -U heiko -d northwind < northwind.sql
```

### 3. Kasuta üksikuid SQL faile

Kõige lihtsam – ava fail ja kopeeri SQL käsud psql-i. Või impordi otse:

```bash
psql -d northwind < q_creating+movies+database+and+actors+table.sql
```

### 4. psql põhikäsud

| Käsk | Mida teeb |
|------|-----------|
| `\l` | Kuva kõik andmebaasid |
| `\c northwind` | Ühendu northwind andmebaasiga |
| `\dt` | Kuva kõik tabelid |
| `\d actors` | Kuva tabeli actors struktuur |
| `\i fail.sql` | Käivita SQL-fail |
| `\q` | Välju |

## Näidis: actors tabeli loomine ja kasutamine

```sql
-- Loo tabel
CREATE TABLE actors (
    actor_id SERIAL PRIMARY KEY,
    first_name VARCHAR(150),
    last_name VARCHAR(150) NOT NULL,
    gender CHAR(1),
    date_of_birth DATE,
    add_date DATE,
    update_date DATE
);

-- Lisa andmeid
INSERT INTO actors (first_name, last_name, gender, date_of_birth)
VALUES ('Robert', 'Downey Jr.', 'M', '1965-04-04');

-- Päri
SELECT * FROM actors;
```
