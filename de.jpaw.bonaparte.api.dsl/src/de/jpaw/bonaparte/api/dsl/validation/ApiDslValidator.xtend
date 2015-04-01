package de.jpaw.bonaparte.api.dsl.validation

import de.jpaw.bonaparte.api.dsl.apiDsl.ApiDslPackage
import de.jpaw.bonaparte.api.dsl.apiDsl.PathsObject
import de.jpaw.bonaparte.api.dsl.apiDsl.SecurityDefinition
import org.eclipse.xtext.validation.Check
import de.jpaw.bonaparte.api.dsl.apiDsl.ResponseItem

/**
 * This class contains custom validation rules. 
 *
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#validation
 */
class ApiDslValidator extends AbstractApiDslValidator {

    @Check
    def checkSecurityDefinition(SecurityDefinition sd) {
        switch (sd.type) {
            case API_KEY: {
                if (sd.securityLocation === null)
                    error("Must provide a location to transfer the API key", ApiDslPackage.Literals.SECURITY_DEFINITION__TYPE)
            }
            case BASIC: {
                if (sd.securityLocation !== null)
                    error("Location specifier only allowed for API key type security", ApiDslPackage.Literals.SECURITY_DEFINITION__TYPE)
            }
            case OAUTH2: {
            }
        }
    }

    @Check
    def checkResponseItem(ResponseItem ri) {
        if (!ri.isIsDefault && ri.httpEnumCode === null) {
            // numeric code provided: it must be in range 100..999
            if (ri.httpStatusCode < 100 || ri.httpStatusCode > 999)
                error("Status code must be in range [100,999]", ApiDslPackage.Literals.RESPONSE_ITEM__HTTP_STATUS_CODE)
        }
    }
    
    @Check
    def checkPathsObject(PathsObject po) {
//        po.operations
    } 	
}
