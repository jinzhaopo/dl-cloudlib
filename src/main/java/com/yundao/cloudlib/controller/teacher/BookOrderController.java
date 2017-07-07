package com.yundao.cloudlib.controller.teacher;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yundao.cloudlib.I18nConstant;
import com.yundao.cloudlib.model.Book;
import com.yundao.cloudlib.model.enumType.BookApplyType;
import com.yundao.cloudlib.model.enumType.IsWorkBatchType;
import com.yundao.cloudlib.model.teacher.BookApply;
import com.yundao.cloudlib.model.teacher.BookBatch;
import com.yundao.cloudlib.service.BookApplyService;
import com.yundao.cloudlib.service.BookService;
import com.yundao.cloudlib.service.TeacherOrderBatchService;

import framework.mvc.Message;

/**
 * 
 * @ClassName: BookOrderController
 * @Description: 老师电子书订购页面
 * @author: wf
 * @date: 2017年6月30日 下午2:24:26
 * @version 1.0
 */
@Controller
@RequestMapping("/teacher/order")
public class BookOrderController extends BaseController {
	@Autowired
	private BookService bookService;

	@Autowired
	private TeacherOrderBatchService teacherOrderBatchService;

	@Autowired
	private BookApplyService bookApplyService;

	/**
	 * 
	 * @Title: add
	 * @Description: 添加预定
	 * @param ids
	 * @param bookReplication
	 * @param mon
	 * @param ra
	 * @return
	 * @return: String
	 */
	@RequestMapping("/add")
	@ResponseBody
	public Message add(Long[] ids, Integer bookReplication, Integer mon) {
		List<Book> books = bookService.getListByIds(Arrays.asList(ids));
		List<BookApply> bookApplyList = getBookApplyList(books, teacherOrderBatchService.getOrderBatch(getTeacher().getSchoolId(), IsWorkBatchType.yes), bookReplication, mon);
		bookApplyService.save(bookApplyList);
		return Message.success(I18nConstant.teacher_order_success);

	}

	/**
	 * 
	 * @Title: getBookApplyList
	 * @Description: 转换
	 * @return
	 * @return: List<BookApply>
	 */
	private List<BookApply> getBookApplyList(List<Book> books, BookBatch bookBatch, Integer bookReplication, Integer mon) {
		List<BookApply> bas = new ArrayList<BookApply>();
		for (Book book : books) {
			BookApply ba = new BookApply();
			ba.setSchoolId(getTeacher().getSchoolId());
			ba.setBookBatchId(bookBatch.getId());
			ba.setBookBatchName(bookBatch.getName());
			ba.setBookId(book.getId());
			ba.setIsbn(book.getIsbn());
			ba.setTitle(book.getTitle());
			ba.setPress(book.getPress());
			ba.setAuthor(book.getAuthor());
			ba.setPublicationDate(book.getPublicationDate());
			ba.setClassification(book.getClassification());
			ba.setPath(book.getPath());
			ba.setPrice(book.getPrice());
			ba.setBookReplication(bookReplication);
			ba.setMon(mon);
			ba.setApplyStatus(BookApplyType.NOTSUBMIT);

			bas.add(ba);

		}
		return bas;
	}
}
