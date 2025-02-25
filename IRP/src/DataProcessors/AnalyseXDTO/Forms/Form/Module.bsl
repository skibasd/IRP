
&AtServer
Procedure ReadStructureAtServer()
	
	ArrayList = New Array;
	XDTOType = CommonFunctionsServer.XDTOFactoryObject(Object.WSName).Type(Object.URI, Object.TypeName);
	Obj = ConvertXDTO.ObjectXDTOStructure(XDTOType, ArrayList, Object.WSName, Not EmptyValues); 
	TreeData.GetItems().Clear();
	NewRow = TreeData.GetItems().Add();
	NewRow.Name = Object.TypeName;
	ObjXDTO = ObjectXDTO(Obj, Object.TypeName, Object.URI, NewRow);	

	XML = CommonFunctionsServer.SerializeXMLUseXDTOFactory(ObjXDTO, , , , Object.WSName);

	XSLT = GetCommonTemplate("XMLPrettyPrint").GetText();
	
    HTML = CommonFunctionsServer.XSLTransformation(XML, XSLT);
	
	JSON = CommonFunctionsServer.SerializeJSONUseXDTOFactory(ObjXDTO);
	
EndProcedure

&AtClient
Procedure ReadStructure(Command)
	ReadStructureAtServer();
EndProcedure

&AtServer
Function ObjectXDTO(ObjectStructure, TypeName, URI, TreeData)
	
	// In every list first line we pass by, and start with second one. First line is a template one.
	
	XDTOType = CommonFunctionsServer.XDTOFactoryObject(Object.WSName).Type(URI, TypeName);
	
	DataXDTO = CommonFunctionsServer.XDTOFactoryObject(Object.WSName).Create(XDTOType);
	
	If ObjectStructure = Undefined Then
		Return DataXDTO;
	EndIf;

	For Each ObjectData In ObjectStructure Do
		
		If TypeOf(ObjectData) = Type("KeyAndValue") AND TypeOf(ObjectData.Value) = Type("Structure") Then // Object
			XDTOTypeStructure = XDTOType.Properties.Get(ObjectData.Key).Type;
		
			NewRow = TreeData.GetItems().Add();
			NewRow.Name = ObjectData.Key;
			NewRow.CanBeEmpty = XDTOType.Properties.Get(ObjectData.Key).LowerBound = 0;
			DataXDTO[ObjectData.Key] = ObjectXDTO(ObjectData.Value, XDTOTypeStructure.Name, XDTOTypeStructure.NamespaceURI, NewRow);
		ElsIf TypeOf(ObjectData) = Type("KeyAndValue") AND TypeOf(ObjectData.Value) = Type("Array") Then // List
			XDTOTypeRow = XDTOType.Properties.Get(ObjectData.Key).Type;
			
			NewRowArray = TreeData.GetItems().Add();
			NewRowArray.Name = ObjectData.Key;
			NewRowArray.Array = TypeOf(ObjectData.Value) = Type("Array");			
			NewRowArray.CanBeEmpty =  XDTOType.Properties.Get(ObjectData.Key).LowerBound = 0;
			For Each Row In ObjectData.Value Do
				If Not (TypeOf(Row) = Type("Array") OR TypeOf(Row) = Type("Structure")) Then
					DataXDTORow = Row;
				Else
					DataXDTORow = CommonFunctionsServer.XDTOFactoryObject(Object.WSName).Create(XDTOTypeRow);
					For Each Str In Row Do
						
						If Str.Key = "__content" Then
							NewRow = NewRowArray.GetItems().Add();
							NewRow.Name = Str.Key;
	
							SetObject(DataXDTORow, XDTOTypeRow, Str.Key, Str.Value, NewRow);
						EndIf;
						If Str.Value = Undefined Then
							Continue;
						EndIf; 
						
						XDTOTypeStructure = XDTOTypeRow.Properties.Get(Str.Key).Type;
						
						If TypeOf(DataXDTORow[Str.Key]) =  Type("XDTOList") Then
							
							NewRow = NewRowArray.GetItems().Add();
							NewRow.Name = Str.Key;
							NewRow.CanBeEmpty =  XDTOTypeRow.Properties.Get(Str.Key).LowerBound = 0;
							If CommonFunctionsServer.XDTOFactoryObject(Object.WSName).Create(XDTOTypeStructure) = Undefined Then // Simple type
								For Each El In Str.Value Do
									DataXDTORow[Str.Key].Add(El);
								EndDo;
							Else
								DataXDTORow[Str.Key].Add(ObjectXDTO(Str.Value, XDTOTypeStructure.Name, XDTOTypeStructure.NamespaceURI, NewRow));
							EndIf;
						ElsIf TypeOf(Str.Value) = Type("Structure") Then
							
							NewRow = NewRowArray.GetItems().Add();
							NewRow.Name = Str.Key;
							NewRow.CanBeEmpty =  XDTOTypeRow.Properties.Get(Str.Key).LowerBound = 0;
							DataXDTORow[Str.Key] = ObjectXDTO(Str.Value, XDTOTypeStructure.Name, XDTOTypeStructure.NamespaceURI, NewRow);
						Else 
							NewRow = NewRowArray.GetItems().Add();
							NewRow.Name = Str.Key;
							NewRow.CanBeEmpty =  XDTOTypeRow.Properties.Get(Str.Key).LowerBound = 0;
							SetObject(DataXDTORow, XDTOTypeStructure, Str.Key, Str.Value, NewRow);
						EndIf;
					EndDo;
				EndIf;
				DataXDTO[ObjectData.Key].Add(DataXDTORow);
			EndDo; 
		ElsIf TypeOf(ObjectData) = Type("Structure") Then
			For Each ObjectDataKeyValue In ObjectData Do
				XDTOTypeStructure = XDTOType.Properties.Get(ObjectDataKeyValue.Key).Type;
				
				NewRow = TreeData.GetItems().Add();
				NewRow.Name = ObjectDataKeyValue.Key;
				NewRow.CanBeEmpty = XDTOType.Properties.Get(ObjectDataKeyValue.Key).LowerBound = 0;
				If ObjectDataKeyValue.Key = "__content" Then
					SetObject(DataXDTO, XDTOType, ObjectDataKeyValue.Key, ObjectDataKeyValue.Value, NewRow);
				EndIf;
				If ObjectDataKeyValue.Value = Undefined Then
					Continue;
				EndIf; 
				If TypeOf(DataXDTO[ObjectDataKeyValue.Key]) =  Type("XDTOList") Then
					If CommonFunctionsServer.XDTOFactoryObject(Object.WSName).Create(XDTOTypeStructure) = Undefined Then // Simple type
						For Each El In ObjectDataKeyValue.Value Do
							DataXDTO[ObjectDataKeyValue.Key].Add(El);
						EndDo;
					Else
						XDTOSet = ObjectXDTO(ObjectDataKeyValue.Value, XDTOTypeStructure.Name, XDTOTypeStructure.NamespaceURI, NewRow);
						DataXDTO[ObjectDataKeyValue.Key].Add(XDTOSet);
					EndIf;
				ElsIf TypeOf(ObjectDataKeyValue.Value) = Type("Structure") Then
					DataXDTO[ObjectDataKeyValue.Key] = ObjectXDTO(ObjectDataKeyValue.Value, XDTOTypeStructure.Name, XDTOTypeStructure.NamespaceURI, NewRow);
				Else 
					SetObject(DataXDTO, XDTOTypeStructure, ObjectDataKeyValue.Key, ObjectDataKeyValue.Value, NewRow);
				EndIf;

			EndDo;
		
		ElsIf TypeOf(ObjectData) = Type("KeyAndValue") Then
			NewRow = TreeData.GetItems().Add();
			NewRow.Name = ObjectData.Key;
			NewRow.CanBeEmpty = XDTOType.Properties.Get(ObjectData.Key).LowerBound = 0;
			NewRow.Value = ObjectData.Value;
			SetObject(DataXDTO, XDTOType, ObjectData.Key, ObjectData.Value, TreeData);
		Else
			 
		EndIf; 
		
	EndDo;

	Return DataXDTO;
	
EndFunction

&AtServer
Procedure SetObject(XDTO, Type, Property, Val Value = Undefined, NewRow)
		
	If NOT ValueIsFilled(Value) Then
		ContData = Type.Properties.Get(Property);
		ContentType = ContData.Type;
		NewRow.DataType = ContentType.Name;
		
		If ContentType.Name = "normalizedString" OR ContentType.Name = "string" Then
			 Value = "";
		ElsIf ContentType.Name = "dateTime" OR ContentType.Name = "date" OR ContentType.Name = "time" Then	
			 Value = Date(1, 1, 1, 0, 0, 0);
		ElsIf ContentType.Name = "boolean" Then	
			 Value = False;
		ElsIf ContentType.Name = "NumericType" OR ContentType.Name = "decimal" Then	
			 Value = 0;
		ElsIf ContentType.Name = "base64Binary" Then	
			Body = New MemoryStream();
			DataWriter = New DataWriter(Body, TextEncoding.UTF8);
			DataWriter.WriteLine("");
			DataWriter.Close();
			BD = Body.CloseAndGetBinaryData();
			
			Value = Base64String(BD);
		Else
			Return;
		EndIf; 
		NewRow.DataType = ContentType.Name;
		NewRow.Value = Value;
		
		If NOT ValueIsFilled(Value) Then
			Return;	
		EndIf; 
		XDTO[Property] = Value;	
		Return;
	EndIf; 
	
	If NOT ValueIsFilled(Value) Then
		Return;	
	EndIf; 

	XDTO[Property] = Value;

EndProcedure

&AtServer
Procedure ValidateXMLAtServer()
	TypeXDTO = CommonFunctionsServer.XDTOFactoryObject(Object.WSName).Type(Object.URI, Object.TypeName);
	XDTOObj = CommonFunctionsServer.DeserializeXMLUseXDTOFactory(XMLToValidate, TypeXDTO);
	XDTOObj.Validate();
EndProcedure

&AtClient
Procedure ValidateXML(Command)
	ValidateXMLAtServer();
EndProcedure

&AtServer
Procedure ValidateJSONAtServer()
	TypeXDTO = CommonFunctionsServer.XDTOFactoryObject(Object.WSName).Type(Object.URI, Object.TypeName);
	XDTOObj = CommonFunctionsServer.DeserializeJSONUseXDTOFactory(XMLToValidate, TypeXDTO);
	XDTOObj.Validate();
EndProcedure

&AtClient
Procedure ValidateJSON(Command)
	ValidateJSONAtServer();
EndProcedure

&AtServer
Procedure OnCreateAtServer(Cancel, StandardProcessing)
	For Each WS In Metadata.WSReferences Do
		Items.WSName.ChoiceList.Add(WS.Name);
	EndDo;
EndProcedure
