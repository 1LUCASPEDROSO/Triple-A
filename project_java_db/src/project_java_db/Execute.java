package project_java_db;
import java.util.*;
import java.sql.SQLException;
public class Execute {

    public static void main(String[] args) {
        Scanner read = new Scanner(System.in);
        char op;
        int option;

        class_DataContacts cdc = new class_DataContacts();

        do {
            System.out.println("what is your option ?\n [1] - cadastrer\n [2] - List all contacts\n [3] - delete contact\n [4] - Update the contact");
            System.out.print("digit here: ");
            option = read.nextInt();
            switch (option) {
                case 1:
                    // crete new contact
            try {
                    System.out.print("digit the name of contact: ");
                    cdc.setName(read.next());
                    System.out.print("digit the phone of contact: ");
                    cdc.setPhone(read.next());
                    System.out.print("digit the email of contact: ");
                    cdc.setEmail(read.next());
                    db_contacts.cadastrerContact(cdc);
                    System.out.println("cadastrer have sucess");
                } catch (SQLException error) {
                    System.out.println("error at gerate cadstrer\n case:" + error.getMessage());
                }// END catch            
                break;
                case 2: 
                    // select all data of contacts
            try {
                    // create new ArrayList to recive the ArrayList creted in class_DataContacts
                    ArrayList<class_DataContacts> List = new ArrayList<>();
                    List = db_contacts.ContactList();
                    // running the data resultd of query 
                    for (int i = 0; i < List.size(); i++) {
                        System.out.println("\nID: " + List.get(i).getIdContact()
                                + "\nNAME: " + List.get(i).getName()
                                + "\nPHONE: " + List.get(i).getPhone()
                                + "\nEMAIL: " + List.get(i).getEmail());
                        System.out.println("===========================================");
                    }// END for
                } catch (SQLException error) {
                    System.out.println("Error in the table.\n case: " + error.getMessage());
                }
                break;
                case 3:
                    // delete contact
                    try {
                    System.out.print("digit here the name of contact to deleted in table: ");
                    cdc.setName(read.next());
                    db_contacts.deleteContact(cdc);
                } catch (Exception error) {

                    System.out.println("Error in deleted the contact in table\n causa: " + error.getMessage());
                }
                break;
                case 4:
                    try {
                    class_DataContacts CDC = new class_DataContacts();
                    System.out.println("whats is name in the datas would you like Uptade ?");
                    System.out.print("Digit here: ");
                    CDC.setName(read.next());
                    db_contacts.AtualizeContact(CDC);
                } catch (Exception error) {
                    System.out.println("Error in realize uptade in the contact in table\n causa: " + error.getMessage());
                }

                break;
                default:
                    System.out.println("not exists this option !!!!");
            }// END swith case
            System.out.println(" realize a new operation ? [S] - for YES\n [N] - for NOT");
            System.out.print("digit here: ");
            op = read.next().charAt(0);
        } while (op == 's');
    }// main
}// class
