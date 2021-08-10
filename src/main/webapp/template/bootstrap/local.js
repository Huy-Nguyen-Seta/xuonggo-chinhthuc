var keylocal='dsitem';
function taodoituong(idsanpham,soluong,thumbnail,gia,title)
{
    var itemgiohang=new Object();
    itemgiohang.id=idsanpham;
    itemgiohang.soluong=soluong;
    itemgiohang.thumbnail=thumbnail;
    itemgiohang.gia=gia;
    itemgiohang.title=title;
    return itemgiohang;
}
function laydanhsachgiohang(){
    var danhsachitem=new Array();
    var json=localStorage.getItem(keylocal);
    if(json!=null)
    danhsachitem=JSON.parse(json);  
    return danhsachitem;
}

function luutrulocal(danhsach){
    var json=JSON.stringify(danhsach);

    localStorage.setItem(keylocal,json);


}
function PushIncart(idsanpham,thumbnail,gia,title)
{

    var danhsach=laydanhsachgiohang();
    var product =null;
    var danhsachmoi=danhsach.filter(element=>element.id!=idsanpham);
    if(danhsach.filter(element=>element.id==idsanpham).length>0){
    
     product=danhsach.filter(element=>element.id==idsanpham)[0];
   
    product.soluong= product.soluong+1;
    console.log(product)
    // console.log(soluong++)

    }
    else{
       product= taodoituong(idsanpham,1,thumbnail,gia,title);
            $('.body').append('<tr  id="node'+idsanpham+'">\n'+
    		' <th style="color:#FFA500	 ;font-weight:700	" scope="row">'+0+'</th>\n'+
    		'    <td  >\n'+
    		'									<img style=" width:50px; height:50px;padding-bottom: 5px;padding-top: 5px " src="<c:url value="/resources/images/'+thumbnail+'"/>"'+'  alt="image description"></td>\n'+
    		'    <td style="color:#FFA500	;font-size:15px ;font-weight:900		">'+title.toUpperCase()+'</td>\n'+
    		'    <td class="trash1" onclick="xoa('+idsanpham+')"  style="color:red"	 ><i class="fa fa-trash"></i></td>\n'+
    		'  </tr>')
    
    }
    danhsachmoi.push(product);
    luutrulocal(danhsachmoi)
    console.log("oke huydz")
      location.reload()
     
}
function laysoluong(){
var danhsach =laydanhsachgiohang();
return danhsach.length();
}

