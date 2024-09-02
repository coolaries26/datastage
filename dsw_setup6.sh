#!/bin/sh

db2 connect to saleconn

echo "export to /tempspace/quotesaccounts.ixf of ixf messages qtAcc.exp select * from SCTID.IBM_QUOTES_ACCOUNTS_VIEW with ur "  
db2 "export to /tempspace/quotesaccounts.ixf of ixf messages qtAcc.exp select * from SCTID.IBM_QUOTES_ACCOUNTS_VIEW with ur "   ;
db2 "import from /tempspace/quotesaccounts.ixf of ixf commitcount 100000 messages qtAcc.imp replace into SCTID.IBM_QUOTES_ACCOUNTS  ";

echo "export to /tempspace/quotescontacts.ixf of ixf messages qtCont.exp select * from SCTID.IBM_QUOTES_CONTACTS_VIEW with ur "   
db2 "export to /tempspace/quotescontacts.ixf of ixf messages qtCont.exp select * from SCTID.IBM_QUOTES_CONTACTS_VIEW with ur "   ;
db2 "import from /tempspace/quotescontacts.ixf of ixf commitcount 100000 messages qtCont.imp  replace into SCTID.IBM_QUOTES_CONTACTS  ";

echo "export to /tempspace/quotesusers.ixf of ixf messages qtUsr.exp select * from SCTID.IBM_QUOTES_USERS_VIEW with ur "   
db2 "export to /tempspace/quotesusers.ixf of ixf messages qtUsr.exp select * from SCTID.IBM_QUOTES_USERS_VIEW with ur "   ;
db2 "import from /tempspace/quotesusers.ixf of ixf commitcount 100000  messages qtUsr.exp replace into SCTID.IBM_QUOTES_USERS   ";

echo "export to /tempspace/quotes.ixf of ixf messages quotes.exp  select * from SCTID.IBM_QUOTES_VIEW with ur "   
db2 "export to /tempspace/quotes.ixf of ixf messages quotes.exp  select * from SCTID.IBM_QUOTES_VIEW with ur "   ;
db2 "import from /tempspace/quotes.ixf of ixf commitcount 100000 messages quotes.imp  replace into SCTID.IBM_QUOTES   ";

echo  "export to   /tempspace/salesordersaccounts.ixf of ixf messages soAcc.exp select * from SCTID.IBM_SALES_ORDERS_ACCOUNTS_VIEW with ur "  
db2 "export to   /tempspace/salesordersaccounts.ixf of ixf messages soAcc.exp select * from SCTID.IBM_SALES_ORDERS_ACCOUNTS_VIEW with ur "   ;
db2 "import from /tempspace/salesordersaccounts.ixf of ixf  commitcount 100000  messages soAcc.imp  replace into SCTID.IBM_SALES_ORDERS_ACCOUNTS "  ;

echo "export to /tempspace/salesorderscontacts.ixf of ixf messages soCont.exp select * from SCTID.IBM_SALES_ORDERS_CONTACTS_VIEW with ur "   
db2 "export to /tempspace/salesorderscontacts.ixf of ixf messages soCont.exp select * from SCTID.IBM_SALES_ORDERS_CONTACTS_VIEW with ur "   ;
db2 "import from /tempspace/salesorderscontacts.ixf of ixf commitcount 100000 messages soCont.imp  replace into SCTID.IBM_SALES_ORDERS_CONTACTS ";

echo  "export to /tempspace/salesordersusers.ixf of ixf  messages soUsr.exp  select * from SCTID.IBM_SALES_ORDERS_USERS_VIEW with ur "   
db2 "export to /tempspace/salesordersusers.ixf of ixf  messages soUsr.exp  select * from SCTID.IBM_SALES_ORDERS_USERS_VIEW with ur "   ;
db2 "import from /tempspace/salesordersusers.ixf of ixf commitcount 100000  messages soUsr.imp  replace into SCTID.IBM_SALES_ORDERS_USERS ";


echo "export to /tempspace/salesorders.ixf of ixf messages orders.exp  select * from SCTID.IBM_SALES_ORDERS_VIEW with ur "   
db2 "export to /tempspace/salesorders.ixf of ixf messages orders.exp  select * from SCTID.IBM_SALES_ORDERS_VIEW with ur "   ;
db2 "import from /tempspace/salesorders.ixf of ixf commitcount 100000  messages orders.imp  replace into SCTID.IBM_SALES_ORDERS ";

echo "export to /tempspace/salesordersleads.ixf of ixf messages soLeads.exp  select * from SCTID.IBM_SALES_ORDERS_LEADS_VIEW with ur "   
db2 "export to /tempspace/salesordersleads.ixf of ixf messages soLeads.exp  select * from SCTID.IBM_SALES_ORDERS_LEADS_VIEW with ur "   ;
db2 "import from /tempspace/salesordersleads.ixf of ixf commitcount 100000 messages soLeads.imp replace into SCTID.IBM_SALES_ORDERS_LEADS "  ;


