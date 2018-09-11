package io.formapi.codegen;

import org.openapitools.codegen.*;
import org.openapitools.codegen.languages.JavascriptClientCodegen;
// import io.swagger.v3.oas.models.parameters.Parameter;
// import io.swagger.v3.oas.models.media.Schema;
// import io.swagger.v3.oas.models.examples.Example;

public class FormApiJavascriptClientCodegen extends JavascriptClientCodegen {
    @Override
    public String getName() {
        return "formapi-javascript";
    }

    @Override
    public void postProcessParameter(CodegenParameter parameter) {
        super.postProcessParameter(parameter);
        if (parameter.isBodyParam) parameter.required = true;
    }

    @Override
    public void processOpts() {
        super.processOpts();
        // Original generator forgot to include the gitignore.
        supportingFiles.add(new SupportingFile("gitignore.mustache", ".gitignore"));
        supportingFiles.add(new SupportingFile("yarn.lock", "yarn.lock"));
        supportingFiles.add(new SupportingFile("PDFApi.spec.js", "test/api/PDFApi.spec.js"));

        // supportingFiles.add(new SupportingFile("index.js", "src/index.js"));

        // Mustache template doesn't work when used as a SupportingFile
        // supportingFiles.add(new SupportingFile("Client.mustache", "src/api/Client.js"));
        supportingFiles.add(new SupportingFile("Client.js", "src/api/Client.js"));
        supportingFiles.add(new SupportingFile("Client.spec.js", "test/api/Client.spec.js"));
    }
}
