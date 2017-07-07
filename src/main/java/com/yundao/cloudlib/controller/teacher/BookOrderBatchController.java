package com.yundao.cloudlib.controller.teacher;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.yundao.cloudlib.I18nConstant;
import com.yundao.cloudlib.bean.ExportExcelBookApply;
import com.yundao.cloudlib.model.enumType.BookApplyType;
import com.yundao.cloudlib.model.enumType.BookBatchType;
import com.yundao.cloudlib.model.enumType.IsWorkBatchType;
import com.yundao.cloudlib.model.teacher.BookApply;
import com.yundao.cloudlib.model.teacher.BookBatch;
import com.yundao.cloudlib.service.TeacherOrderBatchService;
import com.yundao.cloudlib.service.TeacherOrderBookService;

import framework.mvc.Message;
import framework.page.Page;
import framework.page.SearchFilter;
import framework.util.ExcelUtil;
import framework.util.ServletUtil;

/**
 * 
 * @ClassName: BookOrderBatchController
 * @Description: 老师订购批次
 * @author: wf
 * @date: 2017年6月30日 下午2:52:42
 * @version 1.0
 */
@Controller
@RequestMapping("/teacher/batch")
public class BookOrderBatchController extends BaseController {
	@Autowired
	private TeacherOrderBatchService teacherOrderBatchService;
	
	@Autowired
	private TeacherOrderBookService teacherOrderBookService;

	/**
	 * 
	 * @Title: bookOrderBatch
	 * @Description: 老师批次列表页面
	 * @return
	 * @return: String
	 */
	@RequestMapping("/list")
	public String bookOrderBatch(Page page, Model model, HttpServletRequest request) {
		Map<String, Object> searchMap = ServletUtil.getParametersStartingWith(request);
		List<SearchFilter> filters = ServletUtil.parse(searchMap);
		filters.add(SearchFilter.eq("schoolId", getTeacher().getSchoolId()));
		page.setSearchFilters(filters);

		page = teacherOrderBatchService.find(page);
		model.addAttribute(PAGE, page);
		model.addAllAttributes(searchMap);
		return "/teacher/orderBatch/list";
	}

	/**
	 * 
	 * @Title: addBatch
	 * @Description: 新增批次页面
	 * @return
	 * @return: String
	 */
	@RequestMapping(value = "/addBatch", method = RequestMethod.GET)
	public String addBatch() {
		return "/teacher/orderBatch/addBatch";
	}

	/**
	 * 
	 * @Title: addBatch
	 * @Description: 新增批次页面处理页面
	 * @param bookBatch
	 * @return
	 * @return: String
	 */
	@RequestMapping(value = "/addBatch", method = RequestMethod.POST)
	public String addBatch(BookBatch bookBatch, HttpSession session, RedirectAttributes ra) {

		bookBatch.setSchoolId(getTeacher().getSchoolId());
		bookBatch.setStatus(BookBatchType.reserve);
		bookBatch.setIsWorkBatch(IsWorkBatchType.no);
		teacherOrderBatchService.save(bookBatch);
		addSuccessMessage(I18nConstant.success_add, ra);
		return redirect("/teacher/batch/list");
	}

	/**
	 * 
	 * @Title: editBatch
	 * @Description: 修改页面
	 * @return
	 * @return: String
	 */
	@RequestMapping(value = "/editBatch", method = RequestMethod.GET)
	public String editBatch(Long ids, Model model, RedirectAttributes ra) {
		BookBatch bookBatch = teacherOrderBatchService.get(ids);
		if (bookBatch.getStatus().equals(BookBatchType.reserve)) {

			model.addAttribute("bookBatch", bookBatch);
			return "/teacher/orderBatch/editBatch";
		}
		addErrorMessage(I18nConstant.error_edit_status, ra);
		return redirect("/teacher/batch/list");
	}

	/**
	 * 
	 * @Title: editBatch
	 * @Description: 修改批次处理
	 * @return
	 * @return: String
	 */
	@RequestMapping(value = "/editBatch", method = RequestMethod.POST)
	public String editBatch(BookBatch bookBatch, RedirectAttributes ra) {
		teacherOrderBatchService.updateSelective(bookBatch);
		addSuccessMessage(I18nConstant.success_edit, ra);
		return redirect("/teacher/batch/list");
	}

	/**
	 * 
	 * @Title: reserveBatch
	 * @Description: 修改批次状态，预定
	 * @param ids
	 * @param ra
	 * @return
	 * @return: String
	 */
	@RequestMapping("/isWorkBatch")
	public String isWorkBatchBatch(Long ids, RedirectAttributes ra) {
		// 查询需要修改为当前工作批次
		BookBatch bookBatch = teacherOrderBatchService.get(ids);
		// 查询是否已经存在当前批次
		BookBatch bb = teacherOrderBatchService.getOrderBatch(getTeacher().getSchoolId(), IsWorkBatchType.yes);
		if (bb != null) {
			// 存在当前工作批次，需要修改为不是当前工作批次
			bb.setIsWorkBatch(IsWorkBatchType.no);
			teacherOrderBatchService.updateSelective(bb);
		}
		bookBatch.setIsWorkBatch(IsWorkBatchType.yes);
		teacherOrderBatchService.update(bookBatch);
		addSuccessMessage(I18nConstant.success_edit, ra);
		return redirect("/teacher/batch/list");
	}

	/**
	 * 
	 * @Title: checkName
	 * @Description: 检查批次名是否唯一
	 * @param name
	 * @return
	 * @return: String
	 */
	@RequestMapping(value = "/checkName", method = RequestMethod.POST)
	@ResponseBody

	public Message checkName(Long ids, String name) {
		BookBatch bb = teacherOrderBatchService.getOrderBatchByName(getTeacher().getSchoolId(), name);
		// 如果通过批次名查不到记录，那就是正确的，可以修改的
		if (bb == null) {
			return Message.success(I18nConstant.message_success);
		} else {

			// 如果通过批次名查的到记录，看下是否是修改页面传过来的ids是否为空，如果为空那就是添加页面的名字重复了
			if (ids == null) {

				return Message.error(I18nConstant.message_error);
			} else if (teacherOrderBatchService.get(ids).getName().equals(name)) {

				// 如果ids不为空，查下批次Id为ids的记录的名字是否与输入的名字一样，如果一样也可以的
				return Message.success(I18nConstant.message_success);
			} else {// 如果ids不为空，查出来的批次名与输入名不一致，而且批次名是可以在数据库里面查得到的，所以可以确定是名字重复了

				return Message.error(I18nConstant.message_error);
			}

		}
	}
	
	/**
	 * 
	 * @Title: reviewBatch
	 * @Description: 提交审核批次
	 * @param ids
	 * @return
	 * @return: String
	 */
	@RequestMapping("/reviewBatch")
	public String reviewBatch(Long ids, RedirectAttributes ra){
		//查询出这个学校这个批次的书的集合
		List<BookApply> list=teacherOrderBookService.getListByBatchId(getTeacher().getSchoolId(), ids);
		//如果有书就提交，没书不能提交
		if(list!=null&&list.size()>0){
			
			BookBatch bookBatch=teacherOrderBatchService.get(ids);
			//查看这个批次是否为当前批次，如果是的话需要取消当前批次
			if(bookBatch.getIsWorkBatch().equals(IsWorkBatchType.yes)){
				bookBatch.setIsWorkBatch(IsWorkBatchType.no);
			}
			//修改批次的状态为审核
			bookBatch.setStatus(BookBatchType.review);
			teacherOrderBatchService.updateSelective(bookBatch);
			//更新集合中的书的状态为审核
			for(BookApply bookApply:list){
				bookApply.setApplyStatus(BookApplyType.DEALING);
				teacherOrderBookService.updateSelective(bookApply);
			}
			addSuccessMessage(I18nConstant.success_edit, ra);
			
		}else{
			addErrorMessage(I18nConstant.error_edit_status, ra);
		}
		return redirect("/teacher/batch/list");
	}
	
	/**
	 * 
	 * @Title: orderBookList
	 * @Description: 查看批次里面所包含的书
	 * @return
	 * @return: String
	 */
	@RequestMapping("/selectBatch")
	public String selectBatch(Page page,Model model,HttpServletRequest request) {
		String id=request.getParameter("ids");

		if(id==null){
			id=request.getParameter("search_EQ_bookBatchId");
		}
		Long ids=Long.parseLong(id);

		BookBatch bookBatch=teacherOrderBatchService.get(ids);
		
		Map<String, Object> searchMap = ServletUtil.getParametersStartingWith(request);
		List<SearchFilter> filters = ServletUtil.parse(searchMap);
		filters.add(SearchFilter.eq("bookBatchId", ids));
		page.setSearchFilters(filters);

		page = teacherOrderBookService.find(page);

		model.addAttribute(PAGE, page);
		model.addAllAttributes(searchMap);
		model.addAttribute("ids", ids);
		
		//如果是预定状态下的批次，是可以修改电子书的数量，如果不是，则不可以改只能看和导出
		if(bookBatch.getStatus().equals(BookBatchType.reserve)){
			return "/teacher/orderBatch/reserveBookList";
		}else{
			return "/teacher/orderBatch/orderBookList";
		}
		
	}
	
	/**
	 * 
	 * @Title: exportExcel
	 * @Description: 导出电子书
	 * @param request
	 * @param response
	 * @return: void
	 */
	@RequestMapping("/exportExcel")
	public void exportExcel(HttpServletRequest request,HttpServletResponse response){
		Long batchId=Long.parseLong(request.getParameter("batchId"));
		List<ExportExcelBookApply> list=teacherOrderBookService.exportExcel(getTeacher().getSchoolId(), batchId);
		ExcelUtil eu = ExcelUtil.getInstance();
		HSSFWorkbook wb = eu.handleObj2Excel(list, ExportExcelBookApply.class, "sheet1", 65535);
		try {
			eu.download(wb, "电子书导出", response);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	/**
	 * 
	 * @Title: updateBookReplication
	 * @Description: 调整复本数
	 * @param id
	 * @param bookReplication
	 * @return
	 * @return: Message
	 */
	@RequestMapping("/updateBookReplication")
	@ResponseBody
	public  Message updateBookReplication(Long id,Long bookReplication, RedirectAttributes ra){
		BookApply book=teacherOrderBookService.get(id);
		BookBatch batch=teacherOrderBatchService.get(book.getBookBatchId());
		if(batch.getIsWorkBatch().equals(IsWorkBatchType.yes)){
			book.setBookReplication(bookReplication.intValue());
			teacherOrderBookService.updateSelective(book);
			return Message.success(I18nConstant.message_success);
		}else{
			addErrorMessage(I18nConstant.error_edit_status, ra);
			return Message.error(I18nConstant.message_error);
		}		
	}
	/**
	 * 
	 * @Title: deleteBookApply
	 * @Description: 删除电子书
	 * @param ids
	 * @param ra
	 * @return
	 * @return: String
	 */
	@RequestMapping("/deleteBookApply")
	public String deleteBookApply(Long ids, Model model,RedirectAttributes ra){
		BookApply book=teacherOrderBookService.get(ids);
		BookBatch batch=teacherOrderBatchService.get(book.getBookBatchId());
		if(batch.getIsWorkBatch().equals(IsWorkBatchType.yes)){
			teacherOrderBookService.remove(ids);
			addSuccessMessage(I18nConstant.success_delete,ra);
			
		}else{
			addErrorMessage(I18nConstant.error_delete_status,ra);
		}
		
		return redirect("/teacher/batch/selectBatch?ids="+batch.getId());
	}
	
	/**
	 * 
	 * @Title: getOrderBookBatch
	 * @Description: 获取预定状态的批次
	 * @return
	 * @return: BookBatch
	 */
	@RequestMapping("/getOrderBookBatch")
	@ResponseBody
	public BookBatch getOrderBookBatch() {
		return teacherOrderBatchService.getOrderBatch(getTeacher().getSchoolId(), IsWorkBatchType.yes);
	}
}
