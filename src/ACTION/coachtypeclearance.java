package ACTION;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import hibernateConnect.HibernateConfig;

public class coachtypeclearance {
	private String Coachtype;
	private List<String> testingstatusList;
	public List<String> results;
	public List<String> results1;
	public List<Object[]> results2;
	public List<String>coachtypelist ;
	public List<String>stagedesclist;
	public List<String>furnishingnumberList;
	public List<String>CoachTypeList;
	public List<String>furnishingassetidList;
	
	
	
	public String getcoachDetails(){
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
				 Session session2 =  null;
				  session2= HibernateConfig.getSession();
					String hql="select distinct substage_description from furnishing_stage_master where coach_type ='"+Coachtype+"' and next_stage_id!='END'";
						Query query = session2.createSQLQuery(hql);
						 results1 = query.list();
						 stagedesclist=new ArrayList<String>();
						 for(int s1=0;s1<results1.size();s1++)
						 {    
							 String description=results1.get(s1);
							 stagedesclist.add(description);
						 }		 
						 
						 Session session3 =  null;
						  session3= HibernateConfig.getSession();
							String hql2="select distinct furnishing_no, p.coach_type, t.furnishing_asset_id,t.testing_status from furnishing_tran a,paint_tran p,furnishing_stage_master f,testing_mobile_clearance T where a.shell_asset_id=p.shell_asset_id and  p.coach_type=f.coach_type and a.furnishing_asset_id=T.furnishing_asset_id and p.coach_type='"+Coachtype+"' order by t.furnishing_asset_id";
								Query query3 = session3.createSQLQuery(hql2);
								 results2 = query3.list();
								 furnishingnumberList=new ArrayList<String>();
								 CoachTypeList=new ArrayList<String>();
								 furnishingassetidList=new ArrayList<String>();
								 testingstatusList=new ArrayList<String>();
								 for(Object[] s:results2)
									{
										String furnNo=s[0].toString();
										String coachType=s[1].toString();
										String furnassetid=s[2].toString();
										String testingstatus=s[3].toString();
																				
										furnishingnumberList.add(furnNo);
										CoachTypeList.add(coachType);
										furnishingassetidList.add(furnassetid);
										testingstatusList.add(testingstatus);
								        
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
	public String getCoachtype() {
		return Coachtype;
	}
	public void setCoachtype(String coachtype) {
		Coachtype = coachtype;
	}
	
	public List<String> getResults1() {
		return results1;
	}
	public void setResults1(List<String> results1) {
		this.results1 = results1;
	}
	public List<Object[]> getResults2() {
		return results2;
	}
	public void setResults2(List<Object[]> results2) {
		this.results2 = results2;
	}
	public List<String> getFurnishingnumberList() {
		return furnishingnumberList;
	}
	public void setFurnishingnumberList(List<String> furnishingnumberList) {
		this.furnishingnumberList = furnishingnumberList;
	}
	public List<String> getCoachTypeList() {
		return CoachTypeList;
	}
	public void setCoachTypeList(List<String> coachTypeList) {
		CoachTypeList = coachTypeList;
	}
	public List<String> getFurnishingassetidList() {
		return furnishingassetidList;
	}
	public void setFurnishingassetidList(List<String> furnishingassetidList) {
		this.furnishingassetidList = furnishingassetidList;
	}
	public List<String> getStagedesclist() {
		return stagedesclist;
	}
	public void setStagedesclist(List<String> stagedesclist) {
		this.stagedesclist = stagedesclist;
	}
	
	
}
