/*
 * generated by Xtext
 */
package de.jpaw.bonaparte.api.dsl;

/**
 * Initialization support for running Xtext languages 
 * without equinox extension registry
 */
public class ApiDslStandaloneSetup extends ApiDslStandaloneSetupGenerated{

	public static void doSetup() {
		new ApiDslStandaloneSetup().createInjectorAndDoEMFRegistration();
	}
}
