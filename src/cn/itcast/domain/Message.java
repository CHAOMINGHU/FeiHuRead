package cn.itcast.domain;

public class Message {
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	//用户名
	String userName;
	//留言
	String liuYan;
	//时间
	String dataTime;
	//当前楼层
	int currentTower;
	//所有楼层
	int allTower;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getLiuYan() {
		return liuYan;
	}
	public void setLiuYan(String liuYan) {
		this.liuYan = liuYan;
	}
	public String getDataTime() {
		return dataTime;
	}
	public void setDataTime(String dataTime) {
		this.dataTime = dataTime;
	}
	public int getCurrentTower() {
		return currentTower;
	}
	public void setCurrentTower(int currentTower) {
		this.currentTower = currentTower;
	}
	public int getAllTower() {
		return allTower;
	}
	public void setAllTower(int allTower) {
		this.allTower = allTower;
	}
	
}
