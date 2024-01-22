package controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import entity.Product;
import service.ProductDao_usingJdbcTemplate;

@RestController
@RequestMapping("/api/product/")
public class ProductApiController {
	final private ProductDao_usingJdbcTemplate productDao;

	@Autowired
	public ProductApiController(ProductDao_usingJdbcTemplate productDao) {
		this.productDao = productDao;
	}

	@GetMapping("/list")
	public ResponseEntity<List<Product>> getAllProducts() {
		List<Product> products = productDao.getAll();
		return new ResponseEntity<>(products, HttpStatus.OK);
	}

	@GetMapping("/{id}")
	public ResponseEntity<Product> getCustomerById(@PathVariable int id) {
		Product product = productDao.getProductById(id);
		if (product != null) {
			return new ResponseEntity<>(product, HttpStatus.OK);
		} else {
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
	}

	@PostMapping("/create")
	public ResponseEntity<Product> createProduct(@RequestBody Product product){
		int rowsAffected = productDao.createProduct(product);
		if (rowsAffected > 0) {
			return new ResponseEntity<>(product, HttpStatus.CREATED);
		}else {
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	@PutMapping("/{id}")
	public ResponseEntity<Product> updateProduct(@PathVariable int id, @RequestBody Product updatedProduct){
		Product existingProduct = productDao.getProductById(id);
		if(existingProduct != null) {
			existingProduct.setName(updatedProduct.getName());
			existingProduct.setPrice(updatedProduct.getPrice());
			existingProduct.setQuantity(updatedProduct.getQuantity());
			int rowsAffected = productDao.updateProduct(existingProduct);
			if(rowsAffected > 0) {
				return new ResponseEntity<>(existingProduct, HttpStatus.OK);
			}else {
				return new ResponseEntity<>(HttpStatus.NOT_FOUND);
			}
		}else {
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	@DeleteMapping("/{id}")
	public ResponseEntity<Void> deleteProduct(@PathVariable int id){
		Product existingProduct = productDao.getProductById(id);
		if(existingProduct != null) {
			int rowsAffected = productDao.deleteProduct(id);
			if(rowsAffected > 0) {
				return new ResponseEntity<>(HttpStatus.NO_CONTENT);
			}else {
				return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
			}
		}else {
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
	}
	
}
