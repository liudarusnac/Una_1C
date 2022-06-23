 
  ------begin Регистр учета покупок
 select  data , numar,cc.description contragent ,cc.code cod_fiscal , posted,INCOMINGDATE data_fiscal,INCOMINGNUMBER nr_fiscal,OPERATIONTYPE operatiunea,
  n.description nomenclatura,suma,QUANTITY cantitat,m.description um ,PRICE pret ,SUM_1 suma1,VATSUM sumatva, SERVICEDESCRIPTION 
 from A1CC_GoodsReceipt  g, A1CC_Contracts c ,A1CC_Contractors cc,A1CC_Nomenclature n ,A1CC_Measures m
 where  g.CONTRACT=c.ref  and g.CONTRACTOR=cc.ref and c.OWNER=cc.ref and g.CONTRACTCURRENCYRATE=c.code 
 and g.NOMENCLATURE_1=n.ref and g.MEASURE=m.ref order by data,numar  ;
 ----end Регистр учета покупок
   
 ----begin Регистр учета продаж
 select  data,numar,cc.description contragent ,cc.code cod_fiscal ,c.description cntract , posted, INCOMINGDATE,INCOMINGNUMBER,OPERATIONTYPE, n.description nomenclatura /*, w.description sclad*/ ,suma,QUANTITY,m.description um ,PRICE,SUM_1,VATSUM
 from A1CC_GoodsSale g, A1CC_Contracts c ,A1CC_Contractors cc,A1CC_Nomenclature n ,A1CC_Measures m --, A1CC_Warehouses w
 where g.CONTRACT=c.ref  and g.CONTRACTOR=cc.ref  and c.OWNER=cc.ref --and g.CONTRACTCURRENCYRATE=c.code 
 and g.NOMENCLATURE_1=n.ref and g.MEASURE=m.ref order by data,numar ;--and  c.CONTRACTTYPE  not like 'WithSupplier'
 ---end Регистр учета продаж
 