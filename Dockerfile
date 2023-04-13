FROM registry1.dso.mil/ironbank/opensource/gradle/gradle-jdk11:latest AS builder
USER root
COPY ./theme /theme
WORKDIR /theme
RUN jar cfv my-theme.jar .
USER java

FROM registry1.dso.mil/ironbank/redhat/ubi/ubi8-micro:8.7
COPY --from=builder /theme/my-theme.jar ./
RUN chmod +rx my-theme.jar