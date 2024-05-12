/*************************************************************************************************
 * This file is part of the Omnistudio-recipes project, released under the MIT License.
 * See LICENSE file or go to https://github.com/LiveLikeLastDay/omnistudio-recipes for full license details.
 ************************************************************************************************/

public without sharing class DmlSystemMode implements IDmlCore {
    public SObject insertSingleSObject(SObject singleRecord) {
        insert as system singleRecord;
        return singleRecord;
    }

    public SObject updateSingleSObject(SObject singleRecord) {
        update as system singleRecord;
        return singleRecord;
    }

    public SObject deleteSingleSObject(SObject singleRecord) {
        delete as system singleRecord;
        return singleRecord;
    }

    public List<SObject> insertSObjects(List<SObject> sObjects) {
        insert as system sObjects;
        return sObjects;
    }

    public List<SObject> updateSObjects(List<SObject> sObjects) {
        update as system sObjects;
        return sObjects;
    }

    public List<SObject> deleteSObjects(List<SObject> sObjects) {
        delete as system sObjects;
        return sObjects;
    }
}
