package webmvc.services;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import webmvc.entities.UserEntity;

//@Service
@Repository
public class UserServicesImpl implements UserServices {
//	@Autowired
	private UserEntity userEntity;

	@Autowired
	private SessionFactory sessionFactory;

	private Transaction transaction = null;
	private List<UserEntity> userList = null;

	@Override
	public boolean insertUser(UserEntity userData) {

		System.out.println(userData.getEmail() + userData.getMobile() + userData.getName());
		try (Session session = sessionFactory.openSession()) {
			transaction = session.beginTransaction();

			session.save(userData);

			System.out.println(userData.getEmail() + userData.getMobile() + userData.getName() + session);

			transaction.commit();

			return true;
		} catch (Exception e) {
			if (transaction != null) {

				transaction.rollback();
			}
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean updateUser(UserEntity userData) {

		System.out.println(userData.getEmail() + userData.getMobile() + userData.getName());
		try (Session session = sessionFactory.openSession()) {
			transaction = session.beginTransaction();

			session.saveOrUpdate(userData);

			transaction.commit();

			return true;
		} catch (Exception e) {
			if (transaction != null) {

				transaction.rollback();
			}
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean deleteUser(int id) {
		boolean status;
		try (Session session = sessionFactory.openSession()) {

			transaction = session.beginTransaction();
			userEntity = getUserById(id);

			if (userEntity != null) {
				session.delete(userEntity);
				transaction.commit();
				userEntity = null;
				status = true;
			}

			status = true;
		} catch (Exception e) {
			status = false;
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();

		}
		return status;

	}

	@Override
	public UserEntity getUserById(int id) {
		try (Session session = sessionFactory.openSession()) {

			userEntity = session.get(UserEntity.class, id);

			return userEntity;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<UserEntity> getUserByEmail(String email) {
		try (Session session = sessionFactory.openSession()) {

			String hql = "FROM UserEntity u WHERE u.email = :userEmail";

			Query<UserEntity> query = session.createQuery(hql, UserEntity.class);
			query.setParameter("userEmail", email);
			userList = query.list();

			return userList != null ? userList : new ArrayList<>();
		} catch (Exception e) {

			e.printStackTrace();
			return new ArrayList<>();
		}

	}

	@Override
	public List<UserEntity> userList() {
		try (Session session = sessionFactory.openSession()) {

			String hql = "FROM UserEntity";

			Query<UserEntity> query = session.createQuery(hql, UserEntity.class);
			userList = query.list();

			return userList != null ? userList : new ArrayList<>();
		} catch (Exception e) {

			e.printStackTrace();
			return new ArrayList<>();
		}
	}

}
