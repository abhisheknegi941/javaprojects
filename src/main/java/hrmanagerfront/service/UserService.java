package hrmanagerfront.service;

import org.springframework.web.client.RestTemplate;

import hrmanagerfront.model.User;


public class UserService {

	
	// Final static properties
	private final static String USER = "/user";
	private final static String USER_AND_ID = "/user/{username}";
	private final static String SERVER_URI = "http://localhost:5000";
	private final static RestTemplate restTemplate = new RestTemplate();

	
	public static User getUser(String username) {
		User user = restTemplate.getForObject(SERVER_URI + USER_AND_ID, User.class, username);
		return user;
	}
	
	public static void createUser(User user) {
       restTemplate.postForObject(SERVER_URI + USER, user, User.class);		
	}
}
