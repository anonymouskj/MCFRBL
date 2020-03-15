package dao;
import org.hibernate.Session;
import org.hibernate.Transaction;

import beans.QciPartitionFrameTrans;
import beans.FurnishingTransaction;
import hibernateConnect.HibernateConfig;

public class DaoPartitionFrame {
	public void saveData1(QciPartitionFrameTrans qciPartitionFrameTrans, FurnishingTransaction furnishingTransaction) {
		Session session=null;
		Transaction tx=null;
		session= HibernateConfig.getSession();
		tx=session.beginTransaction();
		try
		{
			session.saveOrUpdate(qciPartitionFrameTrans);
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
