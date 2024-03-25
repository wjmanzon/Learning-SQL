CREATE TABLE stocks(TradeDate CHAR(10),
					SPY DOUBLE,
                    GLD DOUBLE,
                    AMZN DOUBLE,
                    GOOG DOUBLE,
                    KPTI DOUBLE,
                    GILD DOUBLE,
                    MPC DOUBLE);

SELECT * FROM stocks;

INSERT INTO stocks
/* Skipped this step as I used the Import Data Wizard to import the csv file */

SELECT * FROM stocks;

UPDATE stocks SET TradeDate = str_to_date(TradeDate, "%m/%d/%Y")

