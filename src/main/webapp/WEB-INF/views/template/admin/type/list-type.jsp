<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../components/head.jsp"></jsp:include>
<jsp:include page="../components/nav-bar.jsp"></jsp:include>
<jsp:include page="../components/side-bar.jsp"></jsp:include>
<!-- @author: Lam Cong Hau -->
<div class="content-wrapper" style="min-height: 1299.69px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>Type list</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="${pageContext.servletContext.contextPath}/admin">Home</a></li>
						<li class="breadcrumb-item active">Type list</li>
					</ol>
				</div>
			</div>
		</div>
		<!-- /.container-fluid -->
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<!-- /.card -->
					<div class="card">
						<div class="card-header">
							<h3 class="card-title">Type list</h3>
						</div>
						<!-- /.card-header -->
						<div class="card-body">
							<div id="example1_wrapper"
								class="dataTables_wrapper dt-bootstrap4">
								<div class="row">
									<div class="col-sm-3">
										<a
											href="${pageContext.servletContext.contextPath}/admin/type/new"
											class="btn btn-success">Add type</a>
									</div>
									<div class="col-sm-12">
										<table id="example1"
											class="table table-bordered table-striped dataTable dtr-inline"
											role="grid" aria-describedby="example1_info">
											<thead>
												<tr role="row">
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1">Id</th>
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1">Name</th>
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1">Category</th>
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1">Action</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="type" items="${list }">
													<tr>
														<td>${type.id }</td>
														<td>${type.name }</td>
														<td>${type.category.name }</td>
														<td class="project-actions text-center"> <a
															class="btn btn-info btn-sm" href="${pageContext.request.contextPath}/admin/type/edit?id=${type.id}"><i
																class="fas fa-pencil-alt"></i>Edit</a></td>
													</tr>
												</c:forEach>
											</tbody>
											<tfoot>
											</tfoot>
										</table>
									</div>
								</div>
							</div>
						</div>
						<!-- /.card-body -->
					</div>
					<!-- /.card -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</section>
	<!-- /.content -->
</div>
<jsp:include page="../components/footer.jsp"></jsp:include>