package io.formapi.codegen;

import org.openapitools.codegen.*;
import org.openapitools.codegen.languages.PhpClientCodegen;

public class FormApiPhpClientCodegen extends PhpClientCodegen {
    @Override
    public String getName() {
        return "formapi-php";
    }

    @Override
    public void postProcessParameter(CodegenParameter parameter) {
        super.postProcessParameter(parameter);
        if (parameter.isBodyParam) parameter.required = true;
    }

    @Override
    public void processOpts() {
        super.processOpts();
        supportingFiles.add(new SupportingFile("Client.php", "lib/Client.php"));
        supportingFiles.add(new SupportingFile("ClientIntegrationTest.php", "test/ClientIntegrationTest.php"));
        supportingFiles.add(new SupportingFile("PDFApiIntegrationTest.php", "test/Api/PDFApiIntegrationTest.php"));
    }
}
