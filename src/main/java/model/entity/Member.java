package model.entity;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member {

	private Integer id;
	private String username;
	private String password;
	private String fullname;
	private String email;
	private String role;
	private Date createTime;
	
}
