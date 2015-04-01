package de.jpaw.bonaparte.api.dsl;

import org.eclipse.xtext.conversion.IValueConverterService;

/**
 * Use this class to register components to be used at runtime / without the Equinox extension registry.
 */
public class ApiDslRuntimeModule extends de.jpaw.bonaparte.api.dsl.AbstractApiDslRuntimeModule {

    @Override
    public Class<? extends IValueConverterService> bindIValueConverterService() {
        return ApiDslConverter.class;
    }
}
