<%@ Page Title="SeeFar - Binocular Store" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CartApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <script src="../lib/jquery/jquery.js"></script>

    <!-- Section-->
    <section class="py-5">
        <div id="normal_stock" class="tab-pane active">
            <div class="container px-4 px-lg-5 mt-5">
                <div id="normalProductContainer" class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="images/binocula1.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Waterproof Outdoor Binocular Porro Telescope 20x50mm</h5>
                                    <!-- Product price-->
                                    $40.00
                               
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center">
                                    <button class="btn btn-primary" id="2" data-product_id="2" data-product_qty="1">Add to cart</button></div>
                            </div>
                        </div>
                    </div>

                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="images/binocula2.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Binoculars Aluminium Alloy 4 X 35 mm</h5>
                                    <!-- Product price-->
                                    $80.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center">
                                    <button class="btn btn-primary" id="3" data-product_id="3" data-product_qty="1">Add to cart</button></div>
                            </div>
                        </div>
                    </div>

                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="images/binocula3.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Vortex 10x42 Diamondback HD Binoculars</h5>

                                    <!-- Product price-->
                                    $40.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center">
                                    <button class="btn btn-primary" id="4" data-product_id="4" data-product_qty="1">Add to cart</button></div>
                            </div>
                        </div>
                    </div>

                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="images/binocula4.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Night Vision Binoculars</h5>
                                    <!-- Product price-->
                                    $280.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center">
                                    <button class="btn btn-primary" id="5" data-product_id="5" data-product_qty="1">Add to cart</button></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="images/binocular6.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Roof Prism Spiral Binoculars</h5>

                                    <!-- Product price-->
                                    $40.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center">
                                    <button class="btn btn-primary" id="6" data-product_id="6" data-product_qty="1">Add to cart</button></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="images/binocula7.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Zeiss Terra ED</h5>

                                    <!-- Product price-->
                                    $40.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center">
                                    <button class="btn btn-primary" id="7" data-product_id="7" data-product_qty="1">Add to cart</button></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="images/binocula8.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Nikon Acullon Binoculars</h5>

                                    <!-- Product price-->
                                    $40.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center">
                                    <button class="btn btn-primary" id="8" data-product_id="8" data-product_qty="1">Add to cart</button></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="images/binocula9.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Bushnell Binoculars</h5>

                                    <!-- Product price-->
                                    $40.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center">
                                    <button class="btn btn-primary" id="9" data-product_id="9" data-product_qty="1">Add to cart</button></div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>


            <div id="discounted_stock" class="tab-pane">
                <div class="container px-4 px-lg-5 mt-5">
                    <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

                        <div class="col mb-5">
                            <div class="card h-100">

                                <!-- Product image-->
                                <img class="card-img-top" src="images/binocula10.jpg" alt="..." />
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h5 class="fw-bolder">Malkina Binoculars 10x42mm</h5>

                                        <!-- Product price-->
                                        $18.00
                                    </div>
                                </div>
                                <!-- Product actions-->
                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                    <div class="text-center">
                                        <button class="btn btn-outline-danger" id="10" data-product_id="10" data-product_qty="1">Add to cart</button></div>
                                </div>
                            </div>
                        </div>


                        <div class="col mb-5">
                            <div class="card h-100">
                                <!-- Product image-->
                                <img class="card-img-top" src="images/binocula11.jpg" alt="..." />
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h5 class="fw-bolder">Malkina Binoculars 400px 10x25mm</h5>
                                        <!-- Product price-->
                                        $25.00
                                    </div>
                                </div>
                                <!-- Product actions-->
                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                    <div class="text-center">
                                        <button class="btn btn-outline-danger" id="11" data-product_id="11" data-product_qty="1">Add to cart</button></div>
                                </div>
                            </div>
                        </div>

                        <div class="col mb-5">
                            <div class="card h-100">

                                <!-- Product image-->
                                <img class="card-img-top" src="images/binocula11.jpg" alt="..." />
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h5 class="fw-bolder">Nikon Binoculars</h5>
                                        <!-- Product price-->
                                        $25.00
                                    </div>
                                </div>
                                <!-- Product actions-->
                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                    <div class="text-center">
                                        <button class="btn btn-outline-danger" id="12" data-product_id="12" data-product_qty="1">Add to cart</button></div>
                                </div>
                            </div>
                        </div>
                        <div class="col mb-5">
                            <div class="card h-100">
                                <!-- Product image-->
                                <img class="card-img-top" src="images/binocula5.jpg" alt="..." />
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h5 class="fw-bolder">Malkina Binoculars 200px 10x42mm</h5>
                                        <!-- Product price-->
                                        <span id="priceSpan" class="">$20.00</span>

                                    </div>
                                </div>

                                <!-- Product actions-->
                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                    <div class="text-center">
                                        <button data-product_id="13" id="13" data-product_qty="1" class="btn btn-outline-danger">Add to cart</button></div>
                                </div>
                            </div>
                        </div>



                    </div>
                </div>
            </div>
        </div>
    </section>

    <div>
        <!-- Button trigger modal -->
        <button type="button" hidden id="btnModalShow" class="btn btn-primary" data-toggle="modal" data-target="#displayCartItems">Launch demo modal</button>
    </div>
    <!-- Modal -->

    <div class="modal fade" id="displayCartItems" tabindex="-1" role="dialog" data-backdrop="static" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" style="width: 50%" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <center>
                        <h5 class="modal-title" id="exampleModalLabel">CART DETAILS</h5>
                    </center>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading" style="color: #333; background-color: #f5f5f5; border-color: #ddd;">
                                <div style="clear: both"></div>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-sm-12 table-responsive">
                                        <table class="table table-striped table-bordered" style="width: 100%" id="tableCartDetails">
                                            <thead>
                                                <tr>
                                                    <td style='display: none'></td>
                                                    <th>PRODUCT</th>
                                                    <th>PRICE</th>
                                                    <th>QUANTITY</th>
                                                    <th>REMOVE</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            </tbody>
                                            <tfoot>

                                                <tr>
                                                    <th colspan="3">SUBTOTAL AMOUNT</th>
                                                    <th id="tdTotalAmountvalue">0</th>
                                                </tr>

                                                <tr id="tr_discount" style="display: none">
                                                    <th colspan="3" style="color: red">VOUCHER DISCOUNT</th>
                                                    <th id="tdDiscountAmount" style="color: red; text-decoration: line-through">0</th>
                                                </tr>
                                                <tr>
                                                    <th colspan="3" style="background-color: lightgreen">PAYABLE AMOUNT</th>
                                                    <th id="tdTotalAfterDiscountvalue" style="background-color: lightgreen">0</th>
                                                </tr>
                                                <tr></tr>
                                                <tr>
                                                    <th colspan="2">
                                                        <input type="text" placeholder="ENTER VOUCHER" name="inputVoucher" id="inputVoucher" value="" class="form-control" /></th>
                                                    <th colspan="2" style='text-align: right'>
                                                        <button type="button" name="add" id="viewDicountVoucher" class="btn btn-success btn-xs">APPLY VOUCHER</button></th>
                                                </tr>
                                                <tr id="tableRowVoucherMessage" style="display:none">
                                                    <th colspan="4">
                                                        <p id="voucherSuccess" style="color: red"><strong>Voucher Applied!</strong></p>
                                                    </th>
                                                </tr>

                                            </tfoot>

                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    
                    <button type="button" class="btn btn-secondary" id="buttonClearCart">CLEAR CART</button>
                    <button type="button" class="btn btn-primary" id="btnContinue">PROCEED TO CHECKOUT</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer-->
    <footer class="py-5 bg-dark">
        <div class="container">
            <p class="m-0 text-center text-white">Copyright &copy; SeeFar Binocular Store 2022</p>
        </div>
    </footer>
</asp:Content>
