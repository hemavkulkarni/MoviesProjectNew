package com.User;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class UserDaoImpl implements UserDao {

	public UserDaoImpl() {
		// TODO Auto-generated constructor stub
	}
	 @Autowired
	 SessionFactory sessionFactory;
	 @Transactional
	 public List<UserLogin> getList() 
	 {
			// TODO Auto-generated method stub
			 Session session = sessionFactory.openSession();  
			  @SuppressWarnings("unchecked")  
			  List<UserLogin> ProductList = session.createQuery("from UserLogin")  
			    .list();  
			  session.close();  
			  return ProductList;  
		}
	 @Transactional
	 public void addUser(UserLogin p) 
	 {
			
		     System.out.println(p.getUname());
					 Session session=sessionFactory.openSession();
			     
				//     System.out.println(p.getEmailid());
				     
			         session.saveOrUpdate(p);
			         Users newUser = new Users();
			         newUser.setUsername(p.getUname());
			         newUser.setPassword(p.getPassword());
			         newUser.setEnabled(true);

			         UserRole newUserRole = new UserRole();
			         newUserRole.setUsername(p.getUname());
			         
			         newUserRole.setRole("ROLE_USER");
			         session.saveOrUpdate(newUser);
			         session.saveOrUpdate(newUserRole);
			         /*newUserRole.setRole("ROLE_ADMIN");
			         session.saveOrUpdate(newUser);
			         session.saveOrUpdate(newUserRole);*/
			         
				     System.out.println(p.getPassword());
			        // tx.commit();
				     session.flush();
			         session.close();
		}
	 	@Transactional
		public void deleteUser(String prodid) {
			// TODO Auto-generated method stub
			
		}

		@Transactional
		public UserLogin getUserbyId(String prodid) 
		{
			 Session session = sessionFactory.openSession();  
			 UserLogin prod = (UserLogin) session.load(UserLogin.class, prodid);  
			  return prod;  
			
		}

		@Transactional
		public void updateUser(UserLogin p) {
			// TODO Auto-generated method stub
			Session session = sessionFactory.openSession();  
			  Transaction tx = session.beginTransaction();  
			  session.saveOrUpdate(p);  
			  tx.commit();  
			//  Serializable id = session.getIdentifier(employee); 
			  session.close();			
		}
}