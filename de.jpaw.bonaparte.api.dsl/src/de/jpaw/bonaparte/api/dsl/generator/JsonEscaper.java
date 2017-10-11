package de.jpaw.bonaparte.api.dsl.generator;


public class JsonEscaper {
    public static final int ESCAPE_TAB_SIZE = 128;      // the number of sequences defined in the tab
    public static char[] hextab = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };
    public static String[] jsonEscapes = new String[ESCAPE_TAB_SIZE];
    // initialize the escape sequences
    static {
        // preset special escapes
        jsonEscapes['\b'] = "\\b";
        jsonEscapes['\f'] = "\\f";
        jsonEscapes['\r'] = "\\r";
        jsonEscapes['\n'] = "\\n";
        jsonEscapes['\t'] = "\\t";
        jsonEscapes['\"'] = "\\\"";
        jsonEscapes['\\'] = "\\\\";
        // preset other control characters
        for (int i = 0; i < 32; ++i) {
            if (jsonEscapes[i] == null)
                jsonEscapes[i] = "\\u00" + hextab[i/16] + hextab[i & 15];
        }
    }

    /** Escape and quote the String s. Returns null (not "null") for a null parameter.
     * This implementation may not yet be fully Unicode-compliant.
     * See here for the explanation: http://stackoverflow.com/questions/1527856/how-can-i-iterate-through-the-unicode-codepoints-of-a-java-string
     *  */
    public static String quoteEscape(String s) {
        if (s == null)
            return null;
        final StringBuilder b = new StringBuilder(s.length() + 10);
        b.append('\"');
        final int len = s.length();
        for (int i = 0; i < len; ++i) {
            char c = s.charAt(i);
            int codePoint = c;  // this does not work correctly for Unicodes characters of the upper plane
            if ((codePoint & ~0x7f) != 0 || jsonEscapes[codePoint] == null)
                b.append(c);
            else
                b.append(jsonEscapes[codePoint]);
        }
        b.append('\"');
        return b.toString();
    }

    public static String quoteAlsoNull(String s) {
        return s == null ? "null" : quoteEscape(s);
    }
}
