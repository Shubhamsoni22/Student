@istest
public class TestRestrictContactByName {
    @istest
    public static void Testcontact (){      
     Contact ct = new Contact();
       ct.Lastname = 'INVALIDNAME';       
     Database.SaveResult res = Database.insert(ct,False);
        System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML',res.getErrors()[0].getMessage());
    }
}