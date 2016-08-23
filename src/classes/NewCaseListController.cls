public class NewCaseListController {

    public List<Case> getNewCases() {
        
        List<Case> caseList = [SELECT Id, Subject, Status, CaseNumber FROM Case WHERE Status = 'New' ORDER BY Subject];
        
        return caseList;
    }
}