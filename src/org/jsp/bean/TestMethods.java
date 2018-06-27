/**
 * 
 */
package org.jsp.bean;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author USER
 *
 */
public class TestMethods {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Integer job_id = 1111;
		StringBuilder job_id_as_str = new StringBuilder();
		if(null != job_id) {
			System.out.println(job_id.toString().length());
			if(job_id.toString().length() == 1)
				job_id_as_str.append("00").append(job_id.toString());
			else if(job_id.toString().length() == 2)
				job_id_as_str.append("0").append(job_id.toString());
			else
				job_id_as_str.append(job_id.toString());
		}
		String job_no = "JobId/"+new SimpleDateFormat("MMddyy").format(new Date())+"/"+job_id_as_str.toString();
		System.out.println(job_no);
//		Integer allRecords = 1;
//		Double index = (double)allRecords/5;
//		Integer paginationCount = (int) Math.ceil(index);
//		System.out.println(paginationCount);
		
	}
	

}
