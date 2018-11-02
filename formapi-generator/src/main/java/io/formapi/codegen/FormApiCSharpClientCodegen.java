package io.formapi.codegen;

import org.openapitools.codegen.*;
import org.openapitools.codegen.languages.CSharpClientCodegen;
public class FormApiCSharpClientCodegen extends CSharpClientCodegen {
    public FormApiCSharpClientCodegen() {
        super();
        // Don't use formapi-sharp
        embeddedTemplateDir = templateDir = "csharp";
    }

    @Override
    public String getName() {
        return "formapi-csharp";
    }

    @Override
    public void postProcessParameter(CodegenParameter parameter) {
        super.postProcessParameter(parameter);
        if (parameter.isBodyParam) parameter.required = true;
    }

    @Override
    public void processOpts() {
        super.processOpts();
        supportingFiles.add(new SupportingFile("PDFApiIntegrationTests.cs", "src/FormApi.Client.Test/Api/PDFApiIntegrationTests.cs"));
    }
}
