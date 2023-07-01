public with sharing class Mailing {

   public static void sendEmail(){
       //We instantiate our single email message object
       Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();

       // Strings to hold the email addresses to which you are sending the email.
       List<String> toAddresses = new List<String> {'Padmanabham.Padmanabham@ibm.com'};
       //Assign the TO address to our mail object
       mail.setToAddresses(toAddresses);

       // Set the subject line for your email address.
       mail.setSubject('Can you dig it?');

       // You can specify your plain text here
       mail.setPlainTextBody('Yes we can');

       //Specify any html - for example this will display a link in the email
       mail.setHtmlBody('Yes we can');

       // Send the email
       Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
   }
}