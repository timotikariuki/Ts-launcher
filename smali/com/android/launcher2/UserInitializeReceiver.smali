.class public Lcom/android/launcher2/UserInitializeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UserInitializeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 6
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p4, "outList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "extras":[Ljava/lang/String;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 69
    return-void

    .line 63
    :cond_0
    aget-object v0, v1, v3

    .line 64
    .local v0, "extra":Ljava/lang/String;
    const-string v5, "drawable"

    invoke-virtual {p1, v0, v5, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 65
    .local v2, "res":I
    if-eqz v2, :cond_1

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 42
    .local v4, "resources":Landroid/content/res/Resources;
    sget v6, Lcom/android/launcher/R$array;->wallpapers:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "packageName":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget v6, Lcom/android/launcher/R$array;->wallpapers:I

    invoke-direct {p0, v4, v2, v6, v1}, Lcom/android/launcher2/UserInitializeReceiver;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 45
    sget v6, Lcom/android/launcher/R$array;->extra_wallpapers:I

    invoke-direct {p0, v4, v2, v6, v1}, Lcom/android/launcher2/UserInitializeReceiver;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 47
    const-string v6, "wallpaper"

    .line 46
    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/WallpaperManager;

    .line 48
    .local v5, "wpm":Landroid/app/WallpaperManager;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v0, v6, :cond_0

    .line 58
    :goto_1
    return-void

    .line 49
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 50
    .local v3, "resid":I
    invoke-virtual {v5, v3}, Landroid/app/WallpaperManager;->hasResourceWallpaper(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 52
    :try_start_0
    invoke-virtual {v5, v3}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 53
    :catch_0
    move-exception v6

    goto :goto_1

    .line 48
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
