/*************************************************************************************************
 * This file is part of the Omnistudio-recipes project, released under the MIT License.
 * See LICENSE file or go to https://github.com/LiveLikeLastDay/omnistudio-recipes for full license details.
 ************************************************************************************************/
import { LightningElement, api } from "lwc";
import { OmniscriptBaseMixin } from "omnistudio/omniscriptBaseMixin";

export default class OmniUpperCaseText extends OmniscriptBaseMixin(
    LightningElement
) {
    @api
    text; // lightning-input text value

    @api
    label; // lightning-input label

    connectedCallback() {
        // console.log("OmniScript Json String", this.omniJsonDataStr);
        console.log("omniJsonDef:", JSON.stringify(this.omniJsonDef));

        // assumes the data is inside of the same custom component
        const state = this.omniGetSaveState(this.omniJsonDef.name);
        //console.log("state", JSON.stringify(state));
        if (state && state.savedText) {
            this.text = state.savedText;
        }
    }

    handleChange(event) {
        // toUpperCase
        this.text = event.target.value.toUpperCase();
        this.omniUpdateDataJson(this.text);
    }

    disconnectedCallback() {
        // ref: https://help.salesforce.com/s/articleView?id=sf.os_save_data_inside_custom_component.htm&type=5
        let mySaveState = { savedText: this.text };
        // In disconnected callbacks, the usePubSub argument must be set to true.
        // Events in disconnected callbacks can only be passed using pubsub.
        let usePubSub = true;
        this.omniSaveState(mySaveState, this.omniJsonDef.name, usePubSub);
    }
}
