package utils;

import java.util.List;

import entity.User;

public class UserTest {
	 //��ҳ��
		private long totalPage;
		//��ǰҳ�������
		private List<User> db;
		//�ܼ�¼��
		private long totalRecord;
		public long getTotalRecord() {
			return totalRecord;
		}
		public void setTotalRecord(long totalRecord) {
			this.totalRecord = totalRecord;
		}
		public long getTotalPage() {
			return totalPage;
		}
		public void setTotalPage(long totalPage) {
			this.totalPage = totalPage;
		}
		public List<User> getDada() {
			return db;
		}
		public void setDada(List<User> db) {
			this.db = db;
		}
}
