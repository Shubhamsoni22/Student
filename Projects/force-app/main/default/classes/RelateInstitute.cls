public class RelateInstitute {
    public string selectInst{get;set;}
    public Boolean displayMentor {get; set;}
    public list<selectoption> instituteList{get;set;}
    public List<Mentor__c> mentorList{get;set;}
    public List<Student__c> studentList{get;set;}
    public string selectId{get;set;}
    
    public RelateInstitute(){
        selectInst = '';
        displayMentor=false;
        instituteList = new list<selectOption>();
        instituteList.add(new selectOption('','Select Institute'));
        List<Institute__c> temp = new List<Institute__c>([select name from Institute__c order by name]);
        for(Institute__c inst : temp) {
            instituteList.add(new selectOption(inst.id,inst.name));
        }
    }
    public pagereference displayMentors() {
        displayMentor=true;
        mentorList = [SELECT ID, Name, Designation__c FROM Mentor__c where Institute__r.id = :selectInst];
        return null;
    } 
      public pagereference showStudents() {
        studentList = [SELECT ID, Name, Class__c,City__c,state__c FROM Student__c where Mentor__r.id = :selectId ];
        return null;
    }
    
}