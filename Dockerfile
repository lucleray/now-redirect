FROM mhart/alpine-node:base-10
CMD ["node", "-e", "require('http').Server((_,r)=>{r.writeHead(308,{location:process.env['TARGET']});r.end()}).listen()"]