mysqldump -uroot -pTrewtyumzef9 --no-create-db --no-create-info ubup item > ubup_items_stage.sql

-- mysql -uroot -pTrewtyumzef9
-- ALTER TABLE `TableName` ADD `ColumnName` int(1) NOT NULL default '0';
IF NOT EXISTS( SELECT NULL
            FROM INFORMATION_SCHEMA.COLUMNS
           WHERE table_name = 'customer'
             AND table_schema = 'ubup'
             AND column_name = 'expired')  THEN

  desc customer;

END IF;
