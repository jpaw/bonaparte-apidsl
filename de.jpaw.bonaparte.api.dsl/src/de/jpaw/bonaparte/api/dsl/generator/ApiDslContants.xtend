package de.jpaw.bonaparte.api.dsl.generator

import static de.jpaw.bonaparte.api.dsl.apiDsl.PredefinedLicense.*
import static de.jpaw.bonaparte.api.dsl.apiDsl.PredefinedMimeType.*

/** A class which defines data for the predefined licenses and MIME types. */
class ApiDslConstants {
    public static val stdLicenses = #{
        ASL2   -> "Apache License 2.0",
        BSD2   -> "BSD Public License, Version 2.0", 
        BSD3   -> "BSD Public License, Version 3.0",
        GPL2   -> "GNU General Public License, version 2", 
        GPL3   -> "GNU General Public License (v3)",
        LGPL21 -> "GNU Lesser General Public License, version 2.1", 
        LGPL3  -> "GNU Lesser General Public License (v3)", 
        CDDL   -> "Common Development and Distribution License (1.0)", 
        MIT    -> "The MIT License",
        MPL1   -> "Mozilla Public License Version 1.0",
        MPL11  -> "Mozilla Public License Version 1.1",
        MPL2   -> "Mozilla Public License Version 2.0",
        EPL    -> "Eclipse Public License (version 1.0)"
    }
    
    public static val stdLicenseUrls = #{
        ASL2   -> "http://www.apache.org/licenses/LICENSE-2.0",
        BSD2   -> "http://opensource.org/licenses/BSD-2-Clause", 
        BSD3   -> "http://opensource.org/licenses/BSD-3-Clause",
        GPL2   -> "https://www.gnu.org/licenses/gpl-2.0.html", 
        GPL3   -> "https://www.gnu.org/copyleft/gpl.html",
        LGPL21 -> "https://www.gnu.org/licenses/lgpl-2.1.html", 
        LGPL3  -> "https://www.gnu.org/licenses/lgpl.html", 
        CDDL   -> "http://opensource.org/licenses/CDDL-1.0", 
        MIT    -> "http://opensource.org/licenses/MIT",
        MPL1   -> "https://www.mozilla.org/MPL/1.0/",
        MPL11  -> "https://www.mozilla.org/MPL/1.1/",
        MPL2   -> "https://www.mozilla.org/MPL/2.0/",
        EPL    -> "https://www.eclipse.org/legal/epl-v10.html"
    }
    
    public static val stdMimeTypes = #{
        XML    -> "text/XML",
        JSON   -> "application/json",
        BON    -> "application/bonaparte", 
        JPG    -> "image/jpeg", 
        PNG    -> "image/png" 
    }
    
    // status code: see http://www.iana.org/assignments/http-status-codes/http-status-codes.xhtml
    public static val httpStatusCode = #{
        100 -> "Continue [RFC7231, Section 6.2.2]",
        101 -> "Switching Protocols [RFC7231, Section 6.2.2]",
        102 -> "Processing  [RFC2518]",
        200 -> "OK  [RFC7231, Section 6.3.1]",
        201 -> "Created [RFC7231, Section 6.3.2]",
        202 -> "Accepted    [RFC7231, Section 6.3.3]",
        203 -> "Non-Authoritative Information   [RFC7231, Section 6.3.4]",
        204 -> "No Content  [RFC7231, Section 6.3.5]",
        205 -> "Reset Content   [RFC7231, Section 6.3.6]",
        206 -> "Partial Content [RFC7233, Section 4.1]",
        207 -> "Multi-Status    [RFC4918]",
        208 -> "Already Reported    [RFC5842]",
        226 -> "IM Used [RFC3229]",
        300 -> "Multiple Choices    [RFC7231, Section 6.4.1]",
        301 -> "Moved Permanently   [RFC7231, Section 6.4.2]",
        302 -> "Found   [RFC7231, Section 6.4.3]",
        303 -> "See Other   [RFC7231, Section 6.4.4]",
        304 -> "Not Modified    [RFC7232, Section 4.1]",
        305 -> "Use Proxy   [RFC7231, Section 6.4.5]",
        307 -> "Temporary Redirect  [RFC7231, Section 6.4.7]",
        308 -> "Permanent Redirect  [RFC-ietf-httpbis-rfc7238bis-03]",
        400 -> "Bad Request [RFC7231, Section 6.5.1]",
        401 -> "Unauthorized    [RFC7235, Section 3.1]",
        402 -> "Payment Required    [RFC7231, Section 6.5.2]",
        403 -> "Forbidden   [RFC7231, Section 6.5.3]",
        404 -> "Not Found   [RFC7231, Section 6.5.4]",
        405 -> "Method Not Allowed  [RFC7231, Section 6.5.5]",
        406 -> "Not Acceptable  [RFC7231, Section 6.5.6]",
        407 -> "Proxy Authentication Required   [RFC7235, Section 3.2]",
        408 -> "Request Timeout [RFC7231, Section 6.5.7]",
        409 -> "Conflict    [RFC7231, Section 6.5.8]",
        410 -> "Gone    [RFC7231, Section 6.5.9]",
        411 -> "Length Required [RFC7231, Section 6.5.10]",
        412 -> "Precondition Failed [RFC7232, Section 4.2]",
        413 -> "Payload Too Large   [RFC7231, Section 6.5.11]",
        414 -> "URI Too Long    [RFC7231, Section 6.5.12]",
        415 -> "Unsupported Media Type  [RFC7231, Section 6.5.13]",
        416 -> "Range Not Satisfiable   [RFC7233, Section 4.4]",
        417 -> "Expectation Failed  [RFC7231, Section 6.5.14]",
        421 -> "Misdirected Request [RFC-ietf-httpbis-http2-17, Section 9.1.2]",
        422 -> "Unprocessable Entity    [RFC4918]",
        423 -> "Locked  [RFC4918]",
        424 -> "Failed Dependency   [RFC4918]",
        426 -> "Upgrade Required    [RFC7231, Section 6.5.15]",
        428 -> "Precondition Required   [RFC6585]",
        429 -> "Too Many Requests   [RFC6585]",
        431 -> "Request Header Fields Too Large [RFC6585]",
        500 -> "Internal Server Error   [RFC7231, Section 6.6.1]",
        501 -> "Not Implemented [RFC7231, Section 6.6.2]",
        502 -> "Bad Gateway [RFC7231, Section 6.6.3]",
        503 -> "Service Unavailable [RFC7231, Section 6.6.4]",
        504 -> "Gateway Timeout [RFC7231, Section 6.6.5]",
        505 -> "HTTP Version Not Supported  [RFC7231, Section 6.6.6]",
        506 -> "Variant Also Negotiates [RFC2295]",
        507 -> "Insufficient Storage    [RFC4918]",
        508 -> "Loop Detected   [RFC5842]",
        510 -> "Not Extended    [RFC2774]",
        511 -> "Network Authentication Required [RFC6585]"        
    }
}