/**
 * 
 */
package no.systema.overview.mapper;

//
import java.util.Collection;

//jackson library
import org.slf4j.*;

import no.systema.main.mapper.jsonjackson.general.ObjectMapperAbstractGrandFather;
//application library
import no.systema.overview.model.JsonCustomerContainer;
import no.systema.overview.model.JsonCustomerRecord;

/**
 * @author oscardelatorre
 * 
 */
public class CustomerMapper extends ObjectMapperAbstractGrandFather{
	private static final Logger logger = LoggerFactory.getLogger(CustomerMapper.class.getName());
	
	public JsonCustomerContainer getContainer(String utfPayload) throws Exception{
		//At this point we now have an UTF-8 payload
		JsonCustomerContainer customerListContainer = super.getObjectMapper().readValue(utfPayload.getBytes(), JsonCustomerContainer.class); 
		//logger.info(mapper.writeValueAsString(topicListContainer));
		logger.info("Mapping Customer object from JSON payload...");
		logger.info("[JSON-String payload status=OK]  " + customerListContainer.getUser());
		
		//DEBUG
		Collection<JsonCustomerRecord> fields = customerListContainer.getCustomerlist();
		for(JsonCustomerRecord record : fields){
			logger.info("knavn: " + record.getKnavn());
			logger.info("kundnr: " + record.getKundnr());
			
		}
			
		return customerListContainer;
	}
}
