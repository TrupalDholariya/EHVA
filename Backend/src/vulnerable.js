const AWS = require('aws-sdk');

// 🚨 VULNERABILITY 1: Hardcoded AWS Credentials (catches secret-detect)
// (Paste these fake tokens during the demo and uncomment them to trigger secret-detect!)


function executeUserCommand(req, res) {
    const userInput = req.query.input;

    // 🚨 VULNERABILITY 2: Code Injection via eval() (catches sast-semgrep)
    // eval(userInput);

    // 🚨 VULNERABILITY 3: Command Injection via child_process (catches sast-semgrep)
    // const { exec } = require('child_process');
    // exec("ping -c 4 " + userInput, (error, stdout, stderr) => {
    //     if (error) {
    //         console.error(`exec error: ${error}`);
    //         return;
    //     }
    //     res.send(stdout);
    // });
    res.send("Safe mode active!");
}

module.exports = { executeUserCommand };
