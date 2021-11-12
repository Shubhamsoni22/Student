public class RandomContactFactory {
   
    public static List<Contact>generateRandomContacts(Integer num,String lastname){
        List<Contact> contactList = new List<Contact>();
        for(Integer  i  = 1;i<=num;i++){
            Contact ct  =  new Contact(FirstName = 'Test'+i,lastname = lastname);
           
            contactList.add(ct);
        }
        return contactlist;
    }

}