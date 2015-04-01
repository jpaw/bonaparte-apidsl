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
}