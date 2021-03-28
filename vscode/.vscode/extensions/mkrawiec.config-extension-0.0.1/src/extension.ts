import * as vscode from "vscode";

export function activate(context: vscode.ExtensionContext) {
    console.log("Disable default keybindings started.");

    // "commands": [
    //     {
    //         "command": "disable-default-keybindings.displayDisabled",
    //         "title": "Disable default keybindings: Show disabled keybindings"
    //     }
    // ]
    // let disposable = vscode.commands.registerCommand('disable-default-keybindings.displayDisabled', () => {
    //     vscode.window.showInformationMessage('Here you are');
    // });
    // context.subscriptions.push(disposable);
}

export function deactivate() {}
