@isTest
public class CopadoHelloWorldTest {
    @isTest
    public static void testSayHello() {
        // This is the base code
        String expectedHello = 'Hello from Copado, and hello from DEV3';
        String actualHello = CopadoHelloWorld.sayHello();
        System.assertEquals(expectedHello,actualHello,'You are not saying Hello very well');
    }
}