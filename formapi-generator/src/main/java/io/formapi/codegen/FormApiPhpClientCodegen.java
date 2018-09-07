package io.formapi.codegen;

import org.openapitools.codegen.*;
import org.openapitools.codegen.languages.PhpClientCodegen;
// import io.swagger.v3.oas.models.parameters.Parameter;
// import io.swagger.v3.oas.models.media.Schema;
// import io.swagger.v3.oas.models.examples.Example;

public class FormApiPhpClientCodegen extends PhpClientCodegen {
  @Override
  public String getName() {
    return "formapi-php";
  }

  @Override
  public void processOpts() {
    super.processOpts();
    supportingFiles.add(new SupportingFile("Client.php", "lib/Client.php"));
    supportingFiles.add(new SupportingFile("ClientTest.php", "test/ClientTest.php"));
    supportingFiles.add(new SupportingFile("PDFApiTest.php", "test/Api/PDFApiTest.php"));
  }
}
