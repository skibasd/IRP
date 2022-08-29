﻿#language: en
@tree
@Positive
@BasicFormsCheck

Feature: basic check documents
As an QA
I want to check opening and closing of documents forms

Background:
	Given I launch TestClient opening script or connect the existing one
	When set True value to the constant
	When set True value to the constant Use consolidated retail sales

Scenario: preparation
	* Add VA extension
		Given I open hyperlink "e1cib/list/Catalog.Extensions"
		If "List" table does not contain lines Then
				| "Description" |
				| "VAExtension" |
			When add VAExtension
	
	
Scenario: Open list form "BankPayment" 
	And I close all client application windows
	Given I open "BankPayment" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form BankPayment" exception
	And I close current window

Scenario: Open object form "BankPayment"
	And I close all client application windows
	Given I open "BankPayment" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form BankPayment" exception
	And I close current window



	
	
Scenario: Open list form "BankReceipt" 
	And I close all client application windows
	Given I open "BankReceipt" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form BankReceipt" exception
	And I close current window

Scenario: Open object form "BankReceipt"
	And I close all client application windows
	Given I open "BankReceipt" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form BankReceipt" exception
	And I close current window




	
	
Scenario: Open list form "Bundling" 
	And I close all client application windows
	Given I open "Bundling" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form Bundling" exception
	And I close current window

Scenario: Open object form "Bundling"
	And I close all client application windows
	Given I open "Bundling" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form Bundling" exception
	And I close current window




	
	
Scenario: Open list form "CashExpense" 
	And I close all client application windows
	Given I open "CashExpense" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form CashExpense" exception
	And I close current window

Scenario: Open object form "CashExpense"
	And I close all client application windows
	Given I open "CashExpense" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form CashExpense" exception
	And I close current window




	
	
Scenario: Open list form "CashPayment" 
	And I close all client application windows
	Given I open "CashPayment" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form CashPayment" exception
	And I close current window

Scenario: Open object form "CashPayment"
	And I close all client application windows
	Given I open "CashPayment" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form CashPayment" exception
	And I close current window




	
	
Scenario: Open list form "CashReceipt" 
	And I close all client application windows
	Given I open "CashReceipt" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form CashReceipt" exception
	And I close current window

Scenario: Open object form "CashReceipt"
	And I close all client application windows
	Given I open "CashReceipt" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form CashReceipt" exception
	And I close current window




	
	
Scenario: Open list form "CashRevenue" 
	And I close all client application windows
	Given I open "CashRevenue" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form CashRevenue" exception
	And I close current window

Scenario: Open object form "CashRevenue"
	And I close all client application windows
	Given I open "CashRevenue" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form CashRevenue" exception
	And I close current window




	
	
Scenario: Open list form "CashTransferOrder" 
	And I close all client application windows
	Given I open "CashTransferOrder" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form CashTransferOrder" exception
	And I close current window

Scenario: Open object form "CashTransferOrder"
	And I close all client application windows
	Given I open "CashTransferOrder" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form CashTransferOrder" exception
	And I close current window

Scenario: Open list form "MoneyTransfer" 
	And I close all client application windows
	Given I open "MoneyTransfer" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form MoneyTransfer" exception
	And I close current window

Scenario: Open object form "MoneyTransfer"
	And I close all client application windows
	Given I open "MoneyTransfer" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form MoneyTransfer" exception
	And I close current window




	
Scenario: Open list form "CreditNote" 
	And I close all client application windows
	Given I open "CreditNote" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form CreditNote" exception
	And I close current window

Scenario: Open object form "CreditNote"
	And I close all client application windows
	Given I open "CreditNote" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form CreditNote" exception
	And I close current window

Scenario: Open list form "DebitNote" 
	And I close all client application windows
	Given I open "DebitNote" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form DebitNote" exception
	And I close current window

Scenario: Open object form "DebitNote"
	And I close all client application windows
	Given I open "DebitNote" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form DebitNote" exception
	And I close current window




	
	
Scenario: Open list form "GoodsReceipt" 
	And I close all client application windows
	Given I open "GoodsReceipt" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form GoodsReceipt" exception
	And I close current window

Scenario: Open object form "GoodsReceipt"
	And I close all client application windows
	Given I open "GoodsReceipt" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form GoodsReceipt" exception
	And I close current window




	
	
Scenario: Open list form "IncomingPaymentOrder" 
	And I close all client application windows
	Given I open "IncomingPaymentOrder" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form IncomingPaymentOrder" exception
	And I close current window

Scenario: Open object form "IncomingPaymentOrder"
	And I close all client application windows
	Given I open "IncomingPaymentOrder" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form IncomingPaymentOrder" exception
	And I close current window




	
	
Scenario: Open list form "InternalSupplyRequest" 
	And I close all client application windows
	Given I open "InternalSupplyRequest" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form InternalSupplyRequest" exception
	And I close current window

Scenario: Open object form "InternalSupplyRequest"
	And I close all client application windows
	Given I open "InternalSupplyRequest" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form InternalSupplyRequest" exception
	And I close current window




	
	
Scenario: Open list form "InventoryTransfer" 
	And I close all client application windows
	Given I open "InventoryTransfer" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form InventoryTransfer" exception
	And I close current window

Scenario: Open object form "InventoryTransfer"
	And I close all client application windows
	Given I open "InventoryTransfer" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form InventoryTransfer" exception
	And I close current window




	
	
Scenario: Open list form "InventoryTransferOrder" 
	And I close all client application windows
	Given I open "InventoryTransferOrder" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form InventoryTransferOrder" exception
	And I close current window

Scenario: Open object form "InventoryTransferOrder"
	And I close all client application windows
	Given I open "InventoryTransferOrder" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form InventoryTransferOrder" exception
	And I close current window







	
	
Scenario: Open list form "Labeling" 
	And I close all client application windows
	Given I open "Labeling" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form Labeling" exception
	And I close current window

Scenario: Open object form "Labeling"
	And I close all client application windows
	Given I open "Labeling" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form Labeling" exception
	And I close current window




	
	
Scenario: Open list form "OpeningEntry" 
	And I close all client application windows
	Given I open "OpeningEntry" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form OpeningEntry" exception
	And I close current window

Scenario: Open object form "OpeningEntry"
	And I close all client application windows
	Given I open "OpeningEntry" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form OpeningEntry" exception
	And I close current window




	
	
Scenario: Open list form "OutgoingPaymentOrder" 
	And I close all client application windows
	Given I open "OutgoingPaymentOrder" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form OutgoingPaymentOrder" exception
	And I close current window

Scenario: Open object form "OutgoingPaymentOrder"
	And I close all client application windows
	Given I open "OutgoingPaymentOrder" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form OutgoingPaymentOrder" exception
	And I close current window




	
	
Scenario: Open list form "PhysicalCountByLocation" 
	And I close all client application windows
	Given I open "PhysicalCountByLocation" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form PhysicalCountByLocation" exception
	And I close current window

Scenario: Open object form "PhysicalCountByLocation"
	And I close all client application windows
	Given I open "PhysicalCountByLocation" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form PhysicalCountByLocation" exception
	And I close current window




	
	
Scenario: Open list form "PriceList" 
	And I close all client application windows
	Given I open "PriceList" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form PriceList" exception
	And I close current window

Scenario: Open object form "PriceList"
	And I close all client application windows
	Given I open "PriceList" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form PriceList" exception
	And I close current window




	
	
Scenario: Open list form "PurchaseInvoice" 
	And I close all client application windows
	Given I open "PurchaseInvoice" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form PurchaseInvoice" exception
	And I close current window

Scenario: Open object form "PurchaseInvoice"
	And I close all client application windows
	Given I open "PurchaseInvoice" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form PurchaseInvoice" exception
	And I close current window




	
	
Scenario: Open list form "PurchaseOrder" 
	And I close all client application windows
	Given I open "PurchaseOrder" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form PurchaseOrder" exception
	And I close current window

Scenario: Open object form "PurchaseOrder"
	And I close all client application windows
	Given I open "PurchaseOrder" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form PurchaseOrder" exception
	And I close current window




	
	
Scenario: Open list form "PurchaseReturn" 
	And I close all client application windows
	Given I open "PurchaseReturn" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form PurchaseReturn" exception
	And I close current window

Scenario: Open object form "PurchaseReturn"
	And I close all client application windows
	Given I open "PurchaseReturn" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form PurchaseReturn" exception
	And I close current window




	
	
Scenario: Open list form "PurchaseReturnOrder" 
	And I close all client application windows
	Given I open "PurchaseReturnOrder" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form PurchaseReturnOrder" exception
	And I close current window

Scenario: Open object form "PurchaseReturnOrder"
	And I close all client application windows
	Given I open "PurchaseReturnOrder" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form PurchaseReturnOrder" exception
	And I close current window


Scenario: Open list form "ReconciliationStatement" 
	And I close all client application windows
	Given I open "ReconciliationStatement" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form ReconciliationStatement" exception
	And I close current window

Scenario: Open object form "ReconciliationStatement"
	And I close all client application windows
	Given I open "ReconciliationStatement" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form ReconciliationStatement" exception
	And I close current window

	


	
	
Scenario: Open list form "SalesInvoice" 
	And I close all client application windows
	Given I open "SalesInvoice" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form SalesInvoice" exception
	And I close current window

Scenario: Open object form "SalesInvoice"
	And I close all client application windows
	Given I open "SalesInvoice" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form SalesInvoice" exception
	And I close current window




	
	
Scenario: Open list form "SalesOrder" 
	And I close all client application windows
	Given I open "SalesOrder" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form SalesOrder" exception
	And I close current window

Scenario: Open object form "SalesOrder"
	And I close all client application windows
	Given I open "SalesOrder" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form SalesOrder" exception
	And I close current window




	
	
Scenario: Open list form "SalesReturn" 
	And I close all client application windows
	Given I open "SalesReturn" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form SalesReturn" exception
	And I close current window

Scenario: Open object form "SalesReturn"
	And I close all client application windows
	Given I open "SalesReturn" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form SalesReturn" exception
	And I close current window




	
	
Scenario: Open list form "SalesReturnOrder" 
	And I close all client application windows
	Given I open "SalesReturnOrder" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form SalesReturnOrder" exception
	And I close current window

Scenario: Open object form "SalesReturnOrder"
	And I close all client application windows
	Given I open "SalesReturnOrder" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form SalesReturnOrder" exception
	And I close current window
	
Scenario: Open list form "ShipmentConfirmation" 
	And I close all client application windows
	Given I open "ShipmentConfirmation" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form ShipmentConfirmation" exception
	And I close current window

Scenario: Open object form "ShipmentConfirmation"
	And I close all client application windows
	Given I open "ShipmentConfirmation" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form ShipmentConfirmation" exception
	And I close current window
	
Scenario: Open list form "Unbundling" 
	And I close all client application windows
	Given I open "Unbundling" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form Unbundling" exception
	And I close current window

Scenario: Open object form "Unbundling"
	And I close all client application windows
	Given I open "Unbundling" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form Unbundling" exception
	And I close current window

Scenario: Open list form "StockAdjustmentAsWriteOff" 
	And I close all client application windows
	Given I open "StockAdjustmentAsWriteOff" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form StockAdjustmentAsWriteOff" exception
	And I close current window

Scenario: Open object form "StockAdjustmentAsWriteOff"
	And I close all client application windows
	Given I open "StockAdjustmentAsWriteOff" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form StockAdjustmentAsWriteOff" exception
	And I close current window




	
	
Scenario: Open list form "StockAdjustmentAsSurplus" 
	And I close all client application windows
	Given I open "StockAdjustmentAsSurplus" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form StockAdjustmentAsSurplus" exception
	And I close current window

Scenario: Open object form "StockAdjustmentAsSurplus"
	And I close all client application windows
	Given I open "StockAdjustmentAsSurplus" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form StockAdjustmentAsSurplus" exception
	And I close current window




	
	
Scenario: Open list form "PhysicalInventory" 
	And I close all client application windows
	Given I open "PhysicalInventory" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form PhysicalInventory" exception
	And I close current window

Scenario: Open object form "PhysicalInventory"
	And I close all client application windows
	Given I open "PhysicalInventory" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form PhysicalInventory" exception
	And I close current window


Scenario: Open list form "RetailSalesReceipt" 
	And I close all client application windows
	Given I open "RetailSalesReceipt" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form RetailSalesReceipt" exception
	And I close current window

Scenario: Open object form "RetailSalesReceipt"
	And I close all client application windows
	Given I open "RetailSalesReceipt" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form RetailSalesReceipt" exception
	And I close current window

Scenario: Open list form "RetailReturnReceipt" 
	And I close all client application windows
	Given I open "RetailReturnReceipt" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form RetailReturnReceipt" exception
	And I close current window

Scenario: Open object form "RetailReturnReceipt"
	And I close all client application windows
	Given I open "RetailReturnReceipt" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form RetailReturnReceipt" exception
	And I close current window
	
Scenario: Open list form "CashStatement" 
	And I close all client application windows
	Given I open "CashStatement" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form CashStatement" exception
	And I close current window

Scenario: Open object form "CashStatement"
	And I close all client application windows
	Given I open "CashStatement" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form CashStatement" exception
	And I close current window


Scenario: Open list form "ItemStockAdjustment" 
	And I close all client application windows
	Given I open "ItemStockAdjustment" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form ItemStockAdjustment" exception
	And I close current window

Scenario: Open object form "ItemStockAdjustment"
	And I close all client application windows
	Given I open "ItemStockAdjustment" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form ItemStockAdjustment" exception
	And I close current window

Scenario: Open list form "PlannedReceiptReservation" 
	And I close all client application windows
	Given I open "PlannedReceiptReservation" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form PlannedReceiptReservation" exception
	And I close current window

Scenario: Open object form "PlannedReceiptReservation"
	And I close all client application windows
	Given I open "PlannedReceiptReservation" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form PlannedReceiptReservation" exception
	And I close current window

Scenario: Open list form "SalesOrderClosing" 
	And I close all client application windows
	Given I open "SalesOrderClosing" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form SalesOrderClosing" exception
	And I close current window

Scenario: Open object form "SalesOrderClosing"
	And I close all client application windows
	Given I open "SalesOrderClosing" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form SalesOrderClosing" exception
	And I close current window

Scenario: Open list form "VendorsAdvancesClosing" 
	And I close all client application windows
	Given I open "VendorsAdvancesClosing" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form VendorsAdvancesClosing" exception
	And I close current window

Scenario: Open object form "VendorsAdvancesClosing"
	And I close all client application windows
	Given I open "VendorsAdvancesClosing" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form VendorsAdvancesClosing" exception
	And I close current window

Scenario: Open list form "CustomersAdvancesClosing" 
	And I close all client application windows
	Given I open "CustomersAdvancesClosing" document default form
	If the warning is displayed then
		Then I raise "Failed to open document list form CustomersAdvancesClosing" exception
	And I close current window

Scenario: Open object form "CustomersAdvancesClosing"
	And I close all client application windows
	Given I open "CustomersAdvancesClosing" document main form
	If the warning is displayed then
		Then I raise "Failed to open document object form RetailReturnReceipt" exception
	And I close current window

Scenario: Open list form "ChequeBondTransaction" 
	And I close all client application windows
	Given I open "ChequeBondTransaction" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form ChequeBondTransaction" exception
	And I close current window

Scenario: Open object form "ChequeBondTransaction"
	And I close all client application windows
	Given I open "ChequeBondTransaction" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form ChequeBondTransaction" exception
	And I close current window

Scenario: Open list form "ConsolidatedRetailSales" 
	And I close all client application windows
	Given I open "ConsolidatedRetailSales" document default form
	If the warning is displayed then
		Then I raise "Failed to open document form ConsolidatedRetailSales" exception
	And I close current window

Scenario: Open object form "ConsolidatedRetailSales"
	And I close all client application windows
	Given I open "ConsolidatedRetailSales" document main form
	If the warning is displayed then
		Then I raise "Failed to open document form ConsolidatedRetailSales" exception
	And I close current window



Scenario: Open choise form "ChequeBondTransaction"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.ChequeBondTransaction.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form ChequeBondTransaction" exception
	And I close current window

Scenario: Open choise form "CashStatement"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.CashStatement.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form CashStatement" exception
	And I close current window

Scenario: Open choise form "ReconsiliationStatement"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.ReconciliationStatement.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form ReconsiliationStatement" exception
	And I close current window

Scenario: Open choise form "GoodsReceipt"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.GoodsReceipt.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form GoodsReceipt" exception
	And I close current window

Scenario: Open choise form "RetailReturnReceipt"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.RetailReturnReceipt.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form RetailReturnReceipt" exception
	And I close current window

Scenario: Open choise form "CreditNote"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.CreditNote.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form CreditNote" exception
	And I close current window

Scenario: Open choise form "DeditNote"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.DebitNote.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form DeditNote" exception
	And I close current window

Scenario: Open choise form "BankReceipt"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.BankReceipt.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form BankReceipt" exception
	And I close current window

Scenario: Open choise form "PurchaseReturn"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.PurchaseReturn.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form PurchaseReturn" exception
	And I close current window

Scenario: Open choise form "ShipmentConfirmation"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.ShipmentConfirmation.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form ShipmentConfirmation" exception
	And I close current window

Scenario: Open choise form "CashReceipt"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.CashReceipt.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form CashReceipt" exception
	And I close current window

Scenario: Open choise form "BankPayment"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.BankPayment.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form BankPayment" exception
	And I close current window

Scenario: Open choise form "Labeling"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.Labeling.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form Labeling" exception
	And I close current window

Scenario: Open choise form "StockAdjustmentAsWriteOff"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.StockAdjustmentAsWriteOff.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form StockAdjustmentAsWriteOff" exception
	And I close current window

Scenario: Open choise form "StockAdjustmentAsSurplus"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.StockAdjustmentAsSurplus.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form StockAdjustmentAsSurplus" exception
	And I close current window

Scenario: Open choise form "OpeningEntry"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.OpeningEntry.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form OpeningEntry" exception
	And I close current window

Scenario: Open choise form "CashExpense"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.CashExpense.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form CashExpense" exception
	And I close current window

Scenario: Open choise form "IncomingPaymentOrder"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.IncomingPaymentOrder.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form IncomingPaymentOrder" exception
	And I close current window

Scenario: Open choise form "OutgoingPaymentOrder"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.OutgoingPaymentOrder.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form OutgoingPaymentOrder" exception
	And I close current window

Scenario: Open choise form "Bundling"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.Bundling.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form Bundling" exception
	And I close current window

Scenario: Open choise form "CashPayment"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.CashPayment.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form CashPayment" exception
	And I close current window

Scenario: Open choise form "PhysicalInventory"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.PhysicalInventory.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form PhysicalInventory" exception
	And I close current window

Scenario: Open choise form "Unbundling"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.Unbundling.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form Unbundling" exception
	And I close current window

Scenario: Open choise form "CashRevenue"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.CashRevenue.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form CashRevenue" exception
	And I close current window

Scenario: Open choise form "ItemStockAdjustment"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.ItemStockAdjustment.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form ItemStockAdjustment" exception
	And I close current window

Scenario: Open choise form "ManualRegisterEntry"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.ItemStockAdjustment.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form ManualRegisterEntry" exception
	And I close current window

Scenario: Open choise form "SalesOrderClosing"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.SalesOrderClosing.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form SalesOrderClosing" exception
	And I close current window

Scenario: Open choise form "PlannedReceiptReservation"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.PlannedReceiptReservation.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form PlannedReceiptReservation" exception
	And I close current window

Scenario: Open choise form "PurchaseOrderClosing"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.PurchaseOrderClosing.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form PurchaseOrderClosing" exception
	And I close current window


Scenario: Open choise form "JournalEntry"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.JournalEntry.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form JournalEntry" exception
	And I close current window

Scenario: Open choise form "MoneyTransfer"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.MoneyTransfer.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form MoneyTransfer" exception
	And I close current window

Scenario: Open choise form "RetailSalesReceipt"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.RetailSalesReceipt.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form RetailSalesReceipt" exception
	And I close current window

Scenario: Open choise form "SalesInvoice"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.SalesInvoice.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form SalesInvoice" exception
	And I close current window

Scenario: Open choise form "PurchaseOrder"
	And I close all client application windows
	And I execute the built-in language code (Extension)
		| 'OpenForm("Document.PurchaseOrder.ChoiceForm", , Undefined, , , , , FormWindowOpeningMode.Independent)' |
	If the warning is displayed then
		Then I raise "Failed to open document choise form PurchaseOrder" exception
	And I close current window