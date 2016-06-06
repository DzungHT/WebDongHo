$('.item_add').click(function () {
    var spid = this.id.split('_')[1];
    $.ajax({
        method: "POST",
        url: "/cart/addCart",
        data: {
            SanphamID: spid,
            Soluong: 1
        },
        success: function (data) {
            $('#total_cart span').text(data);
            alert('Thêm vào giỏ hàng thành công. \nBạn có ' + data + ' sản phẩm trong giỏ hàng');
        }, 
        error: function () {
            alert("Thất bại.");
        }
    })
})