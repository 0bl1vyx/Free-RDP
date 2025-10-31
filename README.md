Automated Command Execution Repo

This repository uses GitHub Actions to automatically run a series of commands defined in run.sh.

How It Works

Trigger: The workflow runs on any push to the main branch or can be triggered manually from the "Actions" tab.

Setup: The action first runs setup.sh to install any necessary tools (e.g., naabu).

Execute: The action then runs run.sh, which contains the main commands.

Commit Results: Any files created or modified in the results/ directory are automatically committed back to the repository.

Configuration

Tools: Add your tool installation commands (like go install, apt install, etc.) to setup.sh.

Commands: Add the commands you want to run to run.sh.

Inputs: Add any input files (like IP lists) to the input/ directory and reference them in your run.sh script.

⚠️ Ethical Use Warning

The tools and techniques in this repository (like port scanners) can be used for both legitimate (defensive) and malicious (offensive) purposes.

You must only use these tools on systems and networks for which you have explicit, written permission.

Unauthorized scanning or testing is illegal in most jurisdictions and a direct violation of GitHub's Acceptable Use Policy. By using this code, you agree that you are responsible for your own actions.
