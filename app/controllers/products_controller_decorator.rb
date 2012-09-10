# Make the Doc Helper available to all views
ProductsController.class_eval do
  def xls_output
    @products = Product.all
    render :layout => false
    headers['Content-Type'] = "application/vnd.ms-excel"
    headers['Content-Disposition'] = 'attachment; filename="products.xls"'
    #TODO - Everything ;-)
  end
end
