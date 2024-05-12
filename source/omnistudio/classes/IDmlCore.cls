/*************************************************************************************************
 * This file is part of the Omnistudio-recipes project, released under the MIT License.
 * See LICENSE file or go to https://github.com/LiveLikeLastDay/omnistudio-recipes for full license details.
 ************************************************************************************************/

public interface IDmlCore {
    SObject insertSingleSObject(SObject singleRecord);
    SObject updateSingleSObject(SObject singleRecord);
    SObject deleteSingleSObject(SObject singleRecord);

    List<SObject> insertSObjects(List<SObject> sObjects);
    List<SObject> updateSObjects(List<SObject> sObjects);
    List<SObject> deleteSObjects(List<SObject> sObjects);
}
