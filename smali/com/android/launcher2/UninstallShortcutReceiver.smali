.class public Lcom/android/launcher2/UninstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UninstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/UninstallShortcutReceiver$PendingUninstallShortcutInfo;
    }
.end annotation


# static fields
.field private static final ACTION_UNINSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.UNINSTALL_SHORTCUT"

.field private static mUninstallQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/UninstallShortcutReceiver$PendingUninstallShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mUseUninstallQueue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    sput-object v0, Lcom/android/launcher2/UninstallShortcutReceiver;->mUninstallQueue:Ljava/util/ArrayList;

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/UninstallShortcutReceiver;->mUseUninstallQueue:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static disableAndFlushUninstallQueue(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/UninstallShortcutReceiver;->mUseUninstallQueue:Z

    .line 77
    sget-object v1, Lcom/android/launcher2/UninstallShortcutReceiver;->mUninstallQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 78
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher2/UninstallShortcutReceiver$PendingUninstallShortcutInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    return-void

    .line 79
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/UninstallShortcutReceiver$PendingUninstallShortcutInfo;

    invoke-static {p0, v1}, Lcom/android/launcher2/UninstallShortcutReceiver;->processUninstallShortcut(Landroid/content/Context;Lcom/android/launcher2/UninstallShortcutReceiver$PendingUninstallShortcutInfo;)V

    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method static enableUninstallQueue()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/UninstallShortcutReceiver;->mUseUninstallQueue:Z

    .line 73
    return-void
.end method

.method private static processUninstallShortcut(Landroid/content/Context;Lcom/android/launcher2/UninstallShortcutReceiver$PendingUninstallShortcutInfo;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pendingInfo"    # Lcom/android/launcher2/UninstallShortcutReceiver$PendingUninstallShortcutInfo;

    .prologue
    .line 86
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "spKey":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 89
    .local v2, "sharedPrefs":Landroid/content/SharedPreferences;
    iget-object v1, p1, Lcom/android/launcher2/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->data:Landroid/content/Intent;

    .line 91
    .local v1, "data":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 92
    .local v0, "app":Lcom/android/launcher2/LauncherApplication;
    monitor-enter v0

    .line 93
    :try_start_0
    invoke-static {p0, v1, v2}, Lcom/android/launcher2/UninstallShortcutReceiver;->removeShortcut(Landroid/content/Context;Landroid/content/Intent;Landroid/content/SharedPreferences;)V

    .line 92
    monitor-exit v0

    .line 95
    return-void

    .line 92
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private static removeShortcut(Landroid/content/Context;Landroid/content/Intent;Landroid/content/SharedPreferences;)V
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "sharedPrefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 99
    const-string v3, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/content/Intent;

    .line 100
    .local v15, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 101
    .local v17, "name":Ljava/lang/String;
    const-string v3, "duplicate"

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 103
    .local v11, "duplicate":Z
    if-eqz v15, :cond_3

    if-eqz v17, :cond_3

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 105
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 106
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "intent"

    aput-object v6, v4, v5

    .line 107
    const-string v5, "title=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v17, v6, v7

    const/4 v7, 0x0

    .line 105
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 109
    .local v9, "c":Landroid/database/Cursor;
    const-string v3, "intent"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 110
    .local v16, "intentIndex":I
    const-string v3, "_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 112
    .local v14, "idIndex":I
    const/4 v10, 0x0

    .line 115
    .local v10, "changed":Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_4

    .line 131
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 134
    if-eqz v10, :cond_1

    .line 135
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 136
    sget v3, Lcom/android/launcher/R$string;->shortcut_uninstalled:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 137
    const/4 v4, 0x0

    .line 136
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 137
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 142
    :cond_1
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 143
    .local v18, "newApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "apps.new.list"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v18

    .line 144
    monitor-enter v18

    .line 146
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v15, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    .line 147
    .local v8, "appRemoved":Z
    if-nez v8, :cond_2

    .line 144
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    if-eqz v8, :cond_3

    .line 150
    move-object/from16 v19, v18

    .line 151
    .local v19, "savedNewApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Lcom/android/launcher2/UninstallShortcutReceiver$1;

    const-string v4, "setNewAppsThread-remove"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-direct {v3, v4, v0, v1}, Lcom/android/launcher2/UninstallShortcutReceiver$1;-><init>(Ljava/lang/String;Ljava/util/Set;Landroid/content/SharedPreferences;)V

    .line 164
    invoke-virtual {v3}, Lcom/android/launcher2/UninstallShortcutReceiver$1;->start()V

    .line 167
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v8    # "appRemoved":Z
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v10    # "changed":Z
    .end local v14    # "idIndex":I
    .end local v16    # "intentIndex":I
    .end local v18    # "newApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19    # "savedNewApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    return-void

    .line 117
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v10    # "changed":Z
    .restart local v14    # "idIndex":I
    .restart local v16    # "intentIndex":I
    :cond_4
    :try_start_2
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 119
    .local v12, "id":J
    const/4 v3, 0x0

    invoke-static {v12, v13, v3}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v20

    .line 120
    .local v20, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    const/4 v10, 0x1

    .line 122
    if-nez v11, :cond_0

    goto :goto_1

    .line 130
    .end local v12    # "id":J
    .end local v20    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v3

    .line 131
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 132
    throw v3

    .line 144
    .restart local v18    # "newApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 126
    .end local v18    # "newApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 58
    const-string v1, "hdd"

    const-string v2, "onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v1, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v0, Lcom/android/launcher2/UninstallShortcutReceiver$PendingUninstallShortcutInfo;

    invoke-direct {v0, p2}, Lcom/android/launcher2/UninstallShortcutReceiver$PendingUninstallShortcutInfo;-><init>(Landroid/content/Intent;)V

    .line 64
    .local v0, "info":Lcom/android/launcher2/UninstallShortcutReceiver$PendingUninstallShortcutInfo;
    sget-boolean v1, Lcom/android/launcher2/UninstallShortcutReceiver;->mUseUninstallQueue:Z

    if-eqz v1, :cond_1

    .line 65
    sget-object v1, Lcom/android/launcher2/UninstallShortcutReceiver;->mUninstallQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_1
    invoke-static {p1, v0}, Lcom/android/launcher2/UninstallShortcutReceiver;->processUninstallShortcut(Landroid/content/Context;Lcom/android/launcher2/UninstallShortcutReceiver$PendingUninstallShortcutInfo;)V

    goto :goto_0
.end method
