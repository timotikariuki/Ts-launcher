.class Lcom/android/launcher2/ApplicationInfo;
.super Lcom/android/launcher2/ItemInfo;
.source "ApplicationInfo.java"


# static fields
.field static final DOWNLOADED_FLAG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Launcher2.ApplicationInfo"

.field static final UPDATED_SYSTEM_APP_FLAG:I = 0x2


# instance fields
.field componentName:Landroid/content/ComponentName;

.field firstInstallTime:J

.field flags:I

.field iconBitmap:Landroid/graphics/Bitmap;

.field intent:Landroid/content/Intent;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/launcher2/ItemInfo;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/ApplicationInfo;->flags:I

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/ApplicationInfo;->itemType:I

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher2/IconCache;Ljava/util/HashMap;)V
    .locals 6
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .param p3, "iconCache"    # Lcom/android/launcher2/IconCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/pm/ResolveInfo;",
            "Lcom/android/launcher2/IconCache;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "labelCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/CharSequence;>;"
    const/4 v3, 0x0

    .line 65
    invoke-direct {p0}, Lcom/android/launcher2/ItemInfo;-><init>()V

    .line 56
    iput v3, p0, Lcom/android/launcher2/ApplicationInfo;->flags:I

    .line 67
    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 69
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    .line 70
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/launcher2/ApplicationInfo;->container:J

    .line 71
    iget-object v3, p0, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    .line 72
    const/high16 v4, 0x10200000

    .line 71
    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 75
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 76
    .local v0, "appFlags":I
    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_0

    .line 77
    iget v3, p0, Lcom/android/launcher2/ApplicationInfo;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/launcher2/ApplicationInfo;->flags:I

    .line 79
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_0

    .line 80
    iget v3, p0, Lcom/android/launcher2/ApplicationInfo;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/launcher2/ApplicationInfo;->flags:I

    .line 83
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-wide v3, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v3, p0, Lcom/android/launcher2/ApplicationInfo;->firstInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v0    # "appFlags":I
    :goto_0
    invoke-virtual {p3, p0, p2, p4}, Lcom/android/launcher2/IconCache;->getTitleAndIcon(Lcom/android/launcher2/ApplicationInfo;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)V

    .line 88
    return-void

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Launcher2.ApplicationInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PackageManager.getApplicationInfo failed for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/launcher2/ApplicationInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher2/ApplicationInfo;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/launcher2/ItemInfo;-><init>(Lcom/android/launcher2/ItemInfo;)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/ApplicationInfo;->flags:I

    .line 92
    iget-object v0, p1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    .line 93
    iget-object v0, p1, Lcom/android/launcher2/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 94
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 95
    iget v0, p1, Lcom/android/launcher2/ApplicationInfo;->flags:I

    iput v0, p0, Lcom/android/launcher2/ApplicationInfo;->flags:I

    .line 96
    iget-wide v0, p1, Lcom/android/launcher2/ApplicationInfo;->firstInstallTime:J

    iput-wide v0, p0, Lcom/android/launcher2/ApplicationInfo;->firstInstallTime:J

    .line 97
    return-void
.end method

.method public static dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    return-void

    .line 128
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    .line 129
    .local v0, "info":Lcom/android/launcher2/ApplicationInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   title=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/launcher2/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" iconBitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 130
    iget-object v3, v0, Lcom/android/launcher2/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " firstInstallTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 131
    iget-wide v3, v0, Lcom/android/launcher2/ApplicationInfo;->firstInstallTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/launcher2/ItemInfo;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public makeShortcut()Lcom/android/launcher2/ShortcutInfo;
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/android/launcher2/ShortcutInfo;

    invoke-direct {v0, p0}, Lcom/android/launcher2/ShortcutInfo;-><init>(Lcom/android/launcher2/ApplicationInfo;)V

    return-object v0
.end method

.method final setActivity(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "launchFlags"    # I

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 114
    iget-object v0, p0, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v0, p0, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 116
    iget-object v0, p0, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/ApplicationInfo;->itemType:I

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ApplicationInfo(title="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher2/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
