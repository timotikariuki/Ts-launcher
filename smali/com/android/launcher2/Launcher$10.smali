.class Lcom/android/launcher2/Launcher$10;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field private final synthetic val$alreadyOnHome:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    iput-boolean p2, p0, Lcom/android/launcher2/Launcher$10;->val$alreadyOnHome:Z

    .line 1770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1772
    iget-object v3, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$0(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1815
    :cond_0
    :goto_0
    return-void

    .line 1776
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$0(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 1778
    .local v1, "openFolder":Lcom/android/launcher2/Folder;
    iget-object v3, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$0(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 1779
    iget-boolean v3, p0, Lcom/android/launcher2/Launcher$10;->val$alreadyOnHome:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v4, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$0(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->isTouchActive()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1780
    if-nez v1, :cond_2

    .line 1781
    iget-object v3, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$0(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/launcher2/Workspace;->moveToDefaultScreen(Z)V

    .line 1784
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 1785
    iget-object v3, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragMode()V

    .line 1789
    iget-boolean v3, p0, Lcom/android/launcher2/Launcher$10;->val$alreadyOnHome:Z

    if-eqz v3, :cond_5

    .line 1790
    sget-object v3, Lcom/android/launcher2/DefaultWorkspace;->mOnResumeAllapp:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1793
    iget-object v3, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3, v5}, Lcom/android/launcher2/Launcher;->showAllApps(Z)V

    .line 1804
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v2

    .line 1805
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1806
    iget-object v3, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    .line 1807
    const-string v4, "input_method"

    .line 1806
    invoke-virtual {v3, v4}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1808
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1812
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    iget-boolean v3, p0, Lcom/android/launcher2/Launcher$10;->val$alreadyOnHome:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$4(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1813
    iget-object v3, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$4(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/AppsCustomizeTabHost;->reset()V

    goto/16 :goto_0

    .line 1795
    .end local v2    # "v":Landroid/view/View;
    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3, v5}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    goto :goto_1

    .line 1796
    :cond_5
    sget-object v3, Lcom/android/launcher2/DefaultWorkspace;->mOnResumeAllapp:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1797
    iget-object v3, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    sget-object v4, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    iput-object v4, v3, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    .line 1798
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/DefaultWorkspace;->mOnResumeAllapp:Ljava/lang/Boolean;

    goto :goto_1

    .line 1800
    :cond_6
    iget-object v3, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    sget-object v4, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    iput-object v4, v3, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    goto :goto_1
.end method
