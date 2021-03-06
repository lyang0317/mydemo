package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import service.imp.MvServiceImp;
import service.imp.RecommendServiceImp;
import entity.Mv;
import entity.Recommend;
import entity.Singer;

@Controller
@Scope("prototype")
public class RecommendAction {

	private Recommend recommend;
	@Resource
	private RecommendServiceImp recommendService;
	@Resource
	private MvServiceImp mvService;
	private String name;
	private int page;
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	private String recommendperiods;
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public String getRecommendperiods() {
		return recommendperiods;
	}
	public void setRecommendperiods(String recommendperiods) {
		this.recommendperiods = recommendperiods;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	private String url;
	private Map<String, Object> map;
	public Map<String, Object> getMap() {
		return map;
	}
	public void setMap(Map<String, Object> map) {
		this.map = map;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Recommend getRecommend() {
		return recommend;
	}

	public void setRecommend(Recommend recommend) {
		this.recommend = recommend;
	}
	
	public String addRecommend(){
		recommendService.saveRecommend(recommend);
		url="sys/Recommend/index.jsp";
		return "ok";
		
	}
	public String queryMvByName() throws IOException{
		
		HttpServletResponse response = ServletActionContext.getResponse();
		List<Mv> list=recommendService.queryMvByName(name);
		JSONArray jsonArray = JSONArray.fromObject(list);
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();	
		out.println(jsonArray);
		out.flush();
		out.close();
		return null;
		
	}
	public String queryRecommendByPeriods() throws IOException{		
		HttpServletResponse response = ServletActionContext.getResponse();
		List<Recommend> list=recommendService.queryRecommendByPeriods(recommendperiods, page);
		JSONArray jsonArray = JSONArray.fromObject(list);
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();	
		out.println(jsonArray);
		out.flush();
		out.close();
		return null;
		
	}
	public String queryRecommendByDate() throws IOException{
		
		HttpServletResponse response = ServletActionContext.getResponse();
		List<Recommend> list=recommendService.queryRecommendByDate();
		JSONArray jsonArray = JSONArray.fromObject(list);
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();	
		out.println(jsonArray);
		out.flush();
		out.close();
		return null;
		
	}
	public String deleteRecommend() throws IOException{	
		recommendService.deleteRecommend(id);
		return null;
		
	}
}
