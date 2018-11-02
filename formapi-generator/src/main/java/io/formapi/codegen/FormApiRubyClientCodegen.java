package io.formapi.codegen;

import org.openapitools.codegen.*;
import org.openapitools.codegen.languages.RubyClientCodegen;
import io.swagger.v3.oas.models.parameters.Parameter;
import io.swagger.v3.oas.models.media.Schema;
import io.swagger.v3.oas.models.examples.Example;

import java.io.File;
public class FormApiRubyClientCodegen extends RubyClientCodegen {
    @Override
    public String getName() {
        return "formapi-ruby";
    }

    @Override
    public void postProcessParameter(CodegenParameter parameter) {
        super.postProcessParameter(parameter);
        if (parameter.isBodyParam) parameter.required = true;
    }

    @Override
    public void processOpts() {
        super.processOpts();
        String gemFolder = libFolder + File.separator + gemName;
        supportingFiles.add(new SupportingFile("client.rb",
                gemFolder, "api/client.rb"));
        supportingFiles.add(new SupportingFile("pdf_api_integration_spec.rb",
                "spec/api/pdf_api_integration_spec.rb"));
        supportingFiles.add(new SupportingFile("client_integration_spec.rb",
                "spec/api/client_integration_spec.rb"));
    }

    @Override
    public void setParameterExampleValue(CodegenParameter p) {
        String example;

        if (p.defaultValue == null) {
            example = p.example;
        } else {
            p.example = p.defaultValue;
            return;
        }

        String type = p.baseType;
        if (type == null) {
            type = p.dataType;
        }

        if ("String".equals(type)) {
            if (example == null) {
                example = p.paramName + "_example";
            }
            example = "'" + escapeText(example) + "'";
        } else if ("Integer".equals(type)) {
            if (example == null) {
                if (p.maximum != null && Integer.parseInt(p.maximum) < 56) {
                    example = p.maximum.toString();
                } else if (p.minimum != null && Integer.parseInt(p.minimum) > 56) {
                    example = p.minimum.toString();
                } else {
                    example = "56";
                }
            }
        } else if ("Float".equals(type)) {
            if (example == null) {
                example = "3.4";
            }
        } else if ("BOOLEAN".equals(type)) {
            if (example == null) {
                example = "true";
            }
        } else if ("File".equals(type)) {
            if (example == null) {
                example = "/path/to/file";
            }
            example = "File.new('" + escapeText(example) + "')";
        } else if ("Date".equals(type)) {
            if (example == null) {
                example = "2013-10-20";
            }
            example = "Date.parse('" + escapeText(example) + "')";
        } else if ("DateTime".equals(type)) {
            if (example == null) {
                example = "2013-10-20T19:20:30+01:00";
            }
            example = "DateTime.parse('" + escapeText(example) + "')";
        } else if (!languageSpecificPrimitives.contains(type)) {
            // type is a model class, e.g. User
            example = moduleName + "::" + type + ".new";
        }

        if (example == null) {
            example = "nil";
        } else if (Boolean.TRUE.equals(p.isListContainer)) {
            example = "[" + example + "]";
        } else if (Boolean.TRUE.equals(p.isMapContainer)) {
            example = "{'key' => " + example + "}";
        }

        p.example = example;
    }

    /**
     * Return the example value of the parameter.
     * - Fixes issue with unquoted strings from x-example
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
