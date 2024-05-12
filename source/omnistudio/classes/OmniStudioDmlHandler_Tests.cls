/*************************************************************************************************
 * This file is part of the Omnistudio-recipes project, released under the MIT License.
 * See LICENSE file or go to https://github.com/LiveLikeLastDay/omnistudio-recipes for full license details.
 ************************************************************************************************/

@SuppressWarnings(
    'PMD.ApexDoc, PMD.ApexAssertionsShouldIncludeMessage, PMD.CyclomaticComplexity, PMD.ExcessiveParameterList, PMD.MethodNamingConventions, PMD.NcssMethodCount'
)
@isTest
private with sharing class OmniStudioDmlHandler_Tests {
    @isTest
    static void createWithSharing_should_create_contact() {
        // Define test input data
        Map<String, Object> inputMap = new Map<String, Object>{
            'LastName' => 'Liu'
        };
        Map<String, Object> outMap = new Map<String, Object>();
        Map<String, Object> options = new Map<String, Object>{
            //OmniStudioConstant.REQUIRED_FIELDS_CSV => 'LastName',
            OmniStudioConstant.OBJECT_API_NAME_STRING => 'Contact'
        };

        // Call the invokeMethod with a mock DML action
        OmniStudioDmlHandler handler = new OmniStudioDmlHandler();
        Object result = handler.invokeMethod(
            OmniStudioConstant.CREATE_STRING,
            inputMap,
            outMap,
            options
        );

        // Assert that the result is not null
        System.assertNotEquals(null, result);

        // Assert that the result is an instance of SObject
        System.assertEquals(true, result instanceof Contact);
    }

    // @isTest
    // static void testPerformDML() {
    //     // Define test input data
    //     Map<String, Object> inputMap = new Map<String, Object>{
    //         'Name' => 'Test Record',
    //         'Description' => 'Test Description'
    //     };
    //     String dml = OmniStudioConstant.CREATE_WITH_SHARING_STRING;
    //     String sObjectApiName = 'Custom_Object__c';

    //     // Call the performDML method
    //     OmniStudioDmlHandler handler = new OmniStudioDmlHandler();
    //     Object result = handler.performDML(inputMap, dml, sObjectApiName);

    //     // Assert that the result is not null
    //     System.assertNotEquals(null, result);

    //     // Assert that the result is an instance of SObject (assuming it's a Custom_Object__c)
    //     System.assertEquals(true, result instanceof Custom_Object__c);
    // }
}
