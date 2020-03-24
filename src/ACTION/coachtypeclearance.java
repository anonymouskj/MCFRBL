package ACTION;

import java.util.*;
import org.hibernate.Query;
import org.hibernate.Session;

import hibernateConnect.HibernateConfig;

public class coachtypeclearance {
	private String Coachtype;
	private List<String> testingstatusList;
	public List<String> originalfurnishingnumberlist;
	public List<String>stageList ;
	public List<String>substagestagedesclist;
	public  Set<String>furnishingnumberList;
	public List<String>coachtypelist;
	
	
	
	
	public String getcoachDetails(){
		List<String> results;
		System.out.println(Coachtype);
		
		 Session session =  null;
		  session= HibernateConfig.getSession();
			String hql1="SELECT distinct coach_type from furnishing_stage_master order by coach_type ";
				Query query1 = session.createSQLQuery(hql1);
				 results = query1.list();
				 coachtypelist=new ArrayList<String>();
				 for(int s1=0;s1<results.size();s1++){   

					 String description=results.get(s1);
					 coachtypelist.add(description);
				 }
				 return "success";
				 
	}
	
				 
	public String getcoachDetails1(){
	            List<String> results1;
				 Session session2 =  null;
				  session2= HibernateConfig.getSession();
					String hql="select substage_description from furnishing_stage_master where coach_type ='"+Coachtype+"' and next_stage_id!='END' order by stage_sequence ";
						Query query = session2.createSQLQuery(hql);
						 results1 = query.list();
						 substagestagedesclist=new ArrayList<String>();
						 for(int s1=0;s1<results1.size();s1++)
						 {    
							 String description=results1.get(s1);
							 substagestagedesclist.add(description);
						 }		 
						 
						 
						 
						 List<Object[]> results2;
						 Session session3 =  null;
						  session3= HibernateConfig.getSession();
							String hql2="select distinct furnishing_no, t.substage_description, t.furnishing_asset_id,t.testing_status from furnishing_tran a,paint_tran p,furnishing_stage_master f,testing_mobile_clearance T where a.shell_asset_id=p.shell_asset_id and  p.coach_type=f.coach_type and a.furnishing_asset_id=T.furnishing_asset_id and p.coach_type='"+Coachtype+"' order by t.furnishing_asset_id";
								Query query3 = session3.createSQLQuery(hql2);
								 results2 = query3.list();
								 originalfurnishingnumberlist=new ArrayList<String>();
								 //furnishingnumberList = new HashSet<String>();
								 stageList=new ArrayList<String>();
								
								 testingstatusList=new ArrayList<String>();
								 for(Object[] s:results2)
									{
										String furnNo=s[0].toString();
										String substage=s[1].toString();
										String testingstatus=s[3].toString();
										originalfurnishingnumberlist.add(furnNo);
										//furnishingnumberList.add(originalfurnishingnumberlist);
										stageList.add(substage);
										testingstatusList.add(testingstatus);
								        
									}
								 furnishingnumberList = new HashSet<String>(originalfurnishingnumberlist);
								 //System.out.println(furnishingnumberList);
		
		return "success";
	}
	
	
	
	
	
	
	public List<String> getCoachtypelist() {
		return coachtypelist;
	}
	public void setCoachtypelist(List<String> coachtypelist) {
		this.coachtypelist = coachtypelist;
	}
	public String getCoachtype() {
		return Coachtype;
	}
	public void setCoachtype(String coachtype) {
		Coachtype = coachtype;
	}
	
public List<String> getTestingstatusList() {
		return testingstatusList;
	}


	public void setTestingstatusList(List<String> testingstatusList) {
		this.testingstatusList = testingstatusList;
	}


	public List<String> getStageList() {
		return stageList;
	}
	

	public List<String> getOriginalfurnishingnumberlist() {
		return originalfurnishingnumberlist;
	}


	public void setOriginalfurnishingnumberlist(List<String> originalfurnishingnumberlist) {
		this.originalfurnishingnumberlist = originalfurnishingnumberlist;
	}


	public void setStageList(List<String> stageList) {
		this.stageList = stageList;
	}


	public List<String> getSubstagestagedesclist() {
		return substagestagedesclist;
	}


	public void setSubstagestagedesclist(List<String> substagestagedesclist) {
		this.substagestagedesclist = substagestagedesclist;
	}


	public Set<String> getFurnishingnumberList() {
		return furnishingnumberList;
	}


	public void setFurnishingnumberList(Set<String> furnishingnumberList) {
		this.furnishingnumberList = furnishingnumberList;
	}
	
	
}
