FROM node:19-alpine3.15
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

WORKDIR /reddit-clone

COPY . /reddit-clone
RUN chown -R appuser:appgroup /reddit-clone
RUN npm install

USER appuser

EXPOSE 3000
CMD ["npm","run","dev"]
