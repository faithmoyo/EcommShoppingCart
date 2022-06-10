$(document).ready(function () {
    debugger;
    var product_id_array = [];
    var addProductArray = [];

    $("#buttonViewCart").on('click', function () {
        debugger;

        let product_id_list = product_id_array.join(",");//'1,2,3';
        let productArray = [];
        $.when(

            $.ajax({
                type: 'GET',
                cache: true,
                url: "http://localhost/EcommerceApi/api/v1/ecommerce_api/getproducts?product_id_list=" + product_id_list,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    debugger;
                    $("#tableCartDetails > tbody").html("");
                    if (response != null && response != "") {

                        if (typeof response === 'object')
                            productArray = response;
                        else if (typeof userData === 'string')
                            productArray = JSON.parse(response);

                    }

                    if (productArray.length > 0) {

                        productArray.forEach((entry) => {
                            debugger;
                            $("#tableCartDetails > tbody").append("<tr><td id='td_product_id' style='display:none'>" + entry.PRODUCT_ID + "</td><td id='td_cartdetail_desc' style='text-align:center'>" + entry.PRODUCT_DESCRIPTION + "</td><td style='text-align:center'> " + entry.PRODUCT_UNIT_PRICE + "</td><td style='text-align:center'><input type='number' id='txt_quantity'  value= 1 style='width: 100 %'></td><td><button  data-product_id_current=" + entry.PRODUCT_ID + " class='btn btn-danger' style='width: 100 %'>REMOVE</button></td></tr>");
                        });
                    }

                    $("#btnModalShow").trigger("click");
                },
                error: function (data) {
                    debugger;
                    console.log(data.responseText);

                }
            })
        ).done(function (x) {

            let salesOrderLines = [];

            $('#tableCartDetails #td_cartdetail_desc').each(function () {
                debugger;
                let salesOrderLine = {
                    'PRODUCT_ID': $(this).closest('tr').find('#td_product_id').text(),
                    'QUANTITY': $(this).closest('tr').find('#txt_quantity').val()
                }
                salesOrderLines.push(salesOrderLine);
            });
            debugger;

            let ShoppingCart = {
                'productList': productArray,
                'salesOrderLines': salesOrderLines,
                'discountVoucher': $('#inputVoucher').val()
            }
            let calculatedTotal = {};
            $.ajax({
                type: 'POST',
                cache: true,
                url: "http://localhost/EcommerceApi/api/v1/ecommerce_api/calculateTotal",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: JSON.stringify(ShoppingCart),
                success: function (response) {
                    debugger;
                    if (response != null && response != "") {
                        debugger;
                        if (typeof response === 'object')
                            calculatedTotal = response;
                        else if (typeof userData === 'string')
                            calculatedTotal = JSON.parse(response);
                        debugger;
                    }
                    if (calculatedTotal != null) {

                        $("#tdDiscountAmount").text("$" + calculatedTotal.totalBulkBuyDiscount.toFixed(2));
                        $("#tdTotalAmountvalue").text("$" + calculatedTotal.totalAmount.toFixed(2));

                        $("#tdTotalAfterDiscountvalue").text("$" + calculatedTotal.actualAmount.toFixed(2));
                        if (calculatedTotal.totalBulkBuyDiscount != null && calculatedTotal.totalBulkBuyDiscount > 0) {
                            $("#tr_discount").show();
                        }

                    }


                },
                error: function (data) {
                    debugger;
                    console.log(data.responseText);

                }
            });


        });


    });

    $('#discounted_stock').on('click', 'button', function () {
        debugger;
        let currentProductId = $(this).attr('data-product_id');
        let currentProduct_qty = $(this).attr('data-product_qty');
        product_id_array.push(currentProductId);

        let product_object_added = {
            'PRODUCT_ID': currentProductId,
            'QUANTITY': currentProduct_qty
        };
        addProductArray.push(product_object_added);
        getCartCount(addProductArray);
        $(this).prop("disabled", true);

    });

    $('#tableCartDetails').on('click', 'button', function () {
        debugger;
        let product_id_current = Number($(this).attr('data-product_id_current'));
        product_id_array = RemoveTableElement(product_id_array, product_id_current);
        addProductArray = removeArrayElement(addProductArray, product_id_current)
        reloadTableData(product_id_array, addProductArray);
        getCartCount(addProductArray);
    });

    $('#normal_stock').on('click', 'button', function () {
        debugger;
        let currentProductId = $(this).attr('data-product_id');
        let currentProduct_qty = $(this).attr('data-product_qty');
        product_id_array.push(currentProductId);

        let product_object_added = {
            'PRODUCT_ID': currentProductId,
            'QUANTITY': currentProduct_qty
        };
        addProductArray.push(product_object_added);
        getCartCount(addProductArray);
        $(this).prop("disabled", true);
    });

    $('#tableCartDetails').on('input', 'input[type="number"]', function () {
        let quantity = $(this).closest('tr').find('#txt_quantity').val();
        if (quantity > 0) {

            let currentProductId = $(this).closest('tr').find('#td_product_id').text();
            addProductArray = removeArrayElement(addProductArray, currentProductId);

            let product_object_added = {
                'PRODUCT_ID': $(this).closest('tr').find('#td_product_id').text(),
                'QUANTITY': quantity
            }
            addProductArray.push(product_object_added);
            reloadTableData(product_id_array, addProductArray);
            getCartCount(addProductArray);
        }
    });

});

function RemoveTableElement(currentProductArray, productId) {
    debugger;
    let filtered_array = currentProductArray.filter(function (element) { return element != productId; });
    debugger;
    return filtered_array;
}

function removeArrayElement(current_addProductArray, current_product_id) {
    let filtered_array = current_addProductArray.filter(function (element) { return element.PRODUCT_ID != current_product_id; });
    debugger;
    return filtered_array;
}
function reloadTableData(current_product_id_array, currentAddedProductArray) {

    let product_id_list = current_product_id_array.join(",");
    let productArray = [];



    $.when(

        $.ajax({
            type: 'GET',
            cache: true,
            url: "http://localhost/EcommerceApi/api/v1/ecommerce_api/getproducts?product_id_list=" + product_id_list,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                debugger;
                $("#tableCartDetails > tbody").html("");
                if (response != null && response != "") {

                    if (typeof response === 'object')
                        productArray = response// dont parse if object 
                    else if (typeof userData === 'string')
                        productArray = JSON.parse(response);

                }

                if (productArray.length > 0) {

                    productArray.forEach((entry) => {
                        debugger;
                        let salesOrderLineQuantity = 0;

                        currentAddedProductArray.forEach((x) => {
                            debugger;

                            if (x.PRODUCT_ID == entry.PRODUCT_ID) {
                                salesOrderLineQuantity = x.QUANTITY;
                            }
                        });
                        debugger;
                        $("#tableCartDetails > tbody").append("<tr><td id='td_product_id' style='display:none'>" + entry.PRODUCT_ID + "</td><td id='td_cartdetail_desc' style='text-align:center'>" + entry.PRODUCT_DESCRIPTION + "</td><td style='text-align:center'> " + entry.PRODUCT_UNIT_PRICE + "</td><td style='text-align:center'><input type='number' id='txt_quantity'  value= " + salesOrderLineQuantity + " style='width: 100 %'></td><td><button  data-product_id_current=" + entry.PRODUCT_ID + " class='btn btn-danger' style='width: 100 %'>REMOVE</button></td></tr>");
                    });
                }


            },
            error: function (data) {
                debugger;
                console.log(data.responseText);

            }
        })
    ).done(function (x) {

        let salesOrderLines = [];
        $("#trlocal_buy_discount").hide();
        $("#trbulk_buy_discount").hide();

        $('#tableCartDetails #td_cartdetail_desc').each(function () {
            debugger;
            let salesOrderLine = {
                'PRODUCT_ID': $(this).closest('tr').find('#td_product_id').text(),
                'QUANTITY': $(this).closest('tr').find('#txt_quantity').val()
            }
            salesOrderLines.push(salesOrderLine);
        });
        debugger;

        let TestObject = {
            'productList': productArray,
            'salesOrderLines': salesOrderLines,
            'discountVoucher': $('#inputVoucher').val()
        }
        let calculatedTotal = {};
        $.ajax({
            type: 'POST',
            cache: true,
            url: "http://localhost/EcommerceApi/api/v1/ecommerce_api/calculateTotal",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            data: JSON.stringify(TestObject),
            success: function (response) {
                debugger;
                if (response != null && response != "") {
                    debugger;
                    if (typeof response === 'object')
                        calculatedTotal = response;
                    else if (typeof userData === 'string')
                        calculatedTotal = JSON.parse(response);
                    debugger;
                }
                if (calculatedTotal != null) {


                    $("#tdDiscountAmount").text("$" + calculatedTotal.totalBulkBuyDiscount.toFixed(2));
                    $("#tdTotalAmountvalue").text("$" + calculatedTotal.totalAmount.toFixed(2));

                    $("#tdTotalAfterDiscountvalue").text("$" + calculatedTotal.actualAmount.toFixed(2));
                    if (calculatedTotal.totalBulkBuyDiscount != null && calculatedTotal.totalBulkBuyDiscount > 0) {
                        $("#tr_discount").show();
                    }

                }


            },
            error: function (data) {
                debugger;
                console.log(data.responseText);

            }
        });



    });



}

function getCartCount(addProductArray) {
    debugger;
    $.ajax({
        type: 'POST',
        cache: true,
        url: "http://localhost/EcommerceApi/api/v1/ecommerce_api/countCartItem",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        data: JSON.stringify(addProductArray),
        success: function (response) {
            debugger;
            $("#span_cart_count").text("");
            if (response != null) {
                $("#span_cart_count").text(response);
            }

        },
        error: function (data) {
            debugger;
            console.log(data.responseText);

        }
    });
}

function IsReSponseAJson(str) {
    try {
        if (typeof str === 'string') {
            var json = JSON.parse(str);
            return (typeof json === 'object');
        } else {
            return false;
        }
    } catch (e) {
        return false;
    }
}