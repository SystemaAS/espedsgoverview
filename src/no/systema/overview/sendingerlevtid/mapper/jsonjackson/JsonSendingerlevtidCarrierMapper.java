/**
 * 
 */
package no.systema.overview.sendingerlevtid.mapper.jsonjackson;

import java.util.Collection;

import no.systema.main.mapper.jsonjackson.general.ObjectMapperAbstractGrandFather;
import no.systema.overview.sendingerlevtid.model.jsonjackson.carrier.JsonSendingerlevtidCarrierContainer;
import no.systema.overview.sendingerlevtid.model.jsonjackson.carrier.JsonSendingerlevtidCarrierRecord;


import org.apache.log4j.Logger;

/**
 * @author oscardelatorre
 * @date Oct 16, 2013
 * 
 */
public class JsonSendingerlevtidCarrierMapper extends ObjectMapperAbstractGrandFather {
private static final Logger logger = Logger.getLogger(JsonTopicMapper.class.getName());
	
	/**
	 * 
	 * @param utfPayload
	 * @return
	 * @throws Exception
	 */
	public JsonSendingerlevtidCarrierContainer getContainer(String utfPayload) throws Exception{
		
		//At this point we now have an UTF-8 payload
		JsonSendingerlevtidCarrierContainer container = super.getObjectMapper().readValue(utfPayload.getBytes(), JsonSendingerlevtidCarrierContainer.class); 
		//logger.info(mapper.writeValueAsString(topicListContainer));
		logger.info("Mapping Customer object from JSON payload...");
		
		//DEBUG
		Collection<JsonSendingerlevtidCarrierRecord> fields = container.getTransporterlist();
		String prompt= "["+ JsonTopicMapper.class.getCanonicalName() + "]";
		
		for(JsonSendingerlevtidCarrierRecord record : fields){
			//logger.info(prompt + " --> json attribute, getMottaker: " + record.getSendNr());
		}
			
		return container;
		
	}
	
}
