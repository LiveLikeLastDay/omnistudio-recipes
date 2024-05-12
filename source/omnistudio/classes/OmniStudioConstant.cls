/*************************************************************************************************
 * This file is part of the Omnistudio-recipes project, released under the MIT License.
 * See LICENSE file or go to https://github.com/LiveLikeLastDay/omnistudio-recipes for full license details.
 ************************************************************************************************/

/**
 * @description This class contains the constants used in the OmniStudio
 * @author Felix Liu(Apex Force Pty Ltd, Australia)
 * @since May 2024
 */
@SuppressWarnings('PMD.PropertyNamingConventions')
public with sharing class OmniStudioConstant {
    /**
     * @description The key for the payload
     */
    public static final String OBJECT_API_NAME_STRING {
        get {
            return 'objectApiName';
        }
    }

    /**
     * @description The key for the required fields. Sample value:'FirstName,LastName'
     */
    // public static final String REQUIRED_FIELDS_CSV {
    //     get {
    //         return 'requiredFields';
    //     }
    // }

    public static final String IS_SYSTEM_MODE_STRING {
        get {
            return 'isSystemMode';
        }
    }

    // Method names for jsonTosObjectDmlHandler
    public static final String CREATE_STRING {
        get {
            return 'create';
        }
    }

    public static final String UPDATE_STRING {
        get {
            return 'update';
        }
    }

    public static final String UPSERT_STRING {
        get {
            return 'upsert';
        }
    }
    public static final String DELETE_STRING {
        get {
            return 'delete';
        }
    }
}
