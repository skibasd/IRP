﻿#language: en
@tree
@SettingsFilters


Feature: filters


Variables:
Path = "{?(ValueIsFilled(ПолучитьСохраненноеЗначениеИзКонтекстаСохраняемого("Path")), ПолучитьСохраненноеЗначениеИзКонтекстаСохраняемого("Path"), "#workingDir#")}"



Background:
	Given I open new TestClient session or connect the existing one

Scenario: _9001 preparation
	// 01.01-07.01 for Склад производства 04, 08.01-15.01 for Склад производства 04 и Склад производства 05
	When set True value to the constant
	And I close TestClient session
	Given I open new TestClient session or connect the existing one
	When Create catalog BusinessUnits objects (MF)
	Given I open hyperlink 'e1cib/list/Catalog.PlanningPeriods'
	If "List" table does not contain lines Then
		| "Description"   |
		| 'Current day'   |	
		| 'Current month' |
		* Current day
			And I click the button named "FormCreate"
			And I input "Current day" text in "Description" field
			And I change the radio button named "Type" value to "Manufacturing"		
			And I input current date in "Begin date" field
			And I input current date in "End date" field
			And I save the value of "Begin date" field as "$$StartDateCurrentDay$$"
			And I save the value of "End date" field as "$$EndDateCurrentDay$$"
			And in the table "BusinessUnits" I click the button named "BusinessUnitsAdd"
			And I click choice button of "Business unit" attribute in "BusinessUnits" table
			And I go to line in "List" table
				| 'Description'           |
				| 'Цех 06' |
			And I select current line in "List" table
			And I click "Save and close" button	
		* Next day
			And I click the button named "FormCreate"
			And I input "Next day" text in "Description" field
			And I save "Format((EndOfDay(CurrentDate()) + 1), \"DF=dd.MM.yyyy\")" in "$$$$DateNextDay$$$$" variable
			And I input "$$$$DateNextDay$$$$" variable value in "Begin date" field
			And I input "$$$$DateNextDay$$$$" variable value in "End date" field
			And I change the radio button named "Type" value to "Manufacturing"	
			And in the table "BusinessUnits" I click the button named "BusinessUnitsAdd"
			And I click choice button of "Business unit" attribute in "BusinessUnits" table
			And I go to line in "List" table
				| 'Description'           |
				| 'Цех 06' |
			And I select current line in "List" table
			And I click "Save and close" button	
		* Current month
			And I click the button named "FormCreate"
			And I input "Current month" text in "Description" field
			And I input end of the current month date in "End date" field
			And I input begin of the current month date in "Begin date" field
			And I save the value of "Begin date" field as "$$StartDateCurrentMonth$$"
			And I save the value of "End date" field as "$$EndDateCurrentMonth$$"
			And I change the radio button named "Type" value to "Manufacturing"	
			And in the table "BusinessUnits" I click the button named "BusinessUnitsAdd"
			And I click choice button of "Business unit" attribute in "BusinessUnits" table
			And I go to line in "List" table
				| 'Description'           |
				| 'Цех 07' |
			And I select current line in "List" table
			And in the table "BusinessUnits" I click the button named "BusinessUnitsAdd"
			And I click choice button of "Business unit" attribute in "BusinessUnits" table
			And I go to line in "List" table
				| 'Description'           |
				| 'Склад производства 04' |
			And I select current line in "List" table	
			And I click "Save and close" button	

Scenario: _9005 business units and planning periods filters in the document Production planning
	* Check filling in current Planning period when open document (business unit from user settings)
		Given I open hyperlink 'e1cib/list/Document.ProductionPlanning'
		And I click the button named "FormCreate"
		And I click Select button of "Business unit" field
		And I go to line in "List" table
			| 'Description'           |
			| 'Склад производства 04' |
		And I select current line in "List" table		
		Then the form attribute named "PlanningPeriod" became equal to "Current month"
		Then the form attribute named "PlanningPeriodBeginDate" became equal to "$$StartDateCurrentMonth$$"
		Then the form attribute named "PlanningPeriodEndDate" became equal to "$$EndDateCurrentMonth$$"
		And I click Select button of "Planning period" field
		And "List" table contains lines
		| 'Description'   |
		| 'Current month' |
		Then the number of "List" table lines is "равно" "1"
		And I close current window
	* Change business unit and check Planning period
		And I click Select button of "Business unit" field
		And I go to line in "List" table
			| 'Description' |
			| 'Цех 06'      |
		And I select current line in "List" table
		Then "1C:Enterprise" window is opened
		And I click "Yes" button		
		Then the form attribute named "PlanningPeriod" became equal to "Current day"
		Then the form attribute named "PlanningPeriodBeginDate" became equal to "$$StartDateCurrentDay$$"
		Then the form attribute named "PlanningPeriodEndDate" became equal to "$$EndDateCurrentDay$$"
		And I click Select button of "Planning period" field
		And "List" table contains lines
			| 'Description'   |
			| 'Current day' |
			| 'Next day' |
		Then the number of "List" table lines is "равно" "2"
		And I go to line in "List" table
			| 'Description' |
			| 'Next day'    |
		And I select current line in "List" table
		Then the form attribute named "PlanningPeriod" became equal to "Next day"
		Then the form attribute named "PlanningPeriodBeginDate" became equal to "$$$$DateNextDay$$$$"
		Then the form attribute named "PlanningPeriodEndDate" became equal to "$$$$DateNextDay$$$$"
		And I click Select button of "Business unit" field
		And I go to line in "List" table
			| 'Description' |
			| 'Склад производства 05'      |
		And I select current line in "List" table
		Then "1C:Enterprise" window is opened
		And I click "Yes" button
		Then the form attribute named "PlanningPeriod" became equal to ""
		And the editing text of form attribute named "PlanningPeriodBeginDate" became equal to "  .  .    "
		And the editing text of form attribute named "PlanningPeriodEndDate" became equal to "  .  .    "
	* Change date and check Planning period
		And I click Select button of "Business unit" field
		And I go to line in "List" table
			| 'Description' |
			| 'Цех 06'      |
		And I select current line in "List" table
		Then the form attribute named "PlanningPeriod" became equal to "Current day"
		Then the form attribute named "PlanningPeriodBeginDate" became equal to "$$StartDateCurrentDay$$"
		Then the form attribute named "PlanningPeriodEndDate" became equal to "$$EndDateCurrentDay$$"
		And I move to "Other" tab
		And I input "$$$$DateNextDay$$$$" variable value in "Date" field
		And I move to the next attribute
		Then "1C:Enterprise" window is opened
		And I click "Yes" button
		Then the form attribute named "PlanningPeriod" became equal to "Next day"
		Then the form attribute named "PlanningPeriodBeginDate" became equal to "$$$$DateNextDay$$$$"
		Then the form attribute named "PlanningPeriodEndDate" became equal to "$$$$DateNextDay$$$$"
		And I close all client application windows
		
		

Scenario: _9008 business units and planning periods filters in the document Production planning correction
	* Check filling in current Planning period when open document (business unit from user settings)
		Given I open hyperlink 'e1cib/list/Document.ProductionPlanningCorrection'
		And I click the button named "FormCreate"
		And I click Select button of "Business unit" field
		And I go to line in "List" table
			| 'Description'           |
			| 'Склад производства 04' |
		And I select current line in "List" table
		Then the form attribute named "PlanningPeriod" became equal to "Current month"
		Then the form attribute named "PlanningPeriodStartDate" became equal to "$$StartDateCurrentMonth$$"
		Then the form attribute named "PlanningPeriodEndDate" became equal to "$$EndDateCurrentMonth$$"
		And I click Select button of "Planning period" field
		And "List" table contains lines
		| 'Description'   |
		| 'Current month' |
		Then the number of "List" table lines is "равно" "1"
		And I close current window
	* Change business unit and check Planning period
		And I click Select button of "Business unit" field
		And I go to line in "List" table
			| 'Description' |
			| 'Цех 06'      |
		And I select current line in "List" table
		Then "1C:Enterprise" window is opened
		And I click "Yes" button		
		Then the form attribute named "PlanningPeriod" became equal to "Current day"
		Then the form attribute named "PlanningPeriodStartDate" became equal to "$$StartDateCurrentDay$$"
		Then the form attribute named "PlanningPeriodEndDate" became equal to "$$EndDateCurrentDay$$"
		And I click Select button of "Planning period" field
		And "List" table contains lines
			| 'Description' |
			| 'Current day' |
			| 'Next day'    |
		Then the number of "List" table lines is "равно" "2"
		And I go to line in "List" table
			| 'Description' |
			| 'Next day'    |
		And I select current line in "List" table
		Then the form attribute named "PlanningPeriod" became equal to "Next day"
		Then the form attribute named "PlanningPeriodStartDate" became equal to "$$$$DateNextDay$$$$"
		Then the form attribute named "PlanningPeriodEndDate" became equal to "$$$$DateNextDay$$$$"
		And I click Select button of "Business unit" field
		And I go to line in "List" table
			| 'Description' |
			| 'Склад производства 05'      |
		And I select current line in "List" table
		Then "1C:Enterprise" window is opened
		And I click "Yes" button		
		Then the form attribute named "PlanningPeriod" became equal to ""
		And the editing text of form attribute named "PlanningPeriodStartDate" became equal to "  .  .    "
		And the editing text of form attribute named "PlanningPeriodEndDate" became equal to "  .  .    "
	* Change date and check Planning period
		And I click Select button of "Business unit" field
		And I go to line in "List" table
			| 'Description' |
			| 'Цех 06'      |
		And I select current line in "List" table
		Then the form attribute named "PlanningPeriod" became equal to "Current day"
		Then the form attribute named "PlanningPeriodStartDate" became equal to "$$StartDateCurrentDay$$"
		Then the form attribute named "PlanningPeriodEndDate" became equal to "$$EndDateCurrentDay$$"
		And I move to "Other" tab
		And I input "$$$$DateNextDay$$$$" variable value in "Date" field
		And I move to the next attribute
		Then "1C:Enterprise" window is opened
		And I click "Yes" button
		Then the form attribute named "PlanningPeriod" became equal to "Next day"
		Then the form attribute named "PlanningPeriodStartDate" became equal to "$$$$DateNextDay$$$$"
		Then the form attribute named "PlanningPeriodEndDate" became equal to "$$$$DateNextDay$$$$"
		And I close all client application windows
				
		

Scenario: _9012 business units and planning periods filters in the document Production
	* Check filling in current Planning period when open document (business unit from user settings)
		Given I open hyperlink 'e1cib/list/Document.Production'
		And I click the button named "FormCreate"
		And I click Select button of "Business unit" field
		And I go to line in "List" table
			| 'Description'           |
			| 'Склад производства 04' |
		And I select current line in "List" table
		Then the form attribute named "PlanningPeriod" became equal to "Current month"
		Then the form attribute named "PlanningPeriodStartDate" became equal to "$$StartDateCurrentMonth$$"
		Then the form attribute named "PlanningPeriodEndDate" became equal to "$$EndDateCurrentMonth$$"
		And I click Select button of "Planning period" field
		And "List" table contains lines
		| 'Description'   |
		| 'Current month' |
		Then the number of "List" table lines is "равно" "1"
		And I close current window
	* Change business unit and check Planning period
		And I click Select button of "Business unit" field
		And I go to line in "List" table
			| 'Description' |
			| 'Цех 06'      |
		And I select current line in "List" table
		Then the form attribute named "PlanningPeriod" became equal to "Current day"
		Then the form attribute named "PlanningPeriodStartDate" became equal to "$$StartDateCurrentDay$$"
		Then the form attribute named "PlanningPeriodEndDate" became equal to "$$EndDateCurrentDay$$"
		And I click Select button of "Planning period" field
		And "List" table contains lines
			| 'Description'   |
			| 'Current day' |
			| 'Next day' |
		Then the number of "List" table lines is "равно" "2"
		And I go to line in "List" table
			| 'Description' |
			| 'Next day'    |
		And I select current line in "List" table
		Then the form attribute named "PlanningPeriod" became equal to "Next day"
		Then the form attribute named "PlanningPeriodStartDate" became equal to "$$$$DateNextDay$$$$"
		Then the form attribute named "PlanningPeriodEndDate" became equal to "$$$$DateNextDay$$$$"
		And I click Select button of "Business unit" field
		And I go to line in "List" table
			| 'Description' |
			| 'Склад производства 05'      |
		And I select current line in "List" table
		Then the form attribute named "PlanningPeriod" became equal to ""
		And the editing text of form attribute named "PlanningPeriodStartDate" became equal to "  .  .    "
		And the editing text of form attribute named "PlanningPeriodEndDate" became equal to "  .  .    "
	* Change date and check Planning period
		And I click Select button of "Business unit" field
		And I go to line in "List" table
			| 'Description' |
			| 'Цех 06'      |
		And I select current line in "List" table
		Then the form attribute named "PlanningPeriod" became equal to "Current day"
		Then the form attribute named "PlanningPeriodStartDate" became equal to "$$StartDateCurrentDay$$"
		Then the form attribute named "PlanningPeriodEndDate" became equal to "$$EndDateCurrentDay$$"
		And I move to "Other" tab
		And I input "$$$$DateNextDay$$$$" variable value in "Date" field
		And I move to the next attribute
		// Then "1C:Enterprise" window is opened
		// And I click "Yes" button
		Then the form attribute named "PlanningPeriod" became equal to "Next day"
		Then the form attribute named "PlanningPeriodStartDate" became equal to "$$$$DateNextDay$$$$"
		Then the form attribute named "PlanningPeriodEndDate" became equal to "$$$$DateNextDay$$$$"
		And I close all client application windows	
	





		
				

		
				


		
		
	

