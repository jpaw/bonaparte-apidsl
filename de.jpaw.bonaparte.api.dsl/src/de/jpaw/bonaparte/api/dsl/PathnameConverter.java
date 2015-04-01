package de.jpaw.bonaparte.api.dsl;

import org.eclipse.xtext.conversion.impl.QualifiedNameValueConverter;

import com.google.inject.Singleton;

/**
 * A value converter for qualified names consisting of segments or wildcard literals separated by namespace delimiters.
 * Same as QualifiedNameValueConverter, but uses the slash as the separator.
 * 
 * @author Michael Bischoff
 */
@Singleton
public class PathnameConverter extends QualifiedNameValueConverter {
    @Override
    @Deprecated
    protected String getNamespaceDelimiter() {
        return "/";
    }
}
