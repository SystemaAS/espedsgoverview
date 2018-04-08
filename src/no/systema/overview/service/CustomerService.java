/**
 * 
 */
package no.systema.overview.service;

import no.systema.overview.model.JsonCustomerContainer;

/**
 * @author oscardelatorre
 * @date Apr 08, 2018
 *
 */
public interface CustomerService {
	public JsonCustomerContainer getCustomerContainer(String utfPayload);
	
	
}
