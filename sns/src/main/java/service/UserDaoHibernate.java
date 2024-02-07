/*
 * package service;
 * 
 * import java.util.List;
 * 
 * import org.hibernate.Session; import org.hibernate.SessionFactory; import
 * org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Service; import
 * org.springframework.transaction.annotation.Transactional;
 * 
 * import entity.User;
 * 
 * @Service public class UserDaoHibernate {
 * 
 * @Autowired private SessionFactory sessionFactory;
 * 
 * public User findById(int id) { Session currentSession =
 * sessionFactory.getCurrentSession(); return currentSession.get(User.class,
 * id); }
 * 
 * public void save(User user) { Session currentSession =
 * sessionFactory.getCurrentSession(); currentSession.save(user); }
 * 
 * public void update(int id, User user) { Session currentSession =
 * sessionFactory.getCurrentSession(); User existingUser =
 * currentSession.get(User.class, (long) id); if(existingUser != null){
 * existingUser.setStaff_Name(user.getStaff_Name());
 * existingUser.setUsername(user.getUsername());
 * existingUser.setUsername(user.getEmail());
 * existingUser.setRole_Id(user.getRole_Id());
 * existingUser.setAccess_Level(user.getKatalaluan());
 * currentSession.merge(existingUser); } }
 * 
 * public void delete(int id) { Session currentSession =
 * sessionFactory.getCurrentSession(); User userToDelete =
 * currentSession.get(User.class, (int) id); if(userToDelete != null) {
 * currentSession.delete(userToDelete); } }
 * 
 * @Transactional public List<User> findAll(){ Session currentSession =
 * sessionFactory.getCurrentSession(); return
 * currentSession.createQuery("from admuser").getResultList(); } }
 */