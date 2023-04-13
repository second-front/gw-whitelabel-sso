# Demo Keycloak Theme Builder
The purpose of this repo is to provide the most bare bones introduction to a customer of gamewarden for whitelabeling their login screens for their customers.

All possible templates are located [here upstream](https://github.com/keycloak/keycloak/tree/main/themes/src/main/resources/theme/base)
At this time Gamewarden is using the following templates for our user base:
* login-config-totp
* login-otp
* login-x509-info.ftl   # This is what the user seems when logging in with a CAC/ECA
* login.ftl
* register.ftl
* template.ftl
* terms.ftl # We will ensure at a bare minimum these terms conform to Information systems hosted by the USG

_*IMPORTANT*_
Until Gamewarden develops a theme to inherit from it will be the responsibility of the customer supplying a theme to account for all template compatibility with each new release of Keycloak.
## Local Dev
`docker compose up -d`
- URL for admin console: `http://localhost:8080/auth/admin`
- Default username/password for root admin: 
  - username: admin
  - password: password

See the theme
- `http://localhost:8080/auth/realms/my-realm/account`
- Click Sign In
- See bare bones UI
- Modify html in template/login.ftl
- Modify css