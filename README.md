# sap-maintenance-item-sql

sap-maintenance-item-sql は、主にエッジアプリケーションにおいて、SAPと連携された保全計画明細データを保存するSQLテーブルを作成するためのレポジトリです。  
sap-maintenance-item-sql は、そのままクラウド環境におけるアプリケーションにも、適用可能です。  

## 前提条件  
sap-maintenance-item-sql は、SQL の SAP とのデータ連携にあたり、オンプレミス版である（＝クラウド版ではない）SAPS4HANA API の利用を前提としています。  
クラウド版APIを利用する場合は、ご注意ください。  
https://api.sap.com/api/OP_API_MAINTENANCEITEM_0001/overview  
本レポジトリ の sql設定ファイルの内容は、上記URL の API 仕様を前提としています。  

## sqlの設定ファイル

sap-maintenance-item-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。  

* sap-maintenance-item-sql-item-data.sql（SAP 保全計画明細 - 明細データ）  
* sap-maintenance-item-sql-call-objects.sql（SAP 保全計画明細 - コール対象データ）  

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法  

MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  