<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../header.jsp" %>

	<div class="container text-center">
<!-- 본문 시작 template.jsp -->
		<div class="row">
			<div class="col-sm-12">
				<p><h3>동물 수정</h3></p>
			</div>
		</div>
		
		<div class="row">
			<div class="col-sm-12">
				<form name="centerfrm" id="centerfrm" method="post" action="update" enctype="multipart/form-data">
					<table class="table table-hover">
						<tbody style="text-align: left">
						<tr>
							<td>동물번호</td>
							<td><input type="text" name="anino" class="form-control" value="${center.anino}"></td>
						</tr>
						<tr>
							<td>이름</td>
							<td><input type="text" name="aname" class="form-control" value="${center.aname}"></td>
						</tr>
						<tr>
							<td>나이</td>
							<td><input placeholder="숫자만 입력해 주세요" name="age" class="form-control" value="${center.age}"> </td>
						</tr>
						<tr>
							<td>성별</td>
							<td>
							<label>
								수컷<input class="form-check-input" type="radio" value="M" name="gender">
								암컷<input class="form-check-input" type="radio" value="F" name="gender">
							</label>
							</td>
						</tr>
						<tr>
							<td>몸무게</td>
							<td><input placeholder="예시: 15kg"type="text" name="weight" class="form-control" value="${center.weight}"> </td>
						</tr>
						<tr>
							<td>중성화 여부</td>
							<td>
							<label value="${center.genop}">
								예<input class="form-check-input" type="radio" value="Y" name="genop">
								아니오<input class="form-check-input" type="radio" value="N" name="genop">
							</label>
							</td>
						</tr>
						<tr>
							<td>접종 여부</td>
							<td>
							<label>
								예<input class="form-check-input" type="radio" value="Y" name="vac">
								아니오<input class="form-check-input" type="radio" value="N" name="vac">
							</label>
							</td>
						</tr>
						<tr>
							<td>소개</td>
							<td>
  								<textarea placeholder="간단한 소개를 작성해 주세요" class="form-control" name="intro" >${center.intro}</textarea>
							</td>
						</tr>
						<tr>
							<td>사진</td>
							<td>
								<input type="file" name="img" value="${center.anipic}" multiple="multiple">
							</td>
						</tr>
						<tr>
							<td>입양상태</td>
							<td>
								<select class="form-select" name="adopt" value="${center.adopt}">
								  <option selected>선택</option>
								  <option value="B">보호중</option>
								  <option value="S">심사중</option>
								  <option value="O">입양완료</option>
								  <option value="G">귀가</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>입양가능 여부</td>
							<td>
							<label value="${center.adopt_pos}">
								예<input class="form-check-input" type="radio" value="Y" name="adopt_pos">
								아니오<input class="form-check-input" type="radio" value="N" name="adopt_pos">
							</label>
							</td>
						</tr>
						<tr>
							<td colspan="2" align="right">
								<input type="button" value=" 취소 " class="btn btn-danger rotate-text" onclick="location.href='centerForm'">
								<input type="submit" value=" 수정 " class="btn btn-warning rotate-text" onclick="submit">
							</td>
						</tr>
						</tbody>
					</table>
				</form>
			</div>
		</div>
	</div>
<!-- 본문 끝 -->


<%@ include file="../footer.jsp" %>      