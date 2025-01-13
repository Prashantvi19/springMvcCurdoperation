package webmvc.services;

import java.util.List;

import webmvc.entities.UserEntity;

public interface UserServices {

	public boolean insertUser(UserEntity userData);

	public List<UserEntity> userList();

	public boolean updateUser(UserEntity userData);

	public UserEntity getUserById(int id);

	public List<UserEntity> getUserByEmail(String id);

	public boolean deleteUser(int id);

}
