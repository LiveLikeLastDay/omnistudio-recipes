/*************************************************************************************************
 * This file is part of the Omnistudio-recipes project, released under the MIT License.
 * See LICENSE file or go to https://github.com/LiveLikeLastDay/omnistudio-recipes for full license details.
 ************************************************************************************************/

/**
 * @description : Enables OmniStudio users to create, update, and delete SObject records through a JSON payload.
 * @author Felix Liu(Apex Force Pty Ltd, Australia)
 * @since May 2024
 */
@SuppressWarnings('PMD.AvoidGlobalModifier,PMD.ExcessiveParameterList')
global with sharing class OmniStudioDmlHandler implements Callable {
    global Object call(String action, Map<String, Object> args) {
        Map<String, Object> input = (Map<String, Object>) args.get('input');
        Map<String, Object> output = (Map<String, Object>) args.get('output');
        Map<String, Object> options = (Map<String, Object>) args.get('options');

        return invokeMethod(action, input, output, options);
    }

    /**
     * @description : Invokes the specified method based on the action provided.
     * @param methodName : The name of the method to invoke.
     * @param inputMap : The input map containing the field API name and value.
     * @param outMap : The output map to store the result of the method invocation.
     * @param options : The options map containing additional configuration parameters.
     * @return : The result of the method invocation.
     */
    public Object invokeMethod(
        String methodName,
        Map<String, Object> inputMap,
        Map<String, Object> outMap,
        Map<String, Object> options
    ) {
        // Get variables from option map
        DmlHandlerOptions handlerOptions = new DmlHandlerOptions(options);

        SObject sobjectResult = performDML(
            methodName,
            inputMap,
            handlerOptions
        );
        outMap.put('result', sobjectResult);
        return sobjectResult;
    }

    private SObject performDML(
        String methodName,
        Map<String, Object> inputMap,
        DmlHandlerOptions handlerOptions
    ) {
        // Create a new SObject instance dynamically based on the provided API name
        SObject mySingleRecord = (SObject) Type.forName(
                handlerOptions.sObjectApiName
            )
            .newInstance();

        // Set field values on the dynamically created SObject
        for (String fieldName : inputMap.keySet()) {
            mySingleRecord.put(fieldName, inputMap.get(fieldName));
        }

        // Perform the specified DML operation
        if (methodName == OmniStudioConstant.CREATE_STRING) {
            return handlerOptions.dmlCore.insertSingleSObject(mySingleRecord);
        } else if (methodName == OmniStudioConstant.UPDATE_STRING) {
            return handlerOptions.dmlCore.updateSingleSObject(mySingleRecord);
        } else if (methodName == OmniStudioConstant.DELETE_STRING) {
            return handlerOptions.dmlCore.deleteSingleSObject(mySingleRecord);
        } else {
            // Handle unsupported DML operations
            // System.debug('Unsupported DML operation: ' + dml);
            // return null;
            throw new DmlException('Unsupported DML operation: ' + methodName);
        }
    }
}
