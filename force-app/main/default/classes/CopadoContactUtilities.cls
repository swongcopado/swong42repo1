public class CopadoContactUtilities {
    public static Integer getAge(Copado_Contact__c contact) {
        // This section below added in DEV2
        if (contact==null) {
            return 0;
        }
        // This section from original code
        if (contact.Birthdate__c != null) {
	        Date dt = Date.today();
	        Integer days = dt.daysBetween(contact.Birthdate__c);
            return Integer.valueOf(days/365);
        }
        String dev1DummyLine = contact.Name;	//US-0000004 in DEV1
        return 0;
    }

}