package ACTION;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import hibernateConnect.HibernateConfig;

public class coachtypeclearance {
	private String stageDesc;
	public List<String> results;
	public List<String>coachtypelist ;
	public String getcoachDetails(){
		 Session session =  null;
			
			
			session= HibernateConfig.getSession();
			String hql1="SELECT  distinct shell_type from furnishing_tran order by shell_type ASC ";
				Query query1 = session.createSQLQuery(hql1);
				 results = query1.list();
				 coachtypelist=new ArrayList<String>();
				 for(int s1=0;s1<results.size();s1++)
				 {
					 String description=results.get(s1);
					 coachtypelist.add(description);
				 }
		
		return "success";
	}
	public List<String> getResults() {
		return results;
	}
	public void setResults(List<String> results) {
		this.results = results;
	}
	public List<String> getCoachtypelist() {
		return coachtypelist;
	}
	public void setCoachtypelist(List<String> coachtypelist) {
		this.coachtypelist = coachtypelist;
	}
	
	
}
