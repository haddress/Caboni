package co.carboni.prj.common.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.carboni.prj.common.service.Bomservice;
import co.carboni.prj.common.service.Ccodeservice;
import co.carboni.prj.common.service.Costomerservice;
import co.carboni.prj.common.service.Errinfoservice;
import co.carboni.prj.common.service.Matinfoservice;
import co.carboni.prj.common.service.Procinfoservice;
import co.carboni.prj.common.vo.BomVO;
import co.carboni.prj.common.vo.CcodeVO;
import co.carboni.prj.common.vo.CostomerVO;
import co.carboni.prj.common.vo.ErrinfoVO;
import co.carboni.prj.common.vo.GoodsinfoVO;
import co.carboni.prj.common.vo.MatinfoVO;
import co.carboni.prj.common.vo.ProcinfoVO;

@Controller
public class CommonController {
	
	@Autowired private Ccodeservice ccodeDAO;
	@Autowired private Costomerservice costomerDAO;
	@Autowired private Matinfoservice matinfoDAO;
	@Autowired private Bomservice bomDAO;
	@Autowired private Procinfoservice procinfoDAO;
	@Autowired private Errinfoservice errinfoDAO;
	
	@RequestMapping("/ccode.do")
	public String cCode(){
		return "common/ccode";
	}
	
	@RequestMapping("bigList")
	@ResponseBody
	public List<CcodeVO> bigList() {
		List<CcodeVO> bigList = ccodeDAO.selectCodeAll();
		return bigList;
	}
	
	@RequestMapping("smallList")
	@ResponseBody
	public List<CcodeVO> smallList(CcodeVO vo) {
		List<CcodeVO> smallList = ccodeDAO.selectCodeClass(vo);
		return smallList;
	}
	
	@RequestMapping("/ccodeinsertsmall.do")
	public String cCodeInsertSmall(CcodeVO vo) {
		ccodeDAO.codeInsertSmall(vo);
		return "redirect:ccode.do";
	}
	
	@RequestMapping("/ccodeupdate.do")
	public String cCodeUpdate(CcodeVO vo) {
		ccodeDAO.codeUpdate(vo);
		return "redirect:ccode.do";
	}
	
	@RequestMapping("/codeDelete.do")
	public String codeDelete(CcodeVO vo) {
		ccodeDAO.codeDelete(vo);
		return "redirect:ccode.do";
	}
	
	//
	
	@RequestMapping("/costomer.do")
	public String costomer(Model model) {
		model.addAttribute("costList", costomerDAO.selectCostAll());
		return "common/costomer";
	}
	
	@RequestMapping("costomerinsert.do")
	public String costomerinsert(CostomerVO vo) {
		costomerDAO.costInsert(vo);
		return "redirect:costomer.do";
	}
	
	@RequestMapping("costomerupdate.do")
	public String costomerupdate(CostomerVO vo) {
		costomerDAO.costUpdate(vo);
		return "redirect:costomer.do";
	}
	
	@RequestMapping("costomerdelete.do")
	public String costomerdelete(CostomerVO vo) {
		costomerDAO.costDelete(vo);
		return "redirect:costomer.do";
	}
	
	//
	
	@RequestMapping("/matinfo.do")
	public String matInfo(Model model){
		model.addAttribute("mat", matinfoDAO.selectMatinfo());
		return "common/matinfo";
	}
	
	@RequestMapping("/matinfoinsert.do")
	public String matinfoinsert(MatinfoVO vo) {
		matinfoDAO.matinfoInsert(vo);
		return "redirect:matinfo.do";
	}
	
	@RequestMapping("/matinfodelete.do")
	public String matinfodelete(MatinfoVO vo) {
		matinfoDAO.matinfoDelete(vo);
		return "redirect:matinfo.do";
	}
	
	@RequestMapping("/matinfoupdate.do")
	public String matinfoupdate(MatinfoVO vo) {
		matinfoDAO.matinfoUpdate(vo);
		return "redirect:matinfo.do";
	}
	
	//
	
	@RequestMapping("/bom.do")
	public String bom() {
		return "common/bom";
	}
	
	@RequestMapping("/selectGoods")
	@ResponseBody
	public List<GoodsinfoVO> selectGoods(GoodsinfoVO vo){
		List<GoodsinfoVO> selectGoods = bomDAO.selectGoods(vo);
		return selectGoods;
	}
	
	@RequestMapping("/selectBom")
	@ResponseBody
	public List<BomVO> selectBom(BomVO vo) {
		List<BomVO> selectBom = bomDAO.selectBom(vo);
		return selectBom;
	}
	
	@RequestMapping("/bominsert")
	public String bominsert(BomVO vo) {
		bomDAO.bominsert(vo);
		return "redirect:bom.do";
	}
	
	@RequestMapping("/bomdelete")
	public String bomdelete(BomVO vo) {
		bomDAO.bomdelete(vo);
		return "redirect:bom.do";
	}
	
	
	//
	
	
	@RequestMapping("/procinfo.do")
	public String procInfo(Model model) {
		model.addAttribute("list", procinfoDAO.selectProcinfo());
		return "common/procinfo";
	}
	
	@RequestMapping("/procinfoinsert")
	public String procinfoinsert(ProcinfoVO vo) {
		procinfoDAO.procinfoinsert(vo);
		return "redirect:procinfo.do";
	}
	
	@RequestMapping("/procinfoupdate")
	public String procinfoupdate(ProcinfoVO vo) {
		procinfoDAO.procinfoupdate(vo);
		return "redirect:procinfo.do";
	}
	
	@RequestMapping("/procinfodelete")
	public String procinfodelete(ProcinfoVO vo) {
		procinfoDAO.procinfodelete(vo);
		return "redirect:procinfo.do";
	}
	
	@RequestMapping("/selectLine")
	@ResponseBody
	public List<ProcinfoVO> selectLine(ProcinfoVO vo) {
		List<ProcinfoVO> selectLine = procinfoDAO.selectLine(vo);
		return selectLine;
	}
	
	
	//
	
	
	@RequestMapping("/errinfo.do")
	public String errInfo(Model model) {
		model.addAttribute("list", errinfoDAO.selectErrinfo());
		return "common/errinfo";
	}
	
	@RequestMapping("/errinfoinsert")
	public String errinfoinsert(ErrinfoVO vo) {
		errinfoDAO.errinfoinsert(vo);
		return "redirect:errinfo.do";
	}
	
	@RequestMapping("/errinfoupdate")
	public String errinfoupdate(ErrinfoVO vo) {
		errinfoDAO.errinfoupdate(vo);
		return "redirect:errinfo.do";
	}
	
	@RequestMapping("/errinfodelete")
	public String errinfodelete(ErrinfoVO vo) {
		errinfoDAO.errinfodelete(vo);
		return "redirect:errinfo.do";
	}

}
