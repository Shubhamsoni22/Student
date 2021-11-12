public class NewCaseListController {
    public List<Case> getNewCases()
    {
       List<Case> results= [Select Id,CaseNumber from case where status='New'];
       return results;
    }
}