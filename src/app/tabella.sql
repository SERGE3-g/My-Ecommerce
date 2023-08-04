-- Active: 1687383701466@@Localhost@3306@Ecommerce
-- CREATE TABLE registrazione(  
--     id INT NOT NULL AUTO_INCREMENT,
--     nome VARCHAR(30) NOT NULL,
--     cognome VARCHAR(30) NOT NULL,
--     indirizzo VARCHAR(225) NOT NULL,
--     citta VARCHAR(30) NOT NULL,
--     cap VARCHAR(30) NOT NULL,
--     telefono VARCHAR(30) NOT NULL,
--     provincia VARCHAR(30) NOT NULL,
--     email VARCHAR(50) NOT NULL,
--     password VARCHAR(30) NOT NULL,
--     conferma_password VARCHAR(30) NOT NULL,
--     PRIMARY KEY(id)
-- );

CREATE TABLE login (
    id INT NOT NULL AUTO_INCREMENT,
    id_registrazione INT NOT NULL,
    username VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_registrazione) REFERENCES registrazione(id)
);

CREATE TABLE prodotto(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    descrizione VARCHAR(225) NOT NULL,
    prezzo DECIMAL(10,2) NOT NULL,
    quantita INT NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE ordine(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    id_registrazione INT NOT NULL,
    quantita INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id),
    FOREIGN KEY(id_registrazione) REFERENCES registrazione(id)
);

CREATE TABLE carrello(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    id_registrazione INT NOT NULL,
    quantita INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id),
    FOREIGN KEY(id_registrazione) REFERENCES registrazione(id)
);

CREATE TABLE acquisto(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    id_registrazione INT NOT NULL,
    quantita INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id),
    FOREIGN KEY(id_registrazione) REFERENCES registrazione(id)
);

CREATE TABLE recensione(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    id_registrazione INT NOT NULL,
    testo VARCHAR(225) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id),
    FOREIGN KEY(id_registrazione) REFERENCES registrazione(id)
);

CREATE TABLE preferiti(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    id_registrazione INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id),
    FOREIGN KEY(id_registrazione) REFERENCES registrazione(id)
);

CREATE TABLE fattura(
    id INT NOT NULL AUTO_INCREMENT,
    id_registrazione INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_registrazione) REFERENCES registrazione(id)
);

CREATE TABLE pagamento(
    id INT NOT NULL AUTO_INCREMENT,
    id_registrazione INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_registrazione) REFERENCES registrazione(id)
);

CREATE TABLE spedizione(
    id INT NOT NULL AUTO_INCREMENT,
    id_registrazione INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_registrazione) REFERENCES registrazione(id)
);

CREATE TABLE amministratore(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    cognome VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE categoria(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE prodotto_categoria(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    id_categoria INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id),
    FOREIGN KEY(id_categoria) REFERENCES categoria(id)
);

CREATE TABLE prodotto_immagine(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    immagine VARCHAR(225) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_taglia(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    taglia VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_colore(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    colore VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_sesso(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    sesso VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_materiale(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    materiale VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_stagione(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    stagione VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_marca(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    marca VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_modello(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    modello VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_stile(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    stile VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_stampa(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    stampa VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_collezione(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    collezione VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_fantasia(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    fantasia VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_anno(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    anno VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_descrizione(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    descrizione VARCHAR(225) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_prezzo(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    prezzo DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_sconto(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    sconto DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_quantita(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    quantita INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_disponibilita(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    disponibilita VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_disponibilita_taglia(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    disponibilita_taglia VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_disponibilita_colore(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    disponibilita_colore VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_disponibilita_sesso(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    disponibilita_sesso VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_disponibilita_materiale(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    disponibilita_materiale VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_disponibilita_stagione(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    disponibilita_stagione VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_disponibilita_marca(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    disponibilita_marca VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_disponibilita_modello(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    disponibilita_modello VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_disponibilita_stile(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    disponibilita_stile VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_disponibilita_stampa(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    disponibilita_stampa VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_disponibilita_collezione(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    disponibilita_collezione VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_disponibilita_fantasia(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    disponibilita_fantasia VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_disponibilita_anno(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    disponibilita_anno VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_disponibilita_descrizione(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    disponibilita_descrizione VARCHAR(225) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_disponibilita_prezzo(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    disponibilita_prezzo DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_disponibilita_sconto(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    disponibilita_sconto DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_disponibilita_quantita(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    disponibilita_quantita INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_disponibilita_immagine(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    disponibilita_immagine VARCHAR(225) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_disponibilita_taglia_colore(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    disponibilita_taglia_colore VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

CREATE TABLE prodotto_disponibilita_taglia_colore_sesso(
    id INT NOT NULL AUTO_INCREMENT,
    id_prodotto INT NOT NULL,
    disponibilita_taglia_colore_sesso VARCHAR(30) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_prodotto) REFERENCES prodotto(id)
);

