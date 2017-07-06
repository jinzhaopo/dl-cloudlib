package com.yundao.cloudlib.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yundao.cloudlib.mapper.TeacherOrderBookMapper;
import com.yundao.cloudlib.model.enumType.BookApplyType;
import com.yundao.cloudlib.model.teacher.BookApply;
import com.yundao.cloudlib.service.TeacherOrderBookService;

import framework.service.impl.BaseServiceImpl;
/**
 * 
 * @ClassName: TeacherOrderBookServiceImpl
 * @Description: 老师订购电子书
 * @author: wf
 * @date: 2017年7月6日 下午1:44:08
 * @version 1.0
 */
@Service
@Transactional(readOnly = true)
public class TeacherOrderBookServiceImpl extends BaseServiceImpl<BookApply> implements TeacherOrderBookService {
	@Autowired
	private TeacherOrderBookMapper teacherOrderBookMapper;

	@Autowired
	public void setMapper(TeacherOrderBookMapper mapper) {
		super.setMapper(mapper);
	}
	
	/**
	 * 
	 * @Title: getListByBatchId
	 * @Description: 通过学校Id和批次Id来查询电子书申请集合
	 * @param id
	 * @return
	 * @see com.yundao.cloudlib.service.TeacherOrderBookService#getListByBatchId(java.lang.Long)
	 */
	@Override
	public List<BookApply> getListByBatchId(Long schoolId,Long batchId) {
		BookApply bookApply=new BookApply();
		bookApply.setBookBatchId(batchId);
		bookApply.setSchoolId(schoolId);
		List<BookApply> list=teacherOrderBookMapper.select(bookApply);
		return list;
	}
	
	

	
}
