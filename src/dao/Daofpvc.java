package dao;
import org.hibernate.Session;
import org.hibernate.Transaction;

import beans.QciFPvcTrans;
import beans.FurnishingTransaction;
import hibernateConnect.HibernateConfig;

public class Daofpvc {
	public void saveData(QciFPvcTrans qciFPvcTrans, FurnishingTransaction furnishingTransaction) {
		Session session=null;
		Transaction tx=null;
		session= HibernateConfig.getSession();
		tx=session.beginTransaction();
		try
		{
			session.saveOrUpdate(qciFPvcTrans);
			session.update(furnishingTransaction);
			tx.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			tx.rollback();
		}
		finally {
			if(session!=null)
			{
				session.close();
			}
		}
		{
			
		}
		
	}
}
