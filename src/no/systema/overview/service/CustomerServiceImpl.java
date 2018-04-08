/**
 * 
 */
package no.systema.overview.service;

import no.systema.overview.mapper.CustomerMapper;
import no.systema.overview.model.JsonCustomerContainer;

/**
 * @author oscardelatorre
 * Apr 08, 2018
 *
 */
public class CustomerServiceImpl implements CustomerService{
	public JsonCustomerContainer getCustomerContainer(String utfPayload) {
		JsonCustomerContainer container = null;
		try{
			CustomerMapper mapper = new CustomerMapper();
			container = mapper.getContainer(utfPayload);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return container;
		
	}
}
