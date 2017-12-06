
package online.shixun.asl.dto;

public class UserDTO extends BaseDTO {
	
	    // 编码
		private String code;
		
		// 姓名
		private String name;
		
		// 密码
		private String password;
		
		// 手机
		private String mobile;
		
		// 所属部门
		private DepartmentDTO department;

		// 所属角色
		private RoleDTO role;
		
		// 性别
		private String gender;
		
		// 状态 
		private Boolean status=true;
		
		/**
		 * 判断并输出状态值
		 * @return
		 */
		public String getStatusStr() {
			return status ? "启用" : "禁用";
		}

		public void setStatus(Boolean status) {
			this.status = status;
		}

		public String getCode() {
			return code;
		}

		public String getName() {
			return name;
		}

		public String getPassword() {
			return password;
		}

		public String getMobile() {
			return mobile;
		}

		public DepartmentDTO getDepartment() {
			return department;
		}

		public RoleDTO getRole() {
			return role;
		}

		public String getGender() {
			return gender;
		}

		public Boolean getStatus() {
			return status;
		}

		public void setCode(String code) {
			this.code = code;
		}

		public void setName(String name) {
			this.name = name;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public void setMobile(String mobile) {
			this.mobile = mobile;
		}

		public void setDepartment(DepartmentDTO department) {
			this.department = department;
		}

		public void setRole(RoleDTO role) {
			this.role = role;
		}

		public void setGender(String gender) {
			this.gender = gender;
		}

	
}
