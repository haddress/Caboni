package co.caboni.prj.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SalesController {

	// 수주관리
	@RequestMapping("/contract.do")
	public String contract() {
		return "sales/contract";
	}

	// 생산의뢰관리
	@RequestMapping("/productrequest.do")
	public String productrequest() {
		return "sales/productrequest";
	}

	// 제품재고관리
	@RequestMapping("/goodsstk.do")
	public String goodsstk() {
		return "sales/goodsstk";
	}

	// 출하관리
	@RequestMapping("/shipping.do")
	public String shipping() {
		return "sales/shipping";
	}

	// 배송관리
	@RequestMapping("/deliver.do")
	public String deliver() {
		return "sales/deliver";
	}

	// 거래처정보모달
	@RequestMapping("/contractModal.do")
	public String contractModal() {
		return "modal/salesModal/contractModal";
	}

	// 제품정보모달
	@RequestMapping("/proName.do")
	public String proName() {
		return "modal/salesModal/proName";
	}

	// 배송정보모달
	@RequestMapping("/deliverModal.do")
	public String deliverModal() {
		return "modal/salesModal/deliverModal";
	}

	// 배송정보모달
	@RequestMapping("/shippingingModal.do")
	public String shippingingModal() {
		return "modal/salesModal/shippingingModal";
	}

}
