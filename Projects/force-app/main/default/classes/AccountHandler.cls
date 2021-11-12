public class AccountHandler {
   public static Account insertNewAccount(String str)
    {
        Account act=new Account();
        act.Name=str;
        Try
        {
            insert act;
        }
        Catch(Exception E)
        {
            return null;
        }
        return act;
    }
}