FROM alpine:3.18

WORKDIR /app

RUN apk add --no-cache curl unzip

# Install TFLint
RUN curl -sL https://github.com/terraform-linters/tflint/releases/download/v0.50.3/tflint_linux_amd64.zip -o tflint.zip && \
    unzip tflint.zip && mv tflint /usr/local/bin/ && chmod +x /usr/local/bin/tflint

# Install Azure plugin
RUN mkdir -p ~/.tflint.d/plugins/github.com/terraform-linters/tflint-ruleset-azurerm/0.20.0 && \
    curl -sL -o ~/.tflint.d/plugins/github.com/terraform-linters/tflint-ruleset-azurerm/0.20.0/tflint-ruleset-azurerm_linux_amd64.zip \
      https://github.com/terraform-linters/tflint-ruleset-azurerm/releases/download/v0.20.0/tflint-ruleset-azurerm_linux_amd64.zip && \
    unzip ~/.tflint.d/plugins/github.com/terraform-linters/tflint-ruleset-azurerm/0.20.0/tflint-ruleset-azurerm_linux_amd64.zip \
      -d ~/.tflint.d/plugins/github.com/terraform-linters/tflint-ruleset-azurerm/0.20.0

ENTRYPOINT ["tflint"]