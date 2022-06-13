FROM fusuf/whatsasena:latest

RUN git clone https://github.com/wvfx-windro/raganork-md /skl/Raganork
WORKDIR /skl/Raganork
ENV TZ=Asia/Kolkata
RUN npm install supervisor -g
RUN yarn install --ignore-engines

CMD ["node", "index.js"]
