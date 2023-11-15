package repository;

import entity.UserAccount;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

public class UserRepository {
    public static void addNewUser (UserAccount userAccount){
        System.out.println("inside UserRepository");
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();

            // save the student objects
            session.persist(userAccount);

            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    public static void deleteUserById(int id){
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();

            // Delete a student object
            UserAccount userAccount = session.get(UserAccount.class, id);
            if (userAccount != null) {
                session.delete(userAccount);
            }

            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }
}
