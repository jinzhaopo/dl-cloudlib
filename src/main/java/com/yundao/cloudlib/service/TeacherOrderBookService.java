package com.yundao.cloudlib.service;

import java.util.List;

import com.yundao.cloudlib.bean.ExportExcelBookApply;
import com.yundao.cloudlib.model.enumType.BookApplyType;
import com.yundao.cloudlib.model.teacher.BookApply;

import framework.service.BaseService;
/**
 * 
 * @ClassName: TeacherOrderBookService
 * @Description: 老师订购电子书
 * @author: wf
 * @date: 2017年7月6日 下午1:48:30
 * @version 1.0
 */
public interface TeacherOrderBookService extends BaseService<BookApply>{
	
	/**
	 * 
	 * @Title: getListByBatchId
	 * @Description: 通过学校Id和批次Id来查询电子书申请集合
	 * @param id
	 * @return
	 * @return: List<BookApply>
	 */
	List<BookApply> getListByBatchId(Long schoolId,Long batchId);
	
	/**
	 * 
	 * @Title: exportExcel
	 * @Description: 导出订购电子书
	 * @return
	 * @return: List<ExportExcelBookApply>
	 */
	List<ExportExcelBookApply> exportExcel(Long schoolId,Long batchId);
	

}
