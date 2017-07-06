package com.yundao.cloudlib.controller.teacher;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mysql.jdbc.StringUtils;
import com.yundao.cloudlib.I18nConstant;
import com.yundao.cloudlib.bean.Teacher;
import com.yundao.cloudlib.model.enumType.BookBatchType;
import com.yundao.cloudlib.model.enumType.IsWorkBatchType;
import com.yundao.cloudlib.model.teacher.BookBatch;
import com.yundao.cloudlib.service.TeacherOrderBatchService;

import framework.mvc.Message;
import framework.page.Page;
import framework.page.SearchFilter;
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
		//查询需要修改为当前工作批次
		BookBatch bookBatch = teacherOrderBatchService.get(ids);
		// 查询是否已经存在当前批次
		BookBatch bb = teacherOrderBatchService.getOrderBatch(getTeacher().getSchoolId(), IsWorkBatchType.yes);
		 
		//
		if(bookBatch.getStatus().equals(BookBatchType.reserve)){
			if (bb != null) {
				// 存在当前工作批次，需要修改为不是当前工作批次
				bb.setIsWorkBatch(IsWorkBatchType.no);
				teacherOrderBatchService.updateSelective(bb);	
			}
			bookBatch.setIsWorkBatch(IsWorkBatchType.yes);
			teacherOrderBatchService.update(bookBatch);
			addSuccessMessage(I18nConstant.success_edit, ra);
		}else{
			addErrorMessage(I18nConstant.error_edit_status, ra);
		}
		
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
	@RequestMapping(value="/checkName",method=RequestMethod.POST)
	@ResponseBody
	public Message checkName(Long ids,String name){
		BookBatch bb=teacherOrderBatchService.getOrderBatchByName(getTeacher().getSchoolId(), name);
		//如果通过批次名查不到记录，那就是正确的，可以修改的
		if(bb==null){
			return Message.success(I18nConstant.message_success);
		}else{
			
			//如果通过批次名查的到记录，看下是否是修改页面传过来的ids是否为空，如果为空那就是添加页面的名字重复了
			if(ids==null){
				
				return Message.error(I18nConstant.message_error);
			}else if(teacherOrderBatchService.get(ids).getName().equals(name)){
				
				//如果ids不为空，查下批次Id为ids的记录的名字是否与输入的名字一样，如果一样也可以的
				return Message.success(I18nConstant.message_success);
			}else{//如果ids不为空，查出来的批次名与输入名不一致，而且批次名是可以在数据库里面查得到的，所以可以确定是名字重复了
				
				return Message.error(I18nConstant.message_error);
			}
			
		}
		
		
		
	}

	/**
	 * 
	 * @Title: orderBookList
	 * @Description: 查看批次里面所包含的书
	 * @return
	 * @return: String
	 */
	@RequestMapping("/orderBookList")
	public String orderBookList() {
		return "/teacher/orderBatch/orderBookList";
	}

	/**
	 * 
	 * @Title: getOrderBookBatch
	 * @Description: 获取预定状态的批次
	 * @return
	 * @return: BookBatch
	 */
	/*
	@RequestMapping("/getOrderBookBatch")
	@ResponseBody
	public BookBatch getOrderBookBatch() {
		return teacherOrderBatchService.getOrderBatch(getTeacher().getSchoolId(), BookBatchType.reserve);
	}
	 */
}
