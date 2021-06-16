FROM alpine:3.10
LABEL "repository"="https://github.com/anothrNick/github-tag-action"
LABEL "homepage"="https://github.com/anothrNick/github-tag-action"
LABEL "maintainer"="Nick Sjostrom"

COPY entrypoint.sh /entrypoint.sh

RUN apk update && apk add bash git curl jq py-pip && apk add --update nodejs npm && npm install -g semver && pip install bumpversion

ENTRYPOINT ["/entrypoint.sh"]
