<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/tui-grid.css" />
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.0/jquery.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.8.3/underscore.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/backbone.js/1.3.3/backbone.js"></script>
<script type="text/javascript" src="https://uicdn.toast.com/tui.code-snippet/v1.4.0/tui-code-snippet.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/tui-grid.js"></script>
 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        ${path.MenuName }
       <!--  <small>Optional description</small> -->
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> ${path.path }</a></li>
      </ol>
    </section>

    <section class="content container-fluid">
   <div id="grid"></div>
		<%-- <div class="box">
			<div class="box-header">
				<button type="button" class="btn btn-primary pull-right add">추가</button>
                <button type="button" class="btn btn-primary pull-right submit">저장</button>
			</div>
			<!-- /.box-header -->
			<div class="box-body">
				<div id="example2_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
					<div class="row">
						<div class="col-sm-6"></div>
						<div class="col-sm-6"></div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<form id="menu">
							<table id="example2" class="table table-bordered table-hover dataTable" role="grid" aria-describedby="example2_info">
								<thead>
									<tr role="row">
										<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="">Delete</th>
										<th class="sorting_asc" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-sort="ascending" aria-label="SEQ">SEQ</th>
										<th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="CODE">코드</th>
										<th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="NAME">이름</th>
										<th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="LINK">링크</th>
										<th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="USEYN">사용여부</th>
										<th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="CREATEUSER">생성자</th>
										<th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="CREATEDATE">생성일</th>
										<th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="UPDATEUSER">수정자</th>
										<th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="UPDATEDATE">수정일</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${data.list }" var="list">
										<tr role="row" class="odd">
											<td>
												<input type="checkbox" class="delete">
												<input type="hidden" id="CURD" name="CURD" value="R">
											</td>
											<td class="sorting_1">
												<input type="text" id="SEQ" name="SEQ" value="${list.SEQ }" tabindex="0" disabled="disabled">
											</td>
											<td>
												<input type="text" id="CODE" name="CODE" value="${list.CODE }" tabindex="1">
											</td>
											<td>
												<input type="text" id="NAME" name="NAME" value="${list.NAME }" tabindex="2">
											</td>
											<td>
												<input type="text" id="LINK" name="LINK" value="${list.LINK }" tabindex="3">
											</td>
											<td>
												<input type="text" id="USEYN" name="USEYN" value="${list.USEYN }"  tabindex="4">
											</td>
											<td>
												<input type="text" id="CREATEUSER" name="CREATEUSER" value="${list.CREATEUSER }"  tabindex="5" disabled="disabled">
											</td>
											<td>
												<input type="text" id="CREATEDATE" name="CREATEDATE" value="${list.CREATEDATE }" tabindex="6" disabled="disabled">
											</td>
											<td>
												<input type="text" id="UPDATEUSER" name="UPDATEUSER" value="${list.UPDATEUSER }" tabindex="7" disabled="disabled">
											</td>
											<td>
												<input type="text" id="UPDATEDATE" name="UPDATEDATE" value="${list.UPDATEDATE }" tabindex="8" disabled="disabled">
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- /.box-body -->
		</div> --%>
	</section>
  </div>
  <!-- /.content-wrapper -->
  <!-- /.content-wrapper -->
<style type="text/css"> 
	input{     
 		border: none; 
 		background: transparent;
	} 
</style>
<script type="text/javascript" class="code-js">

  var grid = new tui.Grid({
      el: $('#grid'),
      scrollX: false,
      scrollY: false,
      columns: [
          {
              title: 'Name',
              name: 'name',
              onBeforeChange: function(ev){
                  console.log('Before change:' + ev);
              },
              onAfterChange: function(ev){
                  console.log('After change:' + ev);
              },
              editOptions: {
                  type: 'text',
                  useViewMode: true
              }
          },
          {
              title: 'Artist',
              name: 'artist',
              onBeforeChange: function(ev){
                  console.log('Before change:' + ev);
                  ev.stop();
              },
              onAfterChange: function(ev){
                  console.log('After change:' + ev);
              },
              editOptions: {
                  type: 'text',
                  maxLength: 10,
                  useViewMode: false
              }
          },
          {
              title: 'Type',
              name: 'typeCode',
              onBeforeChange: function(ev){
                  console.log('Before change:' + ev);
              },
              onAfterChange: function(ev){
                  console.log('After change:' + ev);
              },
              editOptions: {
                  type: 'select',
                  listItems: [
                      { text: 'Deluxe', value: '1' },
                      { text: 'EP', value: '2' },
                      { text: 'Single', value: '3' }
                  ],
                  useViewMode: true
              }
          },
          {
              title: 'Genre',
              name: 'genreCode',
              onBeforeChange: function(ev){
                  console.log('Before change:' + ev);
              },
              onAfterChange: function(ev){
                  console.log('After change:' + ev);
              },
              editOptions: {
                  type: 'checkbox',
                  listItems: [
                      { text: 'Pop', value: '1' },
                      { text: 'Rock', value: '2' },
                      { text: 'R&B', value: '3' },
                      { text: 'Electronic', value: '4' },
                      { text: 'etc.', value: '5' }
                  ],
                  useViewMode: true
              },
              copyOptions: {
                  useListItemText: true // when this option is used, the copy value is concatenated text
              }
          },
          {
              title: 'Grade',
              name: 'grade',
              onBeforeChange: function(ev){
                  console.log('Before change:' + ev);
              },
              onAfterChange: function(ev){
                  console.log('After change:' + ev);
              },
              copyOptions: {
                  useListItemText: true
              },
              editOptions: {
                  type: 'radio',
                  listItems: [
                      { text: '★☆☆☆☆', value: '1' },
                      { text: '★★☆☆☆', value: '2' },
                      { text: '★★★☆☆', value: '3' },
                      { text: '★★★★☆', value: '4' },
                      { text: '★★★★★', value: '5' }
                  ],
                  useViewMode: true
              }
          }
      ]
  });

  grid.setData();
  </script>