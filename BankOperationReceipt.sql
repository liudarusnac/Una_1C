

select b.data,b.numar,b.posted,
(select o.description from A1CC_Organizations  o where o.ref=b.ORGANIZATION ) oragnization,
b.operationtype,
(select ba.DESCRIPTION from  A1CC_BanksAccounts ba where  ba.ref=b.BANKACCOUNT) bankaccaunt,
(select bs.description from A1CC_Banks bs,A1CC_BanksAccounts ba  where bs.ref= ba.BANK and ba.ref=b.BANKACCOUNT ) bank,
(select cc.description from A1CC_Contractors cc where cc.ref=b.contractor) contractor,
(select c.description from A1CC_Contracts c where c.ref=b.contract) contractc,
(select cur.description   from A1CC_Currencies cur where  cur.ref=b.DOCUMENTCURRENCY)valuta,
b.suma,b.vatsum,
b.SUMBYCONTRACTCURRENCY,
(select cur.description   from A1CC_Currencies cur where  cur.ref=b.CURRENCYOTHERRECEIPT)CURRENCYOTHERRECEIPT,
b.CURRENCYSUMOTHERRECEIPT,
b.OPERATIONCOMMENT,
b.coment
from A1CC_BankOperationReceipt b order by data, numar;