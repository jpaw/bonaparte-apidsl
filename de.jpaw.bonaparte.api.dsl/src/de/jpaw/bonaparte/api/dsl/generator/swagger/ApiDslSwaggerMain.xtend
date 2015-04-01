/*
 * Code generator for Swagger 2.0
 */
package de.jpaw.bonaparte.api.dsl.generator.swagger

import de.jpaw.bonaparte.api.dsl.apiDsl.ApiObject
import de.jpaw.bonaparte.api.dsl.apiDsl.LicenseObject
import de.jpaw.bonaparte.api.dsl.apiDsl.Url
import de.jpaw.bonaparte.api.dsl.generator.ApiDslConstants
import java.util.List
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.xtext.generator.IFileSystemAccess
import org.eclipse.xtext.generator.IGenerator
import de.jpaw.bonaparte.api.dsl.apiDsl.HostnameWithOptionalPort
import de.jpaw.bonaparte.api.dsl.apiDsl.InfoObject
import de.jpaw.bonaparte.api.dsl.apiDsl.ContactObject
import de.jpaw.bonaparte.api.dsl.apiDsl.MimeType

/**
 * Generates code from your model files on save.
 * 
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#code-generation
 */
class ApiDslSwaggerMain implements IGenerator {
    
    public static final String GENERATED_SWAGGER_SUBFOLDER = "resources/swagger/";    // cannot start with a slash, must end with a slash

    
    /** Creates the filename to store a generated xsd file in. */
    def private static computeSwaggerFilename(ApiObject api) {
        return GENERATED_SWAGGER_SUBFOLDER + api.name + ".json"
    }
    
    override void doGenerate(Resource resource, IFileSystemAccess fsa) {
        for (api : resource.allContents.toIterable.filter(typeof(ApiObject))) {
            fsa.generateFile(api.computeSwaggerFilename, api.writeSwagger)
         }
    }
    
    def static jsonObject(List<String> fields) {
        return '''
            {
                «fields.filterNull.join(",\n")»
            }'''
    }
    
    def static asString(HostnameWithOptionalPort it) {
        if (port > 0)
            return '''«host»:«port»'''
        else
            return host
    }
    def static asString(Url it) {
        return '''«protocol.getName»://«host.asString»«path»'''
    }
    def static asString(MimeType it) {
        return mimeTypeRef?.mimeType ?: stdMimeType?.getName ?: explicitMimeType
    }
    def static optString(String contents, String name) {
        if (contents !== null)
            return '''"«name»": "«contents»"'''
    }
    def static optObj(String contents, String name) {
        if (contents !== null)
            return '''"«name»":«contents»'''
    }
    def static optArray(List<String> contents, String name) {
        if (contents !== null)
            return '''"«name»": [«contents.map['''"«it»"'''].join(", ")»]'''
    }
    // print array if not null and not empty
    def static optArraySE(List<String> contents, String name) {
        if (contents !== null && contents.size > 0)
            return '''"«name»": [«contents.map['''"«it»"'''].join(", ")»]'''
    }
    
    def private print(LicenseObject it) {
        if (licenseRef !== null) {
            return #[ licenseRef.shortName.optString("name"), ApiDslConstants.stdLicenseUrls.get(licenseRef.name).optString("url") ].jsonObject
        } else if (stdLicense !== null) {
            return #[ ApiDslConstants.stdLicenses.get(stdLicense).optString("name"), ApiDslConstants.stdLicenseUrls.get(stdLicense).optString("url") ].jsonObject
        } else {
            return #[ explicitLicenseName.optString("name"), explicitLicenseUrl.asString.optString("url") ].jsonObject
        }
    }
    
    def private print(ContactObject it) {
        #[ name.optString("name"), url?.asString.optString("url"), email.optString("email")].jsonObject
    }
    
    def private print(InfoObject it) {
        return if (it !== null) #[
            title           .optString  ("title"),
            description     .optString  ("description"),
            termsOfService  .optString  ("termsOfService"),
            contact?.print ?.optObj     ("contact"),
            license?.print ?.optObj     ("license"),
            version        ?.optString  ("version")
        ].jsonObject
    }
    
    def private writeSwagger(ApiObject it) {
        return #[
            "2.0"                   .optString  ("swagger"),
            info?.print             .optObj     ("info"),
            host?.asString          .optString  ("host"),
            // basePath?.optString("basePath"),
            schemes ?.map[getName]  .optArraySE ("schemes"),
            consumes?.map[asString] .optArraySE ("consumes"),
            produces?.map[asString] .optArraySE ("produces")
        ].jsonObject
    }
}
