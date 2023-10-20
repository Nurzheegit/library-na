package com.example.Library.services;
import com.example.Library.models.Product;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.List;
@Service
public class ProductService {
    private List<Product> products = new ArrayList<>();
    private long ID = 0;

    public  List<Product> listProducts(){
        return products;
    }

    public void saveProduct(Product product){
        product.setId(++ID);
        products.add(product);

    }
    public void deleteProduct(Long id){
        products.removeIf(product -> product.getId().equals(id));
    }

    public Product getProdcutById(Long id) {
     for (Product product : products){
         if(product.getId().equals(id)) return product;
     }
     return null;

    }

    public Product updateProduct(Long id, Product updatedProduct) {
        for (int i = 0; i < products.size(); i++) {
            Product product = products.get(i);
            if (product.getId().equals(id)) {
                // Обновление полей продукта
                product.setTitle(updatedProduct.getTitle());
                product.setDescription(updatedProduct.getDescription());
                product.setPrice(updatedProduct.getPrice());
                // Можно обновить другие поля, если они есть

                return product;
            }
        }
        return null; // Возвращает null, если продукт с указанным id не найден
    }


}
