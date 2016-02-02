package action;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import service.imp.MvServiceImp;
import utils.IoUpLoad;
import entity.Mv;
import entity.Singer;

@Controller
@Scope("prototype")
public class MvAction extends ActionSupport {
	@Resource
	private MvServiceImp mvService;

	private Mv mv;
	

	// 多文件上传
	private String location = "/video";// 保存到文件夹
	private List<File> upload; // 保存上传的文件
	// private List<String> uploadContentType; //保存上传的文件类型
	private List<String> uploadFileName; // 保存上传的文件名
	private String realpath;
	private String name;
	private int id;
	private int page;
	private String area;
	//文件下载
	private String fileName;
	public InputStream getDownloadFile() throws Exception  
	    {  
	           //获取资源路径   
//		String realPath=ServletActionContext.getServletContext().getRealPath(fileName); 
//        System.out.println("realPath"+realPath);
		InputStream is=ServletActionContext.getServletContext().getResourceAsStream(fileName) ;
           return is;  
	       
	    }  

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	
	
	public String getRealpath() {
		return realpath;
	}

	public void setRealpath(String realpath) {
		this.realpath = realpath;
	}

	

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public List<File> getUpload() {
		return upload;
	}

	public void setUpload(List<File> upload) {
		this.upload = upload;
	}

	public List<String> getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(List<String> uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public Mv getMv() {
		return mv;
	}

	public void setMv(Mv mv) {
		this.mv = mv;
	}

	public String saveMv() throws IOException {
		if (upload != null) {
			realpath = IoUpLoad.myUpLoad(location, uploadFileName, upload);
			System.out.println("资源路径=="+realpath);
			mv.setPic_url("video"+"/"+uploadFileName.get(0));
			mv.setVideo_url("video"+"/"+uploadFileName.get(1));
		} else {
			mv.setPic_url("无文件");
			mv.setVideo_url("无文件");
		}
		mvService.save(mv);
		return "success";
	}
	
	public String updateMv() throws IOException {
		System.out.println(id);
		
		System.out.println("mv===" + mv.getName() + mv.getType()+"  "+mv.getSinger()+""+mv.getPic_url());
		
		if (upload != null) {
			realpath = IoUpLoad.myUpLoad(location, uploadFileName, upload);
			mv.setPic_url("video"+"/"+uploadFileName.get(0));
			mv.setVideo_url("video"+"/"+uploadFileName.get(1));
		} 
		mvService.update(mv);
		return "success";
	}
	public String downLoadMv() throws IOException{
		System.out.println("下载功能action");
		
		return "downLoadMv";
	}
	
	//删除MV
	public void delMv(){
		mvService.delMv(id);
	}
	
	
    //分页显示按姓名查询的MV
	public List<Mv> queryMvByName() throws IOException {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		List<Mv> list=mvService.queryMvByName(name, page);
		JSONArray jsonArray = JSONArray.fromObject(list);
		PrintWriter out = response.getWriter();	
		out.println(jsonArray);
		out.flush();
		out.close();
		return null;	
	}
	
	public String querySingerByName() throws IOException {
		HttpServletResponse response = ServletActionContext.getResponse();
		List<Singer> list=mvService.querySingerByName(name);
		JSONArray jsonArray = JSONArray.fromObject(list);
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();	
		out.println(jsonArray);
		out.flush();
		out.close();
		return null;
		
	}
	
	
	
	public String queryMv() throws IOException {
		HttpServletResponse response = ServletActionContext.getResponse();
		List<Mv> list=mvService.queryMv();
		JSONArray jsonArray = JSONArray.fromObject(list);
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();	
		out.println(jsonArray);
		out.flush();
		out.close();
		return null;		
	}
	public String queryMvById() throws IOException {
		HttpServletResponse response = ServletActionContext.getResponse();
		Mv mv=mvService.queryMvById(id);
		JSONObject jsonArray = JSONObject.fromObject(mv);
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();	
		out.println(jsonArray);
		out.flush();
		out.close();
		return null;		
	}
	public String queryMvBySinger() throws IOException {
		HttpServletResponse response = ServletActionContext.getResponse();
		Singer singer=new Singer(id);
		List<Mv> list=mvService.queryMvBySinger(singer);
		JSONArray jsonArray = JSONArray.fromObject(list);
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();	
		out.println(jsonArray);
		out.flush();
		out.close();
		return null;	
	}
	public String queryMvByAreaAndDate() throws IOException {
		HttpServletResponse response = ServletActionContext.getResponse();
		Singer singer=new Singer(id);
		List<Mv> list=mvService.queryMvByAreaAndDate(page, area);
		JSONArray jsonArray = JSONArray.fromObject(list);
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();	
		out.println(jsonArray);
		out.flush();
		out.close();
		return null;	
	}
	//按歌手或者mv名字和地区查询mv
	public String queryMvByAreaAndSinger() throws IOException {
		HttpServletResponse response = ServletActionContext.getResponse();
		List<Mv> list=mvService.queryMvByAreaAndSinger(page, area,name);
		JSONArray jsonArray = JSONArray.fromObject(list);
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();	
		out.println(jsonArray);
		out.flush();
		out.close();
		return null;	
	}
	public String queryMvByAreaAndClick() throws IOException {
		HttpServletResponse response = ServletActionContext.getResponse();
		Singer singer=new Singer(id);
		List<Mv> list=mvService.queryMvByAreaAndClick(page, area);
		JSONArray jsonArray = JSONArray.fromObject(list);
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();	
		out.println(jsonArray);
		out.flush();
		out.close();
		return null;	
	}
	public String queryMvByRandom() throws IOException {
		HttpServletResponse response = ServletActionContext.getResponse();
		Singer singer=new Singer(id);
		List<Mv> list=mvService.queryMvByRandom();
		JSONArray jsonArray = JSONArray.fromObject(list);
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();	
		out.println(jsonArray);
		out.flush();
		out.close();
		return null;	
	}
}
