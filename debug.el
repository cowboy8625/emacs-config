
(dap-register-debug-template
 "Debug Server"
 (list :type "node"
       :request "launch"
       :program "${workspaceFolder}/src/app/page.ts"
       :outFile ["${workspaceFolder}/.next/server/**/*.js"]
       :name "Debug Server"))
