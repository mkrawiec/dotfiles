import * as vscode from "vscode";

const { commands } = vscode;

const baseActions = [
  {
    key: "q",
    name: "Close sidebar",
    type: "command",
    command: "workbench.action.closeSidebar",
  },
  {
    key: "e",
    name: "Expand",
    type: "commands",
    commands: [
      "workbench.action.increaseViewSize",
      "workbench.action.increaseViewSize",
      "workbench.action.increaseViewSize",
    ],
  },
  {
    key: "E",
    name: "Collapse",
    type: "commands",
    commands: [
      "workbench.action.decreaseViewSize",
      "workbench.action.decreaseViewSize",
      "workbench.action.decreaseViewSize",
    ],
  },
]

const viewletActions: Record<string, any[]> = {
  "explorer": [
    {
      key: "d",
      name: "Create directory",
      type: "command",
      command: "workbench.files.action.createFolderFromExplorer",
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
      key: "r",
      name: "Replace",
      type: "command",
      command: "workbench.action.replaceInFiles",
    },
  ]
}

export function activate(context: vscode.ExtensionContext) {
  const showSidebarMenu = (viewlet: string) => {
    const thisViewletActions = viewletActions[viewlet]
    const actions = (thisViewletActions != null) ? [...baseActions, ...thisViewletActions] : baseActions;

    commands.executeCommand("whichkey.show", actions)
  };

  context.subscriptions.push(
    commands.registerCommand("mkrawiec.showSidebarMenu", showSidebarMenu)
  );
}

export function deactivate() { }

