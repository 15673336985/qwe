[1mdiff --git "a/\346\235\216\344\273\225\351\221\253\342\200\224\342\200\224\346\225\260\346\215\256\345\272\223\350\256\276\350\256\241\350\257\264\346\230\216\344\271\246\346\250\241\346\235\2771.4.doc" "b/\346\235\216\344\273\225\351\221\253\342\200\224\342\200\224\346\225\260\346\215\256\345\272\223\350\256\276\350\256\241\350\257\264\346\230\216\344\271\246\346\250\241\346\235\2771.4.doc"[m
[1mdeleted file mode 100644[m
[1mindex 91a92f0..0000000[m
[1m--- "a/\346\235\216\344\273\225\351\221\253\342\200\224\342\200\224\346\225\260\346\215\256\345\272\223\350\256\276\350\256\241\350\257\264\346\230\216\344\271\246\346\250\241\346\235\2771.4.doc"[m
[1m+++ /dev/null[m
[36m@@ -1,196 +0,0 @@[m
[31m-[m
[31m-                              XX有限公司ERP系统[m
[31m-[m
[31m-                                     数[m
[31m-                                     据[m
[31m-                                     库[m
[31m-                                     设[m
[31m-                                     计[m
[31m-                                     说[m
[31m-                                     明[m
[31m-                                     书[m
[31m-[m
[31m-[m
[31m-                           项目代号：CX-2009-01-XX[m
[31m-[m
[31m-[m
[31m-                            株洲创新科技有限公司[m
[31m-                                  2009-12-5[m
[31m-[m
[31m-[m
[31m-                                  目    录[m
[31m-1、 数据库设计   3[m
[31m-   1.1、  命名规则  3[m
[31m-   1.2、  共用表 3[m
[31m-       1.2.1、   库存总账表（t_store_account） 3[m
[31m-       1.2.2、   库存流水表（t_store_io）   3[m
[31m-   1.3、  基础数据  4[m
[31m-   1.4、  库存子系统   4[m
[31m-   1.5、  销售子系统   4[m
[31m-   1.6、  采购子系统   4[m
[31m-[m
[31m-[m
[31m-[m
[31m-   命名规则[m
[31m-[m
[31m-[m
[31m-[m
[31m-   基础数据[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-   共用表[m
[31m-[m
[31m-[m
[31m-1 库存总账表（t_store_account）[m
[31m-[m
[31m-|字段名        |类型      |空 |主 |外 |默认值      |中文说明         |[m
[31m-|              |          |否 |键 |键 |            |                 |[m
[31m-|              |          |   |   |   |            |                 |[m
[31m-|              |          |   |   |   |            |                 |[m
[31m-|              |          |   |   |   |            |                 |[m
[31m-|              |          |   |   |   |            |                 |[m
[31m-[m
[31m-[m
[31m-【表 说 明】[m
[31m-[m
[31m-【主键说明】[m
[31m-[m
[31m-【外键说明】[m
[31m-[m
[31m-【索引说明】[m
[31m-[m
[31m-【字段补充说明】[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-2 库存流水表（t_store_io）[m
[31m-[m
[31m-|字段名        |类型      |空 |主 |外 |默认值      |中文说明         |[m
[31m-|              |          |否 |键 |键 |            |                 |[m
[31m-|              |          |   |   |   |            |                 |[m
[31m-|              |          |   |   |   |            |                 |[m
[31m-|              |          |   |   |   |            |                 |[m
[31m-|              |          |   |   |   |            |                 |[m
[31m-[m
[31m-[m
[31m-【表 说 明】[m
[31m-[m
[31m-【主键说明】[m
[31m-[m
[31m-【外键说明】[m
[31m-[m
[31m-【索引说明】[m
[31m-[m
[31m-【字段补充说明】[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-   库存子系统[m
[31m-[m
[31m-盘点主表[m
[31m-|字段名   |类型          |空否  |主键  |外键    |默认值  |中文说明|[m
[31m-|CangKu   |Int           |N     |      |        |        |盘点仓库|[m
[31m-|DanJuDate|Date          |      |      |        |        |单据日期|[m
[31m-|DanJuId  |Nvarchar（50）|      |      |        |        |单据号码|[m
[31m-|Pandianre|Nvarchar(50)  |      |      |        |        |盘点人员|[m
[31m-|n        |              |      |      |        |        |        |[m
[31m-|SuoShuBM |Nvarchar(50)  |      |      |        |        |所属部门|[m
[31m-|ZhidanRen|Nvarchar(50)  |      |      |        |        |制单人员|[m
[31m-|FuHeRen  |Nvarchar(50)  |      |      |        |        |复核人员|[m
[31m-[m
[31m-盘点子表[m
[31m-|字段名   |类型          |空否  |主键  |外键    |默认值  |中文说明|[m
[31m-| SerNo   |Int           |N     |      |        |        |栏号    |[m
[31m-|DanJuNo  |Nvarchar（50）|      |      |        |        |单据号码|[m
[31m-|ProdId   |Nvarchar(50)  |      |      |        |        |物料编号|[m
[31m-|prodName |Nvarchar(50)  |      |      |        |        |物料名称|[m
[31m-|ProdSize |Nvarchar(50)  |      |      |        |        |规格型号|[m
[31m-|Unit     |Nvarchar(50)  |      |      |        |        |单位    |[m
[31m-|CurQty   |Int           |      |      |        |        |账面数量|[m
[31m-|CheckQty |Int           |      |      |        |        |盘点数量|[m
[31m-|Quantity |Int           |      |      |        |        |盈亏数量|[m
[31m-|Price    |Float         |      |      |        |        |单价    |[m
[31m-|Amount   |Float         |      |      |        |        |盈亏金额|[m
[31m-[m
[31m-[m
[31m-   销售子系统[m
[31m-[m
[31m-销售出库主表[m
[31m-[m
[31m-|字段名        |类型      |空 |主 |外键|默认值      |中文说明         |[m
[31m-|              |          |否 |键 |    |            |                 |[m
[31m-|Gongysaddress |Varchar   |   |   |    |            |送货地址         |[m
[31m-|DanjuDate     |Date      |   |   |    |            |单据日期         |[m
[31m-|DanjuNo       |varchar   |Nz |Y  |    |            |单据编号         |[m
[31m-|Shifouhs      |Int       |   |   |    |            |单价是否含税     |[m
[31m-|Bibie         |varchar   |   |   |    |            |币别             |[m
[31m-|CangKu        |int       |   |   |N   |            |仓库             |[m
[31m-|Huilv         |varchar   |   |   |    |            |汇率             |[m
[31m-|ChonXinChuKu  |varchar   |   |   |    |            |重新出库         |[m
[31m-|Yewureny      |varchar   |   |   |    |            |采购人员         |[m
[31m-|Suoshubum     |varchar   |   |   |    |            |所属部门         |[m
[31m-|Shenhereny    |varchar   |   |   |    |            |审核人员         |[m
[31m-|Fuhereny      |varchar   |   |   |    |            |复核人员         |[m
[31m-|Shenhezhuangt |Int       |   |   |    |            |审核状态         |[m
[31m-[m
[31m-[m
[31m-[m
[31m-|字段名        |类型      |空 |主 |外键|默认值      |中文说明         |[m
[31m-|              |          |否 |键 |    |            |                 |[m
[31m-|DanjuNo       |varchar   |N  |   |Y   |            |单据编号         |[m
[31m-|WuliaoName    |varchar   |   |   |    |            |物料名称         |[m
[31m-|WuliaoNo      |varchar   |   |   |    |            |物料编号         |[m
[31m-|Guigexh       |varchar   |   |Y  |    |            |规格型号         |[m
[31m-|Danweimc      |varchar   |   |   |    |            |单位名称         |[m
[31m-|Shuliang      |Float     |   |   |    |            |数量             |[m
[31m-|Zhedanjia     |Float     |   |   |    |            |折扣前单价       |[m
[31m-|Zheshu        |Float     |   |   |    |            |折数             |[m
[31m-|Danjia        |Float     |   |   |    |            |单价             |[m
[31m-|Jine          |Float     |   |   |    |            |金额             |[m
[31m-|Shuilu        |varchar   |   |   |    |            |税率             |[m
[31m-|Shuie         |Float     |   |   |    |            |税额             |[m
[31m-|Hanshuije     |Float     |   |   |    |            |含税金额         |[m
[31m-|Weichukl      |Int       |   |   |    |            |未出库量         |[m
[31m-|Zenping       |Int       |   |   |    |            |赠品             |[m
[31m-|Laiyuandb     |varchar   |   |   |    |            |来源单别         |[m
[31m-|Laiyuandh     |varchar   |   |   |    |            |来源单号         |[m
[31m-[m
[31m-[m
[31m-销售出库子表[m
[31m-[m
[31m-   采购子系统[m
[31m-[m
[31m-[m
[31m-1 采购订单表（caigou）[m
[31m-[m
[31m-[m
[31m-[m
[31m-【表 说 明】[m
[31m-采购订单主表[m
[31m-【主键说明】[m
[31m-DanjuNo  ：单据编号 主键，唯一，不可为空[m
[31m-【外键说明】[m
[31m-[m
[31m-【索引说明】[m
[31m-[m
[31m-【字段补充说明】[m
[31m-[m
[31m-        6.2采购订单明细表（caigoumingxi）[m
[31m-[m
[31m-[m
[31m-[m
[31m-【表 说 明】[m
[31m-采购订单明细表[m
[31m-【主键说明】[m
[31m-Hangh 行号 主键，唯一，不可为空[m
[31m-【外键说明】[m
[31m-[m
[31m-【索引说明】[m
[31m-[m
[31m-【字段补充说明】[m
[31m-[m
