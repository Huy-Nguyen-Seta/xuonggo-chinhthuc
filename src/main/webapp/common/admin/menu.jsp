<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Trang quản trị</div>
                            
                            <a class="nav-link" href="<c:url value='/quan-tri/trang-chu?year=2021'/>">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Báo Cáo
                            </a>
                            <div class="sb-sidenav-menu-heading">Quản lý</div>
                               <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayout" aria-expanded="false" aria-controls="collapseLayout">
                                <div class="sb-nav-link-icon"><i class="fas fa-user"></i></div>
                               Người dùng và cung câp
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayout" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="<c:url value='/quan-tri/ncc?page=1&limit=6'/>">Nhà cung cấp</a>
                                  
                                </nav>
                                 <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="<c:url value='/quan-tri/user?page=1&limit=6'/>">Người dùng</a>
                                  
                                </nav>
                            </div>
                            
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-file-contract"></i></div>
                                Hoá đơn
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="<c:url value='/quan-tri/listdanhsach'/>">Hoá đơn xuất chưa được duyệt</a>
                                    <a class="nav-link" href="<c:url value='/quan-tri/listdanhsachxong'/>">Hoá đơn xuất đã được duyệt</a>
                                    <a class="nav-link" href="<c:url value='/quan-tri/lapdealnhap'/>">Tạo Hoá Đơn Nhâp</a>
                                    <a class="nav-link" href="<c:url value='/quan-tri/listdanhsachnhap'/>">Danh Sách Hoá Đơn Nhập</a>
                                   
                                    
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-box-open"></i></div>
                                Danh mục
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                        Sản Phẩm Bán
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="<c:url value='/quan-tri/bai-viet/danh-sach?page=1&limit=4'/>">Danh Sách Sản Phẩm</a>
                                            <a class="nav-link" href="<c:url value='/quan-tri/the-loai/danh-sach?page=1&limit=4'/>">Danh sách loại sản phẩm</a>
                                            <a class="nav-link" href="http://localhost:8080/spring-mvc/quan-tri/bai-viet/chinh-sua?page=1">Thêm Sản Phẩm</a>
                                            <a class="nav-link" href="http://localhost:8080/spring-mvc/quan-tri/the-loai/chinh-sua?page=1">Thêm Loại</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                       Nguyên Liệu Nhâp
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                        
                                            <a class="nav-link" href="http://localhost:8080/spring-mvc/quan-tri/vtu/chinh-sua?page=1">thêm ngyên liệu</a>
                                            <a class="nav-link" href="http://localhost:8080/spring-mvc/quan-tri/vtu?page=1&limit=6">danh sách nguyên liệu</a>
                                        </nav>
                                    </div>
                                </nav>
                            </div>
                          
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        Start Bootstrap
                    </div>
                </nav>
            </div>
