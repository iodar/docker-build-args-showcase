// logging environment values from process.env (hosts environment variables)
console.log("\n--- NODE.JS inside docker container ---\n");
console.log(`>>> FROM NODE (index.js) process.env.FOOBAR: ${process.env.FOOBAR}`);
console.log(`>>> FROM NODE (index.js) process.env.OTHER: ${process.env.OTHER}`);
console.log("\n");