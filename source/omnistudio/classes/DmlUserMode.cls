/*************************************************************************************************
 * This file is part of the Omnistudio-recipes project, released under the MIT License.
 * See LICENSE file or go to https://github.com/LiveLikeLastDay/omnistudio-recipes for full license details.
 ************************************************************************************************/

public with sharing class DmlUserMode implements IDmlCore {
    public SObject insertSingleSObject(SObject singleRecord) {
        insert as user singleRecord;
        return singleRecord;
    }

    public SObject updateSingleSObject(SObject singleRecord) {
        update as user singleRecord;
        return singleRecord;
    }

    public SObject deleteSingleSObject(SObject singleRecord) {
        delete as user singleRecord;
        return singleRecord;
    }

    public List<SObject> insertSObjects(List<SObject> sObjects) {
        insert as user sObjects;
        return sObjects;
    }

    public List<SObject> updateSObjects(List<SObject> sObjects) {
        update as user sObjects;
        return sObjects;
    }

    // public List<SObject> upsetSObjects(List<SObject> sObjects) {
    //     upset as user sObjects;
    //     return sObjects;
    // }

    public List<SObject> deleteSObjects(List<SObject> sObjects) {
        delete as user sObjects;
        return sObjects;
    }
}
