package co.carboni.prj.produce.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import co.carboni.prj.produce.mapper.ProdMapper;
import co.carboni.prj.produce.vo.ProdPlanVO;

@RestController
public class ProdServiceImpl implements ProdService {
	
	@Autowired
	ProdMapper mapper;
	
	// 생산계획관리
		// 미생산주문조회
		@Override
		public List<ProdPlanVO> findUnprod(String startDt, String endDt) {
			return mapper.findUnprod(startDt, endDt);
		}
	
		// 생산계획에 추가할 제품 목록
		@Override
		public List<ProdPlanVO> planProduct(ProdPlanVO vo) {
			return mapper.planProduct(vo);
		}
		
		// 생산계획에서 선택한 제품의 자재목록
		@Override
		public List<ProdPlanVO> matList(String prnum) {
			return mapper.matList(prnum);
		}
		
		// 생산계획에서 부족한 자재 발주요청
		@Override
		public void requestMat(ProdPlanVO vo) {
		}
	
		// 생산계획등록
		@Override
		public int addProdPlan(ProdPlanVO vo) {
			mapper.addProdPlan(vo);
			System.out.println(vo);
			return 1;
		}


	

	

}