/*************************************************************************************************
 * This file is part of the Omnistudio-recipes project, released under the MIT License.
 * See LICENSE file or go to https://github.com/LiveLikeLastDay/omnistudio-recipes for full license details.
 ************************************************************************************************/

/**
 * @description : Represents the configuration options for the DML handler.
 */

public with sharing class DmlHandlerOptions {
    //public String requiredFields { get; set; }
    public String sObjectApiName { get; set; }
    public Boolean isSystemMode { get; set; }
    public IDmlCore dmlCore { get; set; }

    public DmlHandlerOptions(Map<String, Object> options) {
        // sObjectApiName is always required
        this.sObjectApiName = String.valueOf(
            options.get(OmniStudioConstant.OBJECT_API_NAME_STRING)
        );

        // if (options.containsKey(OmniStudioConstant.REQUIRED_FIELDS_CSV)) {
        //     this.requiredFields = String.valueOf(
        //         options.get(OmniStudioConstant.REQUIRED_FIELDS_CSV)
        //     );
        // } else {
        //     this.requiredFields = '';
        // }

        if (options.containsKey(OmniStudioConstant.IS_SYSTEM_MODE_STRING)) {
            this.isSystemMode = Boolean.valueOf(
                options.get(OmniStudioConstant.IS_SYSTEM_MODE_STRING)
            );
        } else {
            // default as system mode
            this.isSystemMode = true;
        }

        if (this.isSystemMode == true) {
            this.dmlCore = new DmlSystemMode();
        } else {
            this.dmlCore = new DmlUserMode();
        }
    }
}
