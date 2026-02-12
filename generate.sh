# https://connect.cargointernational.de/api/documentation#/
cd /usr/local/bin
openapi-generator-cli.sh version

./openapi-generator-cli.sh generate -i /Users/jahn/PhpstormProjects/jumingo-api-sdk/1.0.4.json -g php -o /Users/jahn/PhpstormProjects/jumingo-api-sdk --enable-post-process-file --additional-properties=composerPackageName=kruegge82/jumingo,invokerPackage=kruegge82\\\jumingo
rm -rf /Users/jahn/PhpstormProjects/jumingo-api-sdk/test