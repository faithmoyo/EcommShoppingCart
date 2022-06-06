<%@ Page Title="Test Shop" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CartApp._Default" %>

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
                                    <h5 class="fw-bolder">Test Product</h5>
                                    <!-- Product price-->
                                    $40.00
                               
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"> <button class="btn btn-primary" data-product_id="2" data-product_qty="1"  >Add to cart</button></div>
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
                                    <h5 class="fw-bolder">Test Binocula</h5>
                                    <!-- Product price-->
                                    $80.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"> <button class="btn btn-primary" data-product_id="3" data-product_qty="1" >Add to cart</button></div>
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
                                    <h5 class="fw-bolder">Test Binocula</h5>
                                    
                                    <!-- Product price-->
                                    $40.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center">  <button class="btn btn-primary" data-product_id="4" data-product_qty="1" >Add to cart</button></div>
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
                                    <h5 class="fw-bolder">Night Vision</h5>
                                    <!-- Product price-->
                                     $280.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"> <button class="btn btn-primary" data-product_id="5" data-product_qty="1" >Add to cart</button></div>
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
                                    <h5 class="fw-bolder">Roof Prism</h5>
                                    
                                    <!-- Product price-->
                                    $40.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><button class="btn btn-primary" data-product_id="6" data-product_qty="1">Add to cart</button></div>
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
                                <div class="text-center"><button class="btn btn-primary" data-product_id="7" data-product_qty="1">Add to cart</button></div>
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
                                    <h5 class="fw-bolder">Nikon Acullon</h5>
                                    
                                    <!-- Product price-->
                                    $40.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><button class="btn btn-primary"  data-product_id="8" data-product_qty="1">Add to cart</button></div>
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
                                    <h5 class="fw-bolder">Bushnell Binocula</h5>
                                 
                                    <!-- Product price-->
                                    $40.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><button class="btn btn-primary" data-product_id="9" data-product_qty="1">Add to cart</button></div>
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
                                    <h5 class="fw-bolder">Malkin Binocula 10x42</h5>
                               
                                    <!-- Product price-->                                   
                                    $18.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><button class="btn btn-outline-danger" data-product_id="10" data-product_qty="1">Add to cart</button></div>
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
                                    <h5 class="fw-bolder">Malkin Binocula 10x25</h5>
                                    <!-- Product price-->
                                       $25.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><button class="btn btn-outline-danger" data-product_id="11" data-product_qty="1">Add to cart</button></div>
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
                                    <h5 class="fw-bolder">Nikon Binocula</h5>
                                    <!-- Product price-->
                                      $25.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><button class="btn btn-outline-danger" data-product_id="12" data-product_qty="1">Add to cart</button></div>
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
                                    <h5 class="fw-bolder">Malkin Binocula</h5>                                    
                                    <!-- Product price-->
                                    <span id="priceSpan" class="">$20.00</span>
                                    
                                </div>
                            </div>
                            
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><button data-product_id="13" data-product_qty="1" class="btn btn-outline-danger" >Add to cart</button></div>
                            </div>
                        </div>
                    </div>
      
                           
           
                </div>
            </div></div>
           </div>
        </section>

     <div><!-- Button trigger modal -->
        <button type="button" hidden id ="btnModalShow" class="btn btn-primary" data-toggle="modal" data-target="#displayCartItems">  Launch demo modal</button></div>
     <!-- Modal -->

<div class="modal fade" id="displayCartItems" tabindex="-1" role="dialog" data-backdrop="static" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" style="width:50%" role="document">
    <div class="modal-content">
      <div class="modal-header">
       <center> <h5 class="modal-title" id="exampleModalLabel">CART ITEM DETAILS</h5></center>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
                <table class="table table-striped table-bordered" style="width:100%" id ="tableCartDetails">
                <thead>
                    <tr>
                        <td style='display:none'></td>
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

                      <tr id="trbulk_buy_discount" style="display:none">
                        <th colspan="3" >BULK BUY (10% OFF)</th>                      
                        <th id="tdBulkBuyDiscountAmount">0</th>                        
                       </tr>
                       <tr id="trlocal_buy_discount"  style="display:none">
                        <th colspan="3" >LOCAL BUY (5% OFF)</th>                      
                        <th id="tdLocalBuyDiscountAmount">0</th>                        
                      </tr>
                        <tr>
                            <th colspan="3">PAYABLE AMOUNT</th>                      
                            <th id="tdTotalAfterDiscountvalue">0</th>                        
                       </tr>
                        
                    </tfoot>
  
            </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" id="btnContinue">PROCEED</button>
      </div>
    </div>
  </div>
</div>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Test Binocula 2022</p></div>
        </footer>
       
     
</asp:Content>