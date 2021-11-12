public class UserContorller {
 public List<SelectOption> getInstituteList()
    {
        List<SelectOption> InstituteList = new List<SelectOption>();
        
       InstituteList.add(new SelectOption('Select Institute','Select Institute'));
        InstituteList.add(new SelectOption('IIT Madras','IIT Madras'));
        InstituteList.add(new SelectOption('IIT Bombay','IIT Bombay'));
        InstituteList.add(new SelectOption('IIT Delhi','IIT Delhi'));
        
        return InstituteList;
    }
}