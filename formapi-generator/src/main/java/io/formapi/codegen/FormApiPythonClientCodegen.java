package io.formapi.codegen;

import org.openapitools.codegen.*;
import org.openapitools.codegen.languages.PythonClientCodegen;
import io.swagger.v3.oas.models.parameters.Parameter;
import io.swagger.v3.oas.models.media.Schema;
import io.swagger.v3.oas.models.examples.Example;
public class FormApiPythonClientCodegen extends PythonClientCodegen {
    @Override
    public String getName() {
        return "formapi-python";
    }

    @Override
    public void postProcessParameter(CodegenParameter parameter) {
        super.postProcessParameter(parameter);
        if (parameter.isBodyParam) parameter.required = true;
    }

    @Override
    public void processOpts() {
        super.processOpts();
        supportingFiles.add(new SupportingFile("client.py", packageName, "api/client.py"));
        supportingFiles.add(new SupportingFile("test_client_integration.py", "test/test_client_integration.py"));
        // Comment this out when updating tests from swagger spec
        supportingFiles.add(new SupportingFile("test_pdf_api_integration.py", "test/test_pdf_api_integration.py"));
    }

    /**
     * Return the example value of the parameter. - Fixes issue with unquoted
     * strings from x-example
     *
     * @param codegenParameter Codegen parameter
     * @param parameter        Parameter
     */
    public void setParameterExampleValue(CodegenParameter codegenParameter, Parameter parameter) {
        if (parameter.getExample() != null) {
            codegenParameter.example = parameter.getExample().toString();
        } else if (parameter.getExamples() != null && !parameter.getExamples().isEmpty()) {
            Example example = parameter.getExamples().values().iterator().next();
            if (example.getValue() != null) {
                codegenParameter.example = example.getValue().toString();
            }
        } else {
            Schema schema = parameter.getSchema();
            if (schema != null && schema.getExample() != null) {
                codegenParameter.example = schema.getExample().toString();
            }
        }

        setParameterExampleValue(codegenParameter);
    }
}
