public class CopadoContactUtilities {
    public static Integer getAge(Copado_Contact__c contact) {
        if (contact.Birthdate__c != null) {
	        Date dt = Date.today();
	        Integer days = dt.daysBetween(contact.Birthdate__c);
            return Integer.valueOf(days/365);
        }
        String dummyline = contact.Name;	//Line added in DEV1
        return 0;
    }

}