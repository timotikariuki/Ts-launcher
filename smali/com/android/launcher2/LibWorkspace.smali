.class public Lcom/android/launcher2/LibWorkspace;
.super Lcom/android/launcher2/DefaultWorkspace;
.source "LibWorkspace.java"


# static fields
.field public static final LAUNCHER_GETINFO_ACTION:Ljava/lang/String; = "TS_GET_AUTHOR_INFO"

.field public static final LAUNCHER_SENDINFO_ACTION:Ljava/lang/String; = "TS_AUTHOR_INFO"

.field protected static final TAG:Ljava/lang/String; = "Workspace"

.field public static WEATHER_SERVICE:Ljava/lang/String;

.field protected static firstview_ignore:Z

.field public static mAllAppsFavo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/DefaultWorkspace$Favorite;",
            ">;"
        }
    .end annotation
.end field

.field public static mContext:Landroid/content/Context;

.field private static myWorkspace:Lcom/android/launcher2/LibWorkspace;

.field protected static userdef_widget_sx:I

.field protected static userdef_widget_sy:I

.field protected static userdef_widget_x:I

.field protected static userdef_widget_y:I


# instance fields
.field protected addWorkspaceIcon:Z

.field public authorInfo:Ljava/lang/String;

.field bUseDefaultHotseat:Z

.field freeCnt:I

.field freeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected iconBuf:[I

.field public launcherReceiver:Landroid/content/BroadcastReceiver;

.field protected mAllAppBtn:Landroid/view/View;

.field protected mLauncher:Lcom/android/launcher2/Launcher;

.field pageNo:I

.field public positionMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    const-string v0, "com.forfan.carassist.WeatherService"

    sput-object v0, Lcom/android/launcher2/LibWorkspace;->WEATHER_SERVICE:Ljava/lang/String;

    .line 39
    sput v1, Lcom/android/launcher2/LibWorkspace;->userdef_widget_x:I

    .line 40
    sput v1, Lcom/android/launcher2/LibWorkspace;->userdef_widget_y:I

    .line 41
    sput v1, Lcom/android/launcher2/LibWorkspace;->userdef_widget_sx:I

    .line 42
    sput v1, Lcom/android/launcher2/LibWorkspace;->userdef_widget_sy:I

    .line 45
    sput-boolean v1, Lcom/android/launcher2/LibWorkspace;->firstview_ignore:Z

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LibWorkspace;->mAllAppsFavo:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Lcom/android/launcher2/LibWorkspace;

    invoke-direct {v0}, Lcom/android/launcher2/LibWorkspace;-><init>()V

    sput-object v0, Lcom/android/launcher2/LibWorkspace;->myWorkspace:Lcom/android/launcher2/LibWorkspace;

    .line 132
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/android/launcher2/DefaultWorkspace;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/LibWorkspace;->addWorkspaceIcon:Z

    .line 47
    iput-boolean v2, p0, Lcom/android/launcher2/LibWorkspace;->bUseDefaultHotseat:Z

    .line 48
    iput-object v1, p0, Lcom/android/launcher2/LibWorkspace;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 50
    iput-object v1, p0, Lcom/android/launcher2/LibWorkspace;->mAllAppBtn:Landroid/view/View;

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LibWorkspace;->positionMap:Landroid/util/SparseArray;

    .line 113
    const/16 v0, 0x32

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/LibWorkspace;->iconBuf:[I

    .line 133
    const-string v0, "HD_xx_xx"

    iput-object v0, p0, Lcom/android/launcher2/LibWorkspace;->authorInfo:Ljava/lang/String;

    .line 146
    new-instance v0, Lcom/android/launcher2/LibWorkspace$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LibWorkspace$1;-><init>(Lcom/android/launcher2/LibWorkspace;)V

    iput-object v0, p0, Lcom/android/launcher2/LibWorkspace;->launcherReceiver:Landroid/content/BroadcastReceiver;

    .line 346
    iput v2, p0, Lcom/android/launcher2/LibWorkspace;->pageNo:I

    .line 347
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/LibWorkspace;->freeCnt:I

    .line 348
    iput-object v1, p0, Lcom/android/launcher2/LibWorkspace;->freeList:Ljava/util/List;

    .line 37
    return-void
.end method

.method public static GetInstance()Lcom/android/launcher2/LibWorkspace;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/launcher2/LibWorkspace;->myWorkspace:Lcom/android/launcher2/LibWorkspace;

    return-object v0
.end method

.method private calculateOccupied()V
    .locals 13

    .prologue
    .line 289
    sget-object v10, Lcom/android/launcher2/LibWorkspace;->mFavo:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 336
    return-void

    .line 289
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DefaultWorkspace$Favorite;

    .line 290
    .local v0, "favorite":Lcom/android/launcher2/DefaultWorkspace$Favorite;
    iget v7, v0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->mS:I

    .line 291
    .local v7, "screen":I
    iget v8, v0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->spanX:I

    .line 292
    .local v8, "sizeX":I
    iget v9, v0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->spanY:I

    .line 293
    .local v9, "sizeY":I
    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    .line 296
    iget v5, v0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->mX:I

    .line 297
    .local v5, "posX":I
    iget v6, v0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->mY:I

    .line 298
    .local v6, "posY":I
    if-ltz v5, :cond_0

    if-ltz v6, :cond_0

    .line 302
    iget-object v11, p0, Lcom/android/launcher2/LibWorkspace;->positionMap:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 303
    .local v1, "freePosition":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v1, :cond_2

    .line 304
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "freePosition":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .restart local v1    # "freePosition":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v11, Lcom/android/launcher2/LibWorkspace;->cell_count_y:I

    if-lt v2, v11, :cond_4

    .line 311
    iget-object v11, p0, Lcom/android/launcher2/LibWorkspace;->positionMap:Landroid/util/SparseArray;

    invoke-virtual {v11, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    .end local v2    # "i":I
    :cond_2
    add-int v11, v5, v8

    sget v12, Lcom/android/launcher2/LibWorkspace;->cell_count_x:I

    if-gt v11, v12, :cond_3

    .line 315
    add-int v11, v6, v9

    sget v12, Lcom/android/launcher2/LibWorkspace;->cell_count_y:I

    if-le v11, v12, :cond_6

    .line 316
    :cond_3
    new-instance v10, Ljava/lang/IllegalArgumentException;

    .line 317
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "favorite position error, x = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " y = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 318
    const-string v12, " SizeX = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " SizeY = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 317
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 316
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 307
    .restart local v2    # "i":I
    :cond_4
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    sget v11, Lcom/android/launcher2/LibWorkspace;->cell_count_x:I

    if-lt v3, v11, :cond_5

    .line 306
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    :cond_5
    shl-int/lit8 v11, v3, 0x4

    or-int/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 322
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_6
    move v2, v5

    .restart local v2    # "i":I
    :goto_2
    add-int v11, v5, v8

    if-ge v2, v11, :cond_0

    .line 323
    move v3, v6

    .restart local v3    # "j":I
    :goto_3
    add-int v11, v6, v9

    if-lt v3, v11, :cond_7

    .line 322
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 324
    :cond_7
    shl-int/lit8 v11, v2, 0x4

    or-int v4, v11, v3

    .line 325
    .local v4, "pos":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 326
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 323
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 330
    :cond_8
    new-instance v10, Ljava/lang/IllegalArgumentException;

    .line 331
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "favorite position error, position occupied by other widget "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 330
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private checkDefault(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/forfandefault.bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v1, "file":Ljava/io/File;
    const-string v2, "####"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkDefault file.exists() = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    const/4 v2, 0x1

    .line 220
    :goto_0
    return v2

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 220
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private clearPositionMap()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/LibWorkspace;->pageNo:I

    .line 262
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/LibWorkspace;->freeCnt:I

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/LibWorkspace;->freeList:Ljava/util/List;

    .line 264
    sget-object v0, Lcom/android/launcher2/LibWorkspace;->mAllAppsFavo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 266
    iget-object v0, p0, Lcom/android/launcher2/LibWorkspace;->positionMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 267
    return-void
.end method

.method private getEmptyPosition()[I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 352
    iget v3, p0, Lcom/android/launcher2/LibWorkspace;->freeCnt:I

    if-nez v3, :cond_0

    .line 353
    iget v3, p0, Lcom/android/launcher2/LibWorkspace;->pageNo:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/launcher2/LibWorkspace;->pageNo:I

    .line 356
    :cond_0
    iget v3, p0, Lcom/android/launcher2/LibWorkspace;->freeCnt:I

    if-gtz v3, :cond_3

    .line 360
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/LibWorkspace;->positionMap:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/launcher2/LibWorkspace;->pageNo:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Lcom/android/launcher2/LibWorkspace;->freeList:Ljava/util/List;

    .line 361
    iget-object v3, p0, Lcom/android/launcher2/LibWorkspace;->freeList:Ljava/util/List;

    if-nez v3, :cond_5

    .line 362
    sget v3, Lcom/android/launcher2/LibWorkspace;->cell_count_x:I

    sget v4, Lcom/android/launcher2/LibWorkspace;->cell_count_y:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/launcher2/LibWorkspace;->freeCnt:I

    .line 371
    :cond_2
    :goto_0
    iget v3, p0, Lcom/android/launcher2/LibWorkspace;->freeCnt:I

    if-eqz v3, :cond_1

    .line 375
    :cond_3
    sget v3, Lcom/android/launcher2/LibWorkspace;->cell_count_x:I

    sget v4, Lcom/android/launcher2/LibWorkspace;->cell_count_y:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher2/LibWorkspace;->freeCnt:I

    sub-int/2addr v3, v4

    sget v4, Lcom/android/launcher2/LibWorkspace;->cell_count_x:I

    rem-int v0, v3, v4

    .line 376
    .local v0, "posX":I
    sget v3, Lcom/android/launcher2/LibWorkspace;->cell_count_x:I

    sget v4, Lcom/android/launcher2/LibWorkspace;->cell_count_y:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher2/LibWorkspace;->freeCnt:I

    sub-int/2addr v3, v4

    sget v4, Lcom/android/launcher2/LibWorkspace;->cell_count_x:I

    div-int/2addr v3, v4

    sget v4, Lcom/android/launcher2/LibWorkspace;->cell_count_y:I

    rem-int v1, v3, v4

    .line 377
    .local v1, "posY":I
    iget-object v3, p0, Lcom/android/launcher2/LibWorkspace;->freeList:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 379
    iget-object v3, p0, Lcom/android/launcher2/LibWorkspace;->freeList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 380
    .local v2, "positon":I
    shr-int/lit8 v0, v2, 0x4

    .line 381
    and-int/lit8 v1, v2, 0xf

    .line 382
    iget-object v3, p0, Lcom/android/launcher2/LibWorkspace;->freeList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 384
    .end local v2    # "positon":I
    :cond_4
    iget v3, p0, Lcom/android/launcher2/LibWorkspace;->freeCnt:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/launcher2/LibWorkspace;->freeCnt:I

    .line 385
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v0, v3, v5

    const/4 v4, 0x1

    aput v1, v3, v4

    return-object v3

    .line 366
    .end local v0    # "posX":I
    .end local v1    # "posY":I
    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/LibWorkspace;->freeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/LibWorkspace;->freeCnt:I

    .line 367
    iget v3, p0, Lcom/android/launcher2/LibWorkspace;->freeCnt:I

    if-nez v3, :cond_2

    .line 368
    iget v3, p0, Lcom/android/launcher2/LibWorkspace;->pageNo:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/launcher2/LibWorkspace;->pageNo:I

    goto :goto_0
.end method

.method private startCommService(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN_UI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v1, "com.ts.MainUI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 175
    return-void
.end method


# virtual methods
.method public SetContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    sput-object p1, Lcom/android/launcher2/LibWorkspace;->mContext:Landroid/content/Context;

    .line 137
    invoke-static {}, Lcom/android/launcher2/CrashHandler;->getInstance()Lcom/android/launcher2/CrashHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CrashHandler;->init(Landroid/content/Context;)V

    .line 138
    sget-object v1, Lcom/android/launcher2/LibWorkspace;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/launcher2/LibWorkspace;->startCommService(Landroid/content/Context;)V

    .line 140
    sget v1, Lcom/android/launcher/R$string;->Launcher_UI_name:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/LibWorkspace;->authorInfo:Ljava/lang/String;

    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "TS_GET_AUTHOR_INFO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/android/launcher2/LibWorkspace;->launcherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    return-void
.end method

.method public bLoadDefault(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    const/4 v0, 0x0

    .line 227
    .local v0, "bLoadDefault":Z
    iget-object v3, p0, Lcom/android/launcher2/LibWorkspace;->iconBuf:[I

    invoke-static {v3}, Lcom/yyw/ts90xhw/IconCfg;->GetIconCfg([I)I

    move-result v2

    .line 228
    .local v2, "nResult":I
    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 230
    sget v4, Lcom/android/launcher/R$integer;->hotseat_all_apps_index:I

    .line 229
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/android/launcher2/LibWorkspace;->hotseat_all_apps_index:I

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 232
    sget v4, Lcom/android/launcher/R$integer;->cell_count_x:I

    .line 231
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/android/launcher2/LibWorkspace;->cell_count_x:I

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 234
    sget v4, Lcom/android/launcher/R$integer;->cell_count_y:I

    .line 233
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/android/launcher2/LibWorkspace;->cell_count_y:I

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 236
    sget v4, Lcom/android/launcher/R$integer;->hotseat_cell_count_x:I

    .line 235
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/android/launcher2/LibWorkspace;->hotseat_cell_count_x:I

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 238
    sget v4, Lcom/android/launcher/R$integer;->hotseat_cell_count_y:I

    .line 237
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/android/launcher2/LibWorkspace;->hotseat_cell_count_y:I

    .line 240
    :cond_0
    const-string v3, "Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IconCfg.GetIconCfg = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/LibWorkspace;->iconBuf:[I

    array-length v3, v3

    if-lt v1, v3, :cond_3

    .line 245
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/launcher2/LibWorkspace;->loadDefaultWallPaper(Landroid/content/Context;)V

    .line 247
    const/4 v0, 0x1

    .line 250
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher2/LibWorkspace;->checkDefault(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 251
    const-string v3, "####"

    const-string v4, "need to load default"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/launcher2/LibWorkspace;->loadDefaultWallPaper(Landroid/content/Context;)V

    .line 253
    const/4 v0, 0x1

    .line 256
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 242
    :cond_3
    const-string v3, "Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IconCfg["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/LibWorkspace;->iconBuf:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/launcher2/LibWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    return v0
.end method

.method public getIconBuf()[I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/launcher2/LibWorkspace;->iconBuf:[I

    return-object v0
.end method

.method public getIconName(I)Ljava/lang/String;
    .locals 9
    .param p1, "iconId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 178
    if-ltz p1, :cond_0

    sget-object v6, Lcom/android/launcher2/MainIconDef;->packageStr:[[Ljava/lang/String;

    array-length v6, v6

    if-ge p1, v6, :cond_0

    .line 179
    sget-object v6, Lcom/android/launcher2/MainIconDef;->packageStr:[[Ljava/lang/String;

    aget-object v6, v6, p1

    aget-object v5, v6, v8

    .line 180
    .local v5, "packageName":Ljava/lang/String;
    sget-object v6, Lcom/android/launcher2/MainIconDef;->packageStr:[[Ljava/lang/String;

    aget-object v6, v6, p1

    const/4 v7, 0x1

    aget-object v1, v6, v7

    .line 181
    .local v1, "className":Ljava/lang/String;
    sget-object v6, Lcom/android/launcher2/LibWorkspace;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 182
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .local v2, "cn":Landroid/content/ComponentName;
    invoke-virtual {v4, v2, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 184
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v3, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/launcher2/LibWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v0

    return v0
.end method

.method public initView()V
    .locals 2

    .prologue
    .line 270
    sget-object v0, Lcom/android/launcher2/LibWorkspace;->mFavo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 272
    invoke-direct {p0}, Lcom/android/launcher2/LibWorkspace;->clearPositionMap()V

    .line 274
    invoke-virtual {p0}, Lcom/android/launcher2/LibWorkspace;->placeDefaultView()V

    .line 277
    invoke-direct {p0}, Lcom/android/launcher2/LibWorkspace;->calculateOccupied()V

    .line 280
    invoke-virtual {p0}, Lcom/android/launcher2/LibWorkspace;->placeHotseat()V

    .line 283
    invoke-virtual {p0}, Lcom/android/launcher2/LibWorkspace;->placeWorkspace()V

    .line 284
    sget-object v0, Lcom/android/launcher2/LibWorkspace;->mAllAppsFavo:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher2/LibWorkspace;->mFavo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 286
    return-void
.end method

.method public isHaveIcon(I)Z
    .locals 2
    .param p1, "iconId"    # I

    .prologue
    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/LibWorkspace;->iconBuf:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 128
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/LibWorkspace;->iconBuf:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_1

    .line 125
    const/4 v1, 0x1

    goto :goto_1

    .line 123
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public loadDefaultWallPaper(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 192
    const-string v4, "####"

    const-string v5, "loadDefaultWallPaper in"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 195
    .local v3, "wpm":Landroid/app/WallpaperManager;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 196
    sget v5, Lcom/android/launcher/R$array;->wallpapers:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "packagename":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 198
    const-string v5, "wallpaper_01"

    const-string v6, "drawable"

    .line 197
    invoke-virtual {v4, v5, v6, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 199
    .local v0, "defaultWallpaper":I
    invoke-virtual {v3, v0}, Landroid/app/WallpaperManager;->setResource(I)V

    .line 200
    const-string v4, "####"

    const-string v5, "loadDefaultWallPaper wallpaper_01"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v0    # "defaultWallpaper":I
    .end local v2    # "packagename":Ljava/lang/String;
    .end local v3    # "wpm":Landroid/app/WallpaperManager;
    :goto_0
    return-void

    .line 201
    .restart local v3    # "wpm":Landroid/app/WallpaperManager;
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 205
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "wpm":Landroid/app/WallpaperManager;
    :cond_0
    const-string v4, "Workspace"

    const-string v5, "context == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public placeDefaultView()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 339
    sget-boolean v0, Lcom/android/launcher2/LibWorkspace;->firstview_ignore:Z

    if-nez v0, :cond_0

    .line 340
    sget-object v8, Lcom/android/launcher2/LibWorkspace;->mFavo:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher2/DefaultWorkspace$Favorite;

    sget v4, Lcom/android/launcher2/LibWorkspace;->userdef_widget_x:I

    sget v5, Lcom/android/launcher2/LibWorkspace;->userdef_widget_y:I

    .line 341
    sget v6, Lcom/android/launcher2/LibWorkspace;->userdef_widget_sx:I

    sget v7, Lcom/android/launcher2/LibWorkspace;->userdef_widget_sy:I

    move-object v1, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/DefaultWorkspace$Favorite;-><init>(Lcom/android/launcher2/DefaultWorkspace;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 340
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_0
    return-void
.end method

.method public placeHotseat()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 453
    sget v0, Lcom/android/launcher2/LibWorkspace;->hotseat_cell_count_y:I

    sget v1, Lcom/android/launcher2/LibWorkspace;->hotseat_cell_count_x:I

    mul-int v7, v0, v1

    .line 454
    .local v7, "hotseatNum":I
    if-gtz v7, :cond_1

    .line 496
    :cond_0
    return-void

    .line 459
    :cond_1
    const/4 v9, 0x0

    .line 460
    .local v9, "nIconCnt":I
    const/4 v6, 0x0

    .line 463
    .local v6, "hotseatCnt":I
    const/4 v6, 0x0

    :goto_0
    sget v0, Lcom/android/launcher2/LibWorkspace;->hotseat_all_apps_index:I

    if-ge v6, v0, :cond_2

    .line 464
    iget-object v0, p0, Lcom/android/launcher2/LibWorkspace;->iconBuf:[I

    array-length v0, v0

    .line 463
    if-lt v9, v0, :cond_4

    .line 475
    :cond_2
    if-gt v6, v7, :cond_0

    .line 480
    sget v0, Lcom/android/launcher2/LibWorkspace;->hotseat_all_apps_index:I

    if-gez v0, :cond_6

    .line 481
    const/4 v6, 0x0

    .line 487
    :goto_1
    if-ge v6, v7, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LibWorkspace;->iconBuf:[I

    array-length v0, v0

    if-ge v9, v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/launcher2/LibWorkspace;->iconBuf:[I

    aget v0, v0, v9

    add-int/lit8 v8, v0, -0x1

    .line 489
    .local v8, "iconId":I
    if-ltz v8, :cond_3

    sget-object v0, Lcom/android/launcher2/MainIconDef;->packageStr:[[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_3

    .line 490
    sget-object v10, Lcom/android/launcher2/LibWorkspace;->mFavo:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher2/DefaultWorkspace$Favorite;

    sget-object v1, Lcom/android/launcher2/MainIconDef;->packageStr:[[Ljava/lang/String;

    aget-object v1, v1, v8

    aget-object v2, v1, v11

    .line 491
    sget-object v1, Lcom/android/launcher2/MainIconDef;->packageStr:[[Ljava/lang/String;

    aget-object v1, v1, v8

    aget-object v3, v1, v12

    .line 492
    sget v1, Lcom/android/launcher2/LibWorkspace;->hotseat_cell_count_x:I

    rem-int v4, v6, v1

    .line 493
    sget v1, Lcom/android/launcher2/LibWorkspace;->hotseat_cell_count_x:I

    div-int v5, v6, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/DefaultWorkspace$Favorite;-><init>(Lcom/android/launcher2/DefaultWorkspace;Ljava/lang/String;Ljava/lang/String;II)V

    .line 490
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_3
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 465
    .end local v8    # "iconId":I
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/LibWorkspace;->iconBuf:[I

    aget v0, v0, v9

    add-int/lit8 v8, v0, -0x1

    .line 466
    .restart local v8    # "iconId":I
    if-ltz v8, :cond_5

    sget-object v0, Lcom/android/launcher2/MainIconDef;->packageStr:[[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_5

    .line 467
    sget-object v10, Lcom/android/launcher2/LibWorkspace;->mFavo:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher2/DefaultWorkspace$Favorite;

    sget-object v1, Lcom/android/launcher2/MainIconDef;->packageStr:[[Ljava/lang/String;

    aget-object v1, v1, v8

    aget-object v2, v1, v11

    .line 468
    sget-object v1, Lcom/android/launcher2/MainIconDef;->packageStr:[[Ljava/lang/String;

    aget-object v1, v1, v8

    aget-object v3, v1, v12

    .line 469
    sget v1, Lcom/android/launcher2/LibWorkspace;->hotseat_cell_count_x:I

    rem-int v4, v6, v1

    .line 470
    sget v1, Lcom/android/launcher2/LibWorkspace;->hotseat_cell_count_x:I

    div-int v5, v6, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/DefaultWorkspace$Favorite;-><init>(Lcom/android/launcher2/DefaultWorkspace;Ljava/lang/String;Ljava/lang/String;II)V

    .line 467
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_5
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 483
    .end local v8    # "iconId":I
    :cond_6
    sget v0, Lcom/android/launcher2/LibWorkspace;->hotseat_all_apps_index:I

    add-int/lit8 v6, v0, 0x1

    .line 487
    goto :goto_1
.end method

.method public placeWorkspace()V
    .locals 14

    .prologue
    .line 390
    sget v0, Lcom/android/launcher2/LibWorkspace;->hotseat_cell_count_y:I

    sget v1, Lcom/android/launcher2/LibWorkspace;->hotseat_cell_count_x:I

    mul-int v9, v0, v1

    .line 391
    .local v9, "hotseatNum":I
    sget v0, Lcom/android/launcher2/LibWorkspace;->hotseat_all_apps_index:I

    if-ltz v0, :cond_0

    sget v0, Lcom/android/launcher2/LibWorkspace;->hotseat_all_apps_index:I

    if-ge v0, v9, :cond_0

    .line 392
    add-int/lit8 v9, v9, -0x1

    .line 394
    :cond_0
    if-gtz v9, :cond_1

    .line 395
    const/4 v9, 0x0

    .line 398
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher2/LibWorkspace;->bUseDefaultHotseat:Z

    if-eqz v0, :cond_2

    .line 399
    const/4 v9, 0x0

    .line 402
    :cond_2
    const/4 v4, 0x0

    .line 403
    .local v4, "pageNo":I
    const/4 v7, 0x0

    .line 404
    .local v7, "freeCnt":I
    const/4 v8, 0x0

    .line 405
    .local v8, "freeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v11, v9

    .local v11, "iconCnt":I
    :goto_0
    sget-object v0, Lcom/android/launcher2/MainIconDef;->packageStr:[[Ljava/lang/String;

    array-length v0, v0

    if-lt v11, v0, :cond_3

    .line 450
    return-void

    .line 407
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/LibWorkspace;->iconBuf:[I

    aget v0, v0, v11

    add-int/lit8 v10, v0, -0x1

    .line 408
    .local v10, "icon":I
    if-ltz v10, :cond_8

    sget-object v0, Lcom/android/launcher2/MainIconDef;->packageStr:[[Ljava/lang/String;

    array-length v0, v0

    if-ge v10, v0, :cond_8

    .line 409
    if-gtz v7, :cond_6

    .line 412
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/LibWorkspace;->positionMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "freeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    check-cast v8, Ljava/util/List;

    .line 413
    .restart local v8    # "freeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v8, :cond_9

    .line 414
    sget v0, Lcom/android/launcher2/LibWorkspace;->cell_count_x:I

    sget v1, Lcom/android/launcher2/LibWorkspace;->cell_count_y:I

    mul-int v7, v0, v1

    .line 423
    :cond_5
    :goto_1
    if-eqz v7, :cond_4

    .line 425
    :cond_6
    sget v0, Lcom/android/launcher2/LibWorkspace;->cell_count_x:I

    sget v1, Lcom/android/launcher2/LibWorkspace;->cell_count_y:I

    mul-int/2addr v0, v1

    sub-int/2addr v0, v7

    sget v1, Lcom/android/launcher2/LibWorkspace;->cell_count_x:I

    rem-int v5, v0, v1

    .line 426
    .local v5, "posX":I
    sget v0, Lcom/android/launcher2/LibWorkspace;->cell_count_x:I

    sget v1, Lcom/android/launcher2/LibWorkspace;->cell_count_y:I

    mul-int/2addr v0, v1

    sub-int/2addr v0, v7

    sget v1, Lcom/android/launcher2/LibWorkspace;->cell_count_x:I

    div-int/2addr v0, v1

    sget v1, Lcom/android/launcher2/LibWorkspace;->cell_count_y:I

    rem-int v6, v0, v1

    .line 427
    .local v6, "posY":I
    if-eqz v8, :cond_7

    .line 428
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 429
    .local v12, "positon":I
    shr-int/lit8 v5, v12, 0x4

    .line 430
    and-int/lit8 v6, v12, 0xf

    .line 431
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 433
    .end local v12    # "positon":I
    :cond_7
    iget-boolean v0, p0, Lcom/android/launcher2/LibWorkspace;->addWorkspaceIcon:Z

    if-eqz v0, :cond_a

    .line 434
    sget-object v13, Lcom/android/launcher2/LibWorkspace;->mFavo:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher2/DefaultWorkspace$Favorite;

    sget-object v1, Lcom/android/launcher2/MainIconDef;->packageStr:[[Ljava/lang/String;

    aget-object v1, v1, v10

    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 435
    sget-object v1, Lcom/android/launcher2/MainIconDef;->packageStr:[[Ljava/lang/String;

    aget-object v1, v1, v10

    const/4 v3, 0x1

    aget-object v3, v1, v3

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/DefaultWorkspace$Favorite;-><init>(Lcom/android/launcher2/DefaultWorkspace;Ljava/lang/String;Ljava/lang/String;III)V

    .line 434
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    :goto_2
    add-int/lit8 v7, v7, -0x1

    .line 444
    if-nez v7, :cond_8

    .line 445
    add-int/lit8 v4, v4, 0x1

    .line 405
    .end local v5    # "posX":I
    .end local v6    # "posY":I
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 418
    :cond_9
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 419
    if-nez v7, :cond_5

    .line 420
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 439
    .restart local v5    # "posX":I
    .restart local v6    # "posY":I
    :cond_a
    sget-object v13, Lcom/android/launcher2/LibWorkspace;->mAllAppsFavo:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher2/DefaultWorkspace$Favorite;

    sget-object v1, Lcom/android/launcher2/MainIconDef;->packageStr:[[Ljava/lang/String;

    aget-object v1, v1, v10

    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 440
    sget-object v1, Lcom/android/launcher2/MainIconDef;->packageStr:[[Ljava/lang/String;

    aget-object v1, v1, v10

    const/4 v3, 0x1

    aget-object v3, v1, v3

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/DefaultWorkspace$Favorite;-><init>(Lcom/android/launcher2/DefaultWorkspace;Ljava/lang/String;Ljava/lang/String;III)V

    .line 439
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public setupAllapp(Lcom/android/launcher2/BubbleTextView;I)V
    .locals 13
    .param p1, "allapp"    # Lcom/android/launcher2/BubbleTextView;
    .param p2, "pos"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 82
    if-eqz p1, :cond_2

    if-ltz p2, :cond_2

    .line 83
    iput-object p1, p0, Lcom/android/launcher2/LibWorkspace;->mAllAppBtn:Landroid/view/View;

    .line 85
    iget-object v8, p0, Lcom/android/launcher2/LibWorkspace;->mLauncher:Lcom/android/launcher2/Launcher;

    if-eqz v8, :cond_2

    .line 86
    iget-object v8, p0, Lcom/android/launcher2/LibWorkspace;->mLauncher:Lcom/android/launcher2/Launcher;

    sget v9, Lcom/android/launcher/R$id;->qsb_bar:I

    invoke-virtual {v8, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 87
    .local v5, "qsbbar":Landroid/view/View;
    if-eqz v5, :cond_1

    .line 88
    sget v8, Lcom/android/launcher/R$id;->allapps_button:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 89
    .local v1, "apps":Landroid/view/View;
    iget-object v8, p0, Lcom/android/launcher2/LibWorkspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 90
    .local v6, "res":Landroid/content/res/Resources;
    sget v8, Lcom/android/launcher/R$integer;->allapptext:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 91
    .local v0, "allapptext":I
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 92
    check-cast v1, Landroid/widget/TextView;

    .line 93
    .end local v1    # "apps":Landroid/view/View;
    sget v8, Lcom/android/launcher/R$string;->all_apps_button_label:I

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    .line 95
    :cond_0
    iget-object v8, p0, Lcom/android/launcher2/LibWorkspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    .line 97
    .local v2, "hotseat":Lcom/android/launcher2/Hotseat;
    new-array v4, v12, [I

    .line 98
    .local v4, "position":[I
    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    .line 99
    .local v3, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v3, v4}, Lcom/android/launcher2/CellLayout;->getLocationInWindow([I)V

    .line 100
    const-string v8, "Workspace"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "position x = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v10, v4, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " y = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 101
    const/4 v10, 0x1

    aget v10, v4, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 100
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-array v7, v12, [I

    .line 103
    .local v7, "tmp":[I
    invoke-virtual {v3, p2, v11, v7}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 104
    aget v8, v4, v11

    aget v9, v7, v11

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setX(F)V

    .line 107
    .end local v0    # "allapptext":I
    .end local v2    # "hotseat":Lcom/android/launcher2/Hotseat;
    .end local v3    # "layout":Lcom/android/launcher2/CellLayout;
    .end local v4    # "position":[I
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "tmp":[I
    :cond_1
    const-string v8, ""

    invoke-virtual {p1, v8}, Lcom/android/launcher2/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .end local v5    # "qsbbar":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public setupViews(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .param p1, "launcher"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/launcher2/LibWorkspace;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 79
    return-void
.end method

.method public startIconActivity(I)V
    .locals 6
    .param p1, "iconId"    # I

    .prologue
    .line 499
    if-ltz p1, :cond_0

    sget-object v4, Lcom/android/launcher2/MainIconDef;->packageStr:[[Ljava/lang/String;

    array-length v4, v4

    if-ge p1, v4, :cond_0

    .line 501
    :try_start_0
    sget-object v4, Lcom/android/launcher2/MainIconDef;->packageStr:[[Ljava/lang/String;

    aget-object v4, v4, p1

    const/4 v5, 0x0

    aget-object v3, v4, v5

    .line 502
    .local v3, "packageName":Ljava/lang/String;
    sget-object v4, Lcom/android/launcher2/MainIconDef;->packageStr:[[Ljava/lang/String;

    aget-object v4, v4, p1

    const/4 v5, 0x1

    aget-object v0, v4, v5

    .line 503
    .local v0, "className":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 504
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x14000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 505
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 506
    sget-object v4, Lcom/android/launcher2/LibWorkspace;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    .end local v0    # "className":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 507
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
