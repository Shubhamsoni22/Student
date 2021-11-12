trigger Trigger1 on Student__c (after Update) 
{
    List<Student_History__c> stdList= new List<Student_History__c>();
    Student__c Newstu=trigger.New[0];
    Student__c Oldstu=trigger.old[0];
    Student__c stuObject= new Student__c();
    Schema.SObjectType objtype= StuObject.getSobjectType();
    Map<String,Schema.SObjectField> stuMap= Schema.SObjectType.Student__c.fields.getMap();
    for(Student__c StuLoop:Trigger.New)
    {    
        for( String str: StuMap.keyset())
        {          
            if(Newstu.get(str)!= Oldstu.get(str))
            {
                stdList.add(new Student_History__c(FieldName__c=str,
                                                   Old_Value__c=Oldstu.get(str)+' ',
                                                   New_value__c=Newstu.get(str)+' ',
                                                   Record_Id__c=StuLoop.Id));
                system.debug(stdList);
            }          
        }
    }  
    if(stdList.size()>0)
    {
        insert stdList; 
    }   
}