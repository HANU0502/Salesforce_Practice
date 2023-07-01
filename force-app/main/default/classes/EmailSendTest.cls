@isTest
class EmailSendTest {
    public static testMethod void test(){
        String a = 'abc';
        Test.StartTest();
        EmailSend.ApiRequest();
        EmailSend.apexJobsMethod();
        EmailSend.CurrentFileStorage();
        EmailSend.FeatureLicenses();
        EmailSend.dataStoragemethod();

        Test.stopTest();
    }
    public static testMethod void testschedule() {
       
		Test.StartTest();
        try{
             EmailSend.CurrentDataStorage();
        }
        catch(exception e){   
        }
		Test.stopTest();
	}
     public static testMethod void testss() {
		Test.StartTest();
        try{
			EmailSend.sendMail();
            EmailSend.userLicenseMethod();
        }
        catch(exception e){   
        }
		Test.stopTest();
	}
}