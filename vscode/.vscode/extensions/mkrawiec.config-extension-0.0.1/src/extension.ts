import * as vscode from "vscode";

const { commands } = vscode;

const sidebarBaseActions = [
  {
    key: "q",
    name: "Close sidebar",
    type: "command",
    command: "workbench.action.closeSidebar",
  },
  {
    key: "e",
    name: "Expand sidebar",
    type: "commands",
    commands: [
      "workbench.action.increaseViewSize",
      "workbench.action.increaseViewSize",
      "workbench.action.increaseViewSize",
    ],
  },
  {
    key: "E",
    name: "Shrink sidebar",
    type: "commands",
    commands: [
      "workbench.action.decreaseViewSize",
      "workbench.action.decreaseViewSize",
      "workbench.action.decreaseViewSize",
    ],
  },
]

const actionContexts: Record<string, any[]> = {
  "explorer": [
    ...sidebarBaseActions,
    {
      key: "d",
      name: "Create directory",
      type: "command",
      command: "workbench.files.action.createFolderFromExplorer",
    },
    {
      key: "D",
      name: "Delete file",
      type: "command",
      command: "deleteFile",
    },
    {
      key: "r",
      name: "Rename file",
      type: "command",
      command: "renameFile",
    },
    {
      key: "f",
      name: "Create file",
      type: "command",
      command: "workbench.files.action.createFileFromExplorer",
    },
    {
      key: "z",
      name: "Collapse all",
      type: "command",
      command: "workbench.files.action.collapseExplorerFolders",
    },
    {
      key: "o",
      name: "Open containing",
      type: "command",
      command: "revealFileInOS",
    },
  ],
  "search": [
    ...sidebarBaseActions,
    {
      key: "i",
      name: "Focus input",
      type: "command",
      command: "workbench.action.findInFiles",
    },
    {
      key: "l",
      name: "Focus list",
      type: "commands",
      commands: ["search.action.focusSearchList", "list.focusFirst"],
    },
    {
      key: "R",
      name: "Refresh",
      type: "command",
      command: "search.action.refreshSearchResults",
    },
    {
      key: "n",
      name: "Next input",
      type: "command",
      command: "search.focus.nextInputBox",
    },
    {
      key: "p",
      name: "Previous input",
      type: "command",
      command: "search.focus.previousInputBox",
    },
    {
      key: "c",
      name: "Toggle case sensitivity",
      type: "command",
      command: "toggleSearchCaseSensitive",
    },
    {
      key: "r",
      name: "Toggle regex",
      type: "command",
      command: "toggleSearchRegex",
    },
  ],
  "terminal": [
    {
      key: "q",
      name: "Close terminal",
      type: "command",
      command: "workbench.action.closePanel",
    },
    {
      key: "s",
      name: "Split",
      type: "commands",
      commands: [
        "workbench.action.terminal.split",
        "workbench.action.moveActiveEditorGroupDown"
      ]
    },
    {
      key: " ",
      name: "Show commands",
      type: "command",
      command: "workbench.action.showCommands",
    },
  ]
}

const autoHidePanels = (context: vscode.ExtensionContext) => {
  const closeFn = () => {
    vscode.commands.executeCommand("workbench.action.closePanel")
    vscode.commands.executeCommand("workbench.action.closeSidebar")
  }

  closeFn()
  context.subscriptions.push(vscode.window.onDidChangeTextEditorSelection(e => {
    if ([vscode.TextEditorSelectionChangeKind.Mouse, vscode.TextEditorSelectionChangeKind.Keyboard].includes(e.kind as any)) {
      setTimeout(closeFn, 300)
    }
  }));
}

export function activate(context: vscode.ExtensionContext) {
  const showSidebarMenu = (viewlet: string) => {
    const thisContextActions = actionContexts[viewlet]
    const actions = (thisContextActions != null) ? thisContextActions : sidebarBaseActions;

    commands.executeCommand("whichkey.show", actions)
  };

  context.subscriptions.push(
    commands.registerCommand("mkrawiec.showSidebarMenu", showSidebarMenu),
  );

  autoHidePanels(context)
}

export function deactivate() { }
