
select b.data,b.numar,b.posted,b.operationtype,
(select ba.DESCRIPTION from  A1CC_BanksAccounts ba where  ba.ref=b.BANKACCOUNT) bankaccaunt,
(select bs.description from A1CC_Banks bs,A1CC_BanksAccounts ba  where bs.ref= ba.BANK and ba.ref=b.BANKACCOUNT ) bank,
(select cc.description from A1CC_Contractors cc where cc.ref=b.contractor) contractor,
(select c.description from A1CC_Contracts c where c.ref=b.contract) contractc,
(select cur.description   from A1CC_Currencies cur where  cur.ref=b.DOCUMENTCURRENCY)valuta,
b.suma,b.vatsum,
(select d.description from  A1CC_Divisions d where d.ref=b.division)division,
b.SUMBYCONTRACTCURRENCY,
(select n.description from A1CC_Nomenclature n where n.ref=b.NOMENCLATURE)nomenclature,
b.quantity cant ,b.OPERATIONCOMMENT,
(select ba.DESCRIPTION from  A1CC_BanksAccounts ba where  ba.ref=b.BANKACCOUNTRECEIPTED)BANKACCOUNTRECEIPTED,
b.SUMDEBTBYCASHCURRENCY,
(select p.description from A1CC_Personnel p where p.ref=b.employee)employee,
b.sum_1

from A1CC_BankOperationExpense b order by data, numar