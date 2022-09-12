@isTest
public class CopadoContactUtilsTest {
    @isTest
    public static void testGetAge(){
        Copado_Contact__c contact = new Copado_Contact__c(Name='Test Subject');
        contact.Birthdate__c = Date.newInstance(1973, 12, 28);
        Date dt = Date.today();
        Integer expectedAge = dt.daysBetween(contact.Birthdate__c)/365;
		Integer calculatedAge = CopadoContactUtilities.getAge(contact);
		System.assertEquals(expectedAge, calculatedAge, 'expectedAge:'+expectedAge+',calculatedAge:'+calculatedAge);        
    }

}