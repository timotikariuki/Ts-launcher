.class Lcom/android/launcher2/PendingAddShortcutInfo;
.super Lcom/android/launcher2/PendingAddItemInfo;
.source "PendingAddItemInfo.java"


# instance fields
.field shortcutActivityInfo:Landroid/content/pm/ActivityInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ActivityInfo;)V
    .locals 0
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/launcher2/PendingAddItemInfo;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/launcher2/PendingAddShortcutInfo;->shortcutActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 42
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Shortcut: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher2/PendingAddShortcutInfo;->shortcutActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
