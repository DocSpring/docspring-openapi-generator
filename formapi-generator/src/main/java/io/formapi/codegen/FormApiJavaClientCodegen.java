package io.formapi.codegen;

import org.openapitools.codegen.*;
import org.openapitools.codegen.languages.JavaClientCodegen;

public class FormApiJavaClientCodegen extends JavaClientCodegen {
    @Override
    public String getName() {
        return "formapi-java";
    }

    @Override
    public void postProcessParameter(CodegenParameter parameter) {
        super.postProcessParameter(parameter);
        if (parameter.isBodyParam) parameter.required = true;
    }

    @Override
    public void processOpts() {
        super.processOpts();
        supportingFiles.add(new SupportingFile("PdfApiIntegrationTest.java", "src/test/java/io/formapi/PdfApiIntegrationTest.java"));
    }
}
