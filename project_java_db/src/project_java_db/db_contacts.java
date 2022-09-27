package project_java_db;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.util.Scanner;
public class db_contacts {

public static void cadastrerContact(class_DataContacts dc) throws SQLException {
    try {
        // pass  datas to database in this interface 
        Connection conection = class_conection.conector();
        Statement St = conection.createStatement();
        // create querry of SQL (insert)
        String sql = "insert into contact_book values (null,'"+dc.getName()+"','"+dc.getPhone()+"','"+dc.getEmail()+"');";
        St.execute(sql);
        St.close();
        conection.close();
    } catch (SQLException error) {
        throw new SQLException("Error to insert data in database.\n causa: "+error.getMessage());
    }
 }// END method to create cadastrer 

    public static ArrayList<class_DataContacts> ContactList() throws SQLException {
        try {
            // pass data of DB for this class
            Connection conection = class_conection.conector();
            // create condition to use SQL in java 
            Statement St = conection.createStatement();
            // write the querry in SQL (insert)
            String sql = "select * from contact_book;";
            ResultSet Rs = St.executeQuery(sql);
            // create one dinamic vetor (ArrayList) to put result of query
            ArrayList<class_DataContacts> ListAux = new ArrayList<>();
            // running the registrers (lines in table of database)
            while (Rs.next()) {
                class_DataContacts CDC = new class_DataContacts();
                CDC.setIdContact(Rs.getInt("id_contact"));
                CDC.setName(Rs.getString("nome"));
                CDC.setPhone(Rs.getString("phone"));
                CDC.setEmail(Rs.getString("email"));
                // put a new while one element(object) in ArrayList
                ListAux.add(CDC);
            }// End while
            return ListAux;
        } catch (SQLException error) {
            throw new SQLException("Error in locate the contacts in db.\n causa: " + error.getMessage());
        }
}// method contacList
    
    public static  void deleteContact (class_DataContacts CDC) throws SQLException {
    
        try {
            // pass data to database for this class
            Connection conection = class_conection.conector();
            // condition to java interact to SQL
            Statement St = conection.createStatement();
            // crete querry (DELETe)
            String sql = "delete  from contact_book where nome = '"+CDC.getName()+"';";
            St.execute(sql);
            St.close();
            conection.close();
            System.out.println(" ==== Contact Deleted With Sucess ====");
        } catch (Exception error) {
            throw new SQLException ("Error in delete data contactn \ncausa:"+error.getMessage());
        }
    }// END method deleteContact

    public static void AtualizeContact(class_DataContacts CDC) throws SQLException {

        try {
            Scanner read = new Scanner(System.in);

            Connection conection = class_conection.conector();
            Statement St = conection.createStatement();
            St.execute("select * from contact_book where nome = '" + CDC.getName() + "';");
            ResultSet Rs = St.executeQuery("select * from contact_book where nome = '" + CDC.getName() + "';");
            ArrayList<class_DataContacts> list = new ArrayList<>();
            while (Rs.next()) {
                CDC.setIdContact(Rs.getInt("id_contact"));
                CDC.setName(Rs.getString("nome"));
                CDC.setPhone(Rs.getString("phone"));
                CDC.setEmail(Rs.getString("email"));
                list.add(CDC);
            }// END while
            for (int i = 0; i < list.size(); i++) {

                System.out.println("\n NOME: " + list.get(i).getName()
                        + "\n TELEFONE: " + list.get(i).getPhone()
                        + "\n E-MAIL: " + list.get(i).getEmail());
                System.out.println("==========================================");
            }// END for
            int OptionDataUpdate;
            System.out.println("what is the Data whould you like uptade ?\n [1] - nome \n [2] - telefone \n [3] - email");
            System.out.print("digit here: ");
            OptionDataUpdate = read.nextInt();
            switch (OptionDataUpdate) {
                case 1:
                    System.out.print("digit here the new name: ");
                    String NameUptade = read.next();
                    St.executeUpdate("update contact_book set nome ='" + NameUptade + "' where nome='" + CDC.getName() + "';");
                    System.out.println(" ===\n name uptade with sucess \n===");
                    break;
                case 2:
                    System.out.print("digit here new phone: ");
                    String PhoneUpdate = read.next();
                    St.executeUpdate("update contact_book set phone ='" + PhoneUpdate + "' where nome='" + CDC.getName() + "';");
                    System.out.println(" ===\n phone uptade with sucess \n===");
                    break;

                case 3:
                    System.out.print("digit here new email: ");
                    String EmailUpdate = read.next();
                    St.executeUpdate("update contact_book set email ='" + EmailUpdate + "' where nome='" + CDC.getName() + "';");
                    System.out.println(" === email uptade with sucess ===");
                    break;
                default:
                    System.out.println("this option not exists");
                    break;
            }// END switch case for slect the data for update
            St.close();
            conection.close();
        } catch (SQLException error) {
            throw new SQLException("Error to uptade this contact.\n case: " + error.getMessage());
        }
}// END method  AtualizeContact    
}// class
