/*************************************************************************************************
 * This file is part of the Omnistudio-recipes project, released under the MIT License.
 * See LICENSE file or go to https://github.com/LiveLikeLastDay/omnistudio-recipes for full license details.
 ************************************************************************************************/

@isTest
private class DmlHandlerOptions_Tests {
    @isTest
    static void testConstructor() {
        // Create test data
        Map<String, Object> options = new Map<String, Object>{
            OmniStudioConstant.OBJECT_API_NAME_STRING => 'TestObject',
            OmniStudioConstant.IS_SYSTEM_MODE_STRING => true
        };

        // Instantiate the class
        DmlHandlerOptions handlerOptions = new DmlHandlerOptions(options);

        // Assert values
        System.assertEquals(
            'TestObject',
            handlerOptions.sObjectApiName,
            'sObjectApiName should be "TestObject"'
        );
        System.assertEquals(
            true,
            handlerOptions.isSystemMode,
            'isSystemMode should be true'
        );
        System.assertNotEquals(
            null,
            handlerOptions.dmlCore,
            'dmlCore should not be null'
        );
    }
}
