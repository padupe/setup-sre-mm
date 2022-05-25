# Setup SRE-MM
> Check the Documentation in pt-br by clicking 🇧🇷 [here](https://github.com/padupe/steup-sre-mm/blob/main/docs/README-pt-br.md 'here').

## Description
Installation of the main tools used by the SRE team:
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html)
- [DBeaver](https://dbeaver.io/)
- [decK](https://docs.konghq.com/deck/)
    - *decK helps to manage [Kong](https://konghq.com/) configuration declaratively*
- [Discord](https://discord.com/)
- [Docker](https://www.docker.com/)
- [Node.js](https://nodejs.org/en/)
    - *using [nvm](https://github.com/nvm-sh/nvm) package*
- [Postman](https://www.postman.com/)
- [Python](https://www.python.org/)
- [Serverless CLI](https://www.serverless.com/framework/docs/providers/aws/cli-reference)

## Business Context
Carry out the necessary installations in the environment of new employees of the MadeiraMadeira SRE team.

## Requirements
- OS Linux/Ubunt;
- Root User;

## Step by Step
1. Open a terminal
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>t</kbd>

2. Navigate through your environment directory to the desired folder;

3. Clone this repository

> SSH
```
git clone git@github.com:padupe/setup-sre-mm.git
```

> HTTPS
```
git clone https://github.com/padupe/setup-sre-mm.git
```

4. Open the Project
```
cd setup-sre-mm
```

5. Grant access permission to the binary file `install.sh`
```
sudo chmod +x install.sh 
```

6. Run the command:
```
./install.sh
```

7. Perform confirmations when necessary

8. Done 🥳