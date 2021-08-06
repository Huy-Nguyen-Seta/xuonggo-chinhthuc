<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <title>Trang chủ</title> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.css" rel="stylesheet"/>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>

<style>

</style>
</head>
<body>


                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Báo Cáo Doanh Thu</h1>
                      <input   type="text" id="datepicker" />
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Báo Cáo Doanh Thu</li>
                        </ol>
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body" id="tongthu">Primary Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href='<c:url value='./listdanhsachxong'/>'>Xem Chi Tiết</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body" id="tongchi">Warning Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href='<c:url value='./listdanhsachnhap'/>'>Xem Chi Tiết</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body" id="trangthai1">Success Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href='<c:url value='./listdanhsachxong'/>'>Xem Chi Tiết</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-danger text-white mb-4">
                                    <div class="card-body" id="trangthai0">Danger Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href='<c:url value='./listdanhsach'/>'>Xem Chi Tiết</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                           <div class="col-xl-3 col-md-6">
                                <div style="background-color: #FF00FF" class="card  text-white mb-9" >
                                    <div class="card-body" id="cart5" style="background-color: #FF00FF">Danger Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href='<c:url value='./bai-viet/danh-sach?page=1&limit=4'/>'>Xem Chi Tiết</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                                     <div class="col-xl-3 col-md-6">
                                <div style="background-color: #00FA9A" class="card  text-white mb-9" >
                                    <div class="card-body" id="cart6" style="background-color: #00FA9A">Danger Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href='<c:url value='./bai-viet/danh-sach?page=1&limit=4'/>'>Xem Chi Tiết</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                                  <div class="col-xl-3 col-md-6">
                                <div style="background-color: #20B2AA" class="card  text-white mb-9" >
                                    <div class="card-body" id="cart7" style="background-color: #20B2AA	">Danger Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href='<c:url value='./vtu?page=1&limit=6'/>'>Xem Chi Tiết</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                                  <div class="col-xl-3 col-md-6">
                                <div style="background-color: #FFDEAD" class="card  text-white mb-9" >
                                    <div class="card-body" id="cart8" style="background-color: #FFDEAD">Danger Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href='<c:url value='./vtu?page=1&limit=6'/>'>Xem Chi Tiết</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            
                        
                        </div>
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        <p id="thu">  Doanh Thu Năm 2021</p>
                                    </div>
                                    <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        <p id="chi">Tổng Chi Năm 2021</p>
                                    </div>
                                    <div class="card-body"><canvas id="myAreaChart2" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                        </div>
                       
                    </div>
                     <div class="col-lg-12">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-pie me-1"></i>
                                       Sản phẩm bán chạy
                                    </div>
                                    <div class="card-body"><canvas id="myPieChart1" width="100%" height="50"></canvas></div>
                                    <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                                </div>
                                </div>
                </main>
              
          
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="https://netdna.bootstrapcdn.com/bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.2.0/js/bootstrap-datepicker.min.js"></script>
<script>


$('#tongchi').text("Tổng Chi : "+${tongchi}.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,')+"VND")
$('#tongthu').text("Tổng Thu : "+${tongthu}.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,')+"VND");
$('#trangthai1').text("Số Hoá Đơn Đã Được Duyệt : "+${trangthai1})
$('#trangthai0').text("Số Hoá Đơn Chưa Được Duyệt : "+${trangthai0})
$('#cart5').text("Số Sản phẩm còn trong kho: "+${ProductsInstock})
$('#cart6').text("Số Sản phẩm hết hàng trong kho "+${Productsareoutofstock})
$('#cart7').text("Số Vật Liệu còn trong kho: "+${vtProductsInstock})
$('#cart8').text("Số Vật Liệu hết hàng trong kho "+${vtProductsareoutofstock})
var textchi=document.getElementById('chi')
var textthu=document.getElementById('thu')

var year=document.getElementById('datepicker')
console.log(${tongchi}.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,')+"VND")
console.log(${tongthu}.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,')+"VND")
window.onload = function () {
//put year 

textchi.innerText="Tổng chi năm "+${year}
textthu.innerText="Tổng thu năm "+${year}

//

	
	
	
	var ctx = document.getElementById("myAreaChart");
	
	var myLineChart = new Chart(ctx, {
	  type: 'line',
	  data: {
	    labels: ["01-01", "01-02", "01-03", "01-04", "01-05", "01-06", "01-07", "01-08", "01-09", "01-10", "01-11", "01-12"],
	    datasets: [{
	      label: "Sessions",
	      lineTension: 0.3,
	      backgroundColor: "rgba(2,117,216,0.2)",
	      borderColor: "rgba(2,117,216,1)",
	      pointRadius: 5,
	      pointBackgroundColor: "rgba(2,117,216,1)",
	      pointBorderColor: "rgba(255,255,255,0.8)",
	      pointHoverRadius: 5,
	      pointHoverBackgroundColor: "rgba(2,117,216,1)",
	      pointHitRadius: 50,
	      pointBorderWidth: 2,
	      data: ${chart},
	    }],
	  },
	  options: {
	    scales: {
	      xAxes: [{
	        time: {
	          unit: 'date'
	        },
	        gridLines: {
	          display: false
	        },
	        ticks: {
	          maxTicksLimit: 12
	        }
	      }],
	      yAxes: [{
	        ticks: {
	        
	          maxTicksLimit: 5
	        },
	        gridLines: {
	          color: "rgba(0, 0, 0, .125)",
	        }
	      }],
	    },
	    legend: {
	      display: false
	    }
	  }
	});
	//bar char
	var ctx1 = document.getElementById("myAreaChart2");
var myLineChart = new Chart(ctx1, {
	  type: 'line',
	  data: {
	    labels: ["01-01", "01-02", "01-03", "01-04", "01-05", "01-06", "01-07", "01-08", "01-09", "01-10", "01-11", "01-12"],
	    datasets: [{
	      label: "Sessions",
	      lineTension: 0.3,
	      backgroundColor: "rgba(2,117,216,0.2)",
	      borderColor: "rgba(2,117,216,1)",
	      pointRadius: 5,
	      pointBackgroundColor: "rgba(2,117,216,1)",
	      pointBorderColor: "rgba(255,255,255,0.8)",
	      pointHoverRadius: 5,
	      pointHoverBackgroundColor: "rgba(2,117,216,1)",
	      pointHitRadius: 50,
	      pointBorderWidth: 2,
	      data: ${listdsnhap},
	    }],
	  },
	  options: {
	    scales: {
	      xAxes: [{
	        time: {
	          unit: 'date'
	        },
	        gridLines: {
	          display: false
	        },
	        ticks: {
	          maxTicksLimit: 12
	        }
	      }],
	      yAxes: [{
	        ticks: {
	        
	          maxTicksLimit: 5
	        },
	        gridLines: {
	          color: "rgba(0, 0, 0, .125)",
	        }
	      }],
	    },
	    legend: {
	      display: false
	    }
	  }
});

	//end

	
	var lb=[];
	var da=[];
	var array1=${listds}
	
    for(var i=0;i<array1.length;i++){
        lb[i]=array1[i].title.toUpperCase();
   
        da[i]=array1[i].soluongmua;

    }
    

	var ctx = document.getElementById("myPieChart1");
	var myPieChart = new Chart(ctx, {
	  type: 'pie',
	  data: {
	    labels:lb,
	    datasets: [{
	      data: da,
	      backgroundColor: ['#007bff', '#FF0000', 'yellow', '#00FF00','#ADFF2F	','#66CDAA	','	#FFFF00'],
	    }],
	  },
	});

}
//put year
//put year
year.addEventListener("keyup", function(event) {
  let pattenyear=/^[2-4]\d{3}/
  if (event.keyCode === 13) {
  if(pattenyear.test(year.value)){
   window.location.href="/spring-mvc/quan-tri/trang-chu?year="+year.value;
  
  }else{
    year.value=''
    alert('nhập sai năm')
  }

  }
});
//end
//end
</script>

</body>
</html>