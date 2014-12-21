# Base Docker File: Runs latest debian build, installs mono, asp.net vnext, and kre
FROM dargon/nugetprefetch
MAINTAINER Michael "ItzWarty" Yu
ADD . /app/test-web-application
WORKDIR /app/test-web-application
RUN kpm restore
WORKDIR /app/test-web-application/src/TestWebApplication
EXPOSE 5004
ENTRYPOINT ["k", "kestrel"]