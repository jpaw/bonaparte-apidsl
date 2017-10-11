package de.jpaw.bonaparte.api.dsl;

import javax.inject.Inject;

import org.eclipse.xtext.conversion.IValueConverter;
import org.eclipse.xtext.conversion.ValueConverter;
import org.eclipse.xtext.conversion.impl.QualifiedNameValueConverter;

import de.jpaw.bonaparte.dsl.generator.CommentConverter;

public class ApiDslConverter extends CommentConverter {
    @Inject
    private QualifiedNameValueConverter myQNValueConverter;
    @Inject
    private PathnameConverter pathnameConverter;

    // a value converter for hostnames
    @ValueConverter(rule = "Hostname")
    public IValueConverter<String> hostname() {
        return myQNValueConverter;
    }

    // a value converter for pathnames
    @ValueConverter(rule = "RelativePathname")
    public IValueConverter<String> pathname() {
        return pathnameConverter;
    }

    // a value converter for pathnames
    @ValueConverter(rule = "RelativePathnameWithTemplating")
    public IValueConverter<String> templatingPathname() {
        return pathnameConverter;
    }
}
