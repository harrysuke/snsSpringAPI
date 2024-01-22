package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import entity.Vep;
import service.VepDao;

@RestController
@RequestMapping("/api")
public class SnsApiController {
	final private VepDao vepDao;
	
	@Autowired
	public SnsApiController(VepDao vepDao) {
		this.vepDao = vepDao;
	}
	
	@GetMapping("/list")
	public ResponseEntity<List<Vep>> getAllVep(){
		List<Vep> vep = vepDao.getAll();
		return new ResponseEntity<>(vep, HttpStatus.OK);
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<Vep> getVepByid(@PathVariable int id){
		Vep vep = vepDao.getVepById(id);
		if(vep != null) {
			return new ResponseEntity<>(vep, HttpStatus.OK);
		}else {
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
	}
	
	@PostMapping("/create")
	public ResponseEntity<Vep> createVep(@RequestBody Vep vep){
		int rowsAffected = vepDao.createVep(vep);
		if(rowsAffected > 0) {
			return new ResponseEntity<>(vep, HttpStatus.CREATED);
		}else {
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	@PutMapping("/{id}")
	public ResponseEntity<Vep> updateVep(@PathVariable int id, @RequestBody Vep updatedVep){
		Vep existingVep = vepDao.getVepById(id);
		if(existingVep != null) {
			existingVep.setRnu(updatedVep.getRnu());
			existingVep.setName(updatedVep.getName());
			existingVep.setCompanyName(updatedVep.getCompanyName());
			existingVep.setVehicleNo(updatedVep.getVehicleNo());
			existingVep.setContactNo(updatedVep.getContactNo());
			existingVep.setDateofVisit(updatedVep.getDateofVisit());
			existingVep.setExpiryDate(updatedVep.getExpiryDate());
			existingVep.setLocationtoVisit(updatedVep.getLocationtoVisit());
			existingVep.setPurposeofVisit(updatedVep.getPurposeofVisit());
			existingVep.setPermitType(updatedVep.getPermitType());
			existingVep.setId(id);
			int rowAffected = vepDao.updateVep(existingVep);
			if(rowAffected > 0) {
				return new ResponseEntity<>(existingVep, HttpStatus.OK);
			}else {
				return new ResponseEntity<>(HttpStatus.NOT_FOUND);
			}
		}else {
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	@DeleteMapping("/{id}")
	public ResponseEntity<Void> deleteVep(@PathVariable int id){
		Vep existingVep = vepDao.getVepById(id);
		if(existingVep != null) {
			int rowsAffected = vepDao.deleteVep(id);
			if(rowsAffected > 0) {
				return new ResponseEntity(HttpStatus.OK);
			}else {
				return new ResponseEntity(HttpStatus.INTERNAL_SERVER_ERROR);
			}
		}else {
			return new ResponseEntity(HttpStatus.NOT_FOUND);
		}
	}
}
