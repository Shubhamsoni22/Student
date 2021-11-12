public class Task1 {
    public List<SelectOption> getLists()
    {
       List<SelectOption> opt=new List<SelectOption>();
        opt.add(new SelectOption('Select Institute','Select Institute'));
        opt.add(new SelectOption('LN Medical College','LN Medical College'));
        opt.add(new SelectOption('MGM Medical College','MGM Medical College'));
        opt.add(new SelectOption('AIMS Medical College','AIMS Medical College'));
        return opt;
    }
}