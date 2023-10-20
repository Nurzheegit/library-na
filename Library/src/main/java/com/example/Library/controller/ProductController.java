package com.example.Library.controller;

import com.example.Library.models.Product;
import com.example.Library.services.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
@RequiredArgsConstructor
public class ProductController {
    private final ProductService productService;

    @Autowired
    private ProductRepository productRepository;

    @GetMapping("/")
    public String product(Model model){
        model.addAttribute("products",productService.listProducts());
        productRepository.findAll();
        return "products";
    }
@GetMapping("/product/{id}")
public Object productInfo(@PathVariable Long id, Model model){
        model.addAttribute("product", productService.getProdcutById(id));
    productRepository.findById(id).orElse(null);
    return "product-info";
}


    @PostMapping("/product/create")
    public String createProduct(Product product){
     productService.saveProduct(product);
     productRepository.save(product);

        return "redirect:/";
    }
   @PostMapping("/product/delete/{id}")
    public String deleteProduct(@PathVariable Long id){
productService.deleteProduct(id);
       productRepository.deleteById(id);
        return "redirect:/";


   }
    @PostMapping("/product/update/{id}")
    public String updateProduct(@PathVariable Long id, Product updatedProduct) {
        Product existingProduct = productService.getProdcutById(id);
        if (existingProduct != null) {
            // Обновление полей существующего продукта
            existingProduct.setTitle(updatedProduct.getTitle());
            existingProduct.setDescription(updatedProduct.getDescription());
            existingProduct.setPrice(updatedProduct.getPrice());
            existingProduct.setCity(updatedProduct.getCity());
            existingProduct.setAuthor(updatedProduct.getAuthor());

            // Сохранение обновленного продукта
            productRepository.save(existingProduct);
        }
        return "redirect:/product/" + id;
    }
  }
