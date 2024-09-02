/*DSW - Drop Views*/

--#SET TERMINATOR @

BEGIN
    IF EXISTS (
        select 1 from syscat.views where viewschema='SCTID' and viewname='IBM_QUOTES'
    ) THEN
        EXECUTE IMMEDIATE 'drop view sctid.ibm_quotes';
     END IF;
    
      IF EXISTS (
        select 1 from syscat.views where viewschema='SCTID' and viewname='IBM_QUOTES_ACCOUNTS'
    ) THEN
        EXECUTE IMMEDIATE 'drop view sctid.ibm_quotes_accounts';
     END IF;
     
     IF EXISTS (
        select 1 from syscat.views where viewschema='SCTID' and viewname='IBM_QUOTES_CONTACTS'
    ) THEN
        EXECUTE IMMEDIATE 'drop view sctid.IBM_QUOTES_CONTACTS';
     END IF;
   IF EXISTS (
        select 1 from syscat.views where viewschema='SCTID' and viewname='IBM_QUOTES_USERS'
    ) THEN
        EXECUTE IMMEDIATE 'drop view sctid.IBM_QUOTES_USERS';
     END IF;
     
  
       IF EXISTS (
        select 1 from syscat.views where viewschema='SCTID' and viewname='IBM_SALES_ORDERS'
    ) THEN
        EXECUTE IMMEDIATE 'drop view sctid.IBM_SALES_ORDERS';
     END IF;
        IF EXISTS (
        select 1 from syscat.views where viewschema='SCTID' and viewname='IBM_SALES_ORDERS_ACCOUNTS'
    ) THEN
        EXECUTE IMMEDIATE 'drop view sctid.IBM_SALES_ORDERS_ACCOUNTS';
     END IF;
        IF EXISTS (
        select 1 from syscat.views where viewschema='SCTID' and viewname='IBM_SALES_ORDERS_CONTACTS'
    ) THEN
        EXECUTE IMMEDIATE 'drop view sctid.IBM_SALES_ORDERS_CONTACTS';
     END IF;
        IF EXISTS (
        select 1 from syscat.views where viewschema='SCTID' and viewname='IBM_SALES_ORDERS_LEADS'
    ) THEN
        EXECUTE IMMEDIATE 'drop view sctid.IBM_SALES_ORDERS_LEADS';
     END IF;
        IF EXISTS (
        select 1 from syscat.views where viewschema='SCTID' and viewname='IBM_SALES_ORDERS_USERS'
    ) THEN
        EXECUTE IMMEDIATE 'drop view sctid.IBM_SALES_ORDERS_USERS';
     END IF;
     
 END @

--#SET TERMINATOR ;    
     
