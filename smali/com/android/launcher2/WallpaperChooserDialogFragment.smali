.class public Lcom/android/launcher2/WallpaperChooserDialogFragment;
.super Landroid/app/DialogFragment;
.source "WallpaperChooserDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/WallpaperChooserDialogFragment$ImageAdapter;,
        Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;,
        Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/DialogFragment;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final EMBEDDED_KEY:Ljava/lang/String; = "com.android.launcher2.WallpaperChooserDialogFragment.EMBEDDED_KEY"

.field private static final TAG:Ljava/lang/String; = "Launcher.WallpaperChooserDialogFragment"


# instance fields
.field handler:Landroid/os/Handler;

.field handlerRun:Ljava/lang/Runnable;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mEmbedded:Z

.field private mImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

.field private mThumbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperDrawable:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;

.field monIndicator:Lcom/android/customview/MonIndicator;

.field selection:I

.field threadRun:Ljava/lang/Runnable;

.field wpm:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mBitmap:Landroid/graphics/Bitmap;

    .line 70
    new-instance v0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;

    invoke-direct {v0}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mWallpaperDrawable:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->selection:I

    .line 204
    new-instance v0, Lcom/android/launcher2/WallpaperChooserDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment$1;-><init>(Lcom/android/launcher2/WallpaperChooserDialogFragment;)V

    iput-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->threadRun:Ljava/lang/Runnable;

    .line 219
    new-instance v0, Lcom/android/launcher2/WallpaperChooserDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment$2;-><init>(Lcom/android/launcher2/WallpaperChooserDialogFragment;)V

    iput-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->handlerRun:Ljava/lang/Runnable;

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mThumbs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/launcher2/WallpaperChooserDialogFragment;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$4(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mWallpaperDrawable:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/launcher2/WallpaperChooserDialogFragment;Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    return-void
.end method

.method static synthetic access$6(Lcom/android/launcher2/WallpaperChooserDialogFragment;I)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->selectWallpaper(I)V

    return-void
.end method

.method private addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V
    .locals 8
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "list"    # I

    .prologue
    .line 270
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "extras":[Ljava/lang/String;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 284
    return-void

    .line 271
    :cond_0
    aget-object v0, v1, v4

    .line 272
    .local v0, "extra":Ljava/lang/String;
    const-string v6, "drawable"

    invoke-virtual {p1, v0, v6, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 273
    .local v2, "res":I
    if-eqz v2, :cond_1

    .line 274
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_small"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 275
    const-string v7, "drawable"

    .line 274
    invoke-virtual {p1, v6, v7, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 277
    .local v3, "thumbRes":I
    if-eqz v3, :cond_1

    .line 278
    iget-object v6, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mThumbs:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v6, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .end local v3    # "thumbRes":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private cancelLoader()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    invoke-virtual {v0}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->cancel(Z)Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    .line 98
    :cond_0
    return-void
.end method

.method private findWallpapers()V
    .locals 4

    .prologue
    const/16 v3, 0x18

    .line 255
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mThumbs:Ljava/util/ArrayList;

    .line 256
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    .line 258
    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 263
    .local v1, "resources":Landroid/content/res/Resources;
    sget v2, Lcom/android/launcher/R$array;->wallpapers:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "packageName":Ljava/lang/String;
    sget v2, Lcom/android/launcher/R$array;->wallpapers:I

    invoke-direct {p0, v1, v0, v2}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 266
    sget v2, Lcom/android/launcher/R$array;->extra_wallpapers:I

    invoke-direct {p0, v1, v0, v2}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 267
    return-void
.end method

.method public static newInstance()Lcom/android/launcher2/WallpaperChooserDialogFragment;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-direct {v0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;-><init>()V

    .line 74
    .local v0, "fragment":Lcom/android/launcher2/WallpaperChooserDialogFragment;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->setCancelable(Z)V

    .line 75
    return-object v0
.end method

.method private selectWallpaper(I)V
    .locals 2
    .param p1, "position"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ServiceCast",
            "NewApi"
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 190
    const-string v1, "wallpaper"

    .line 189
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->wpm:Landroid/app/WallpaperManager;

    .line 192
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->handler:Landroid/os/Handler;

    .line 193
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->monIndicator:Lcom/android/customview/MonIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/customview/MonIndicator;->setVisibility(I)V

    .line 194
    iput p1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->selection:I

    .line 195
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->threadRun:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 202
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    if-eqz p1, :cond_0

    const-string v0, "com.android.launcher2.WallpaperChooserDialogFragment.EMBEDDED_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "com.android.launcher2.WallpaperChooserDialogFragment.EMBEDDED_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mEmbedded:Z

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->isInLayout()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mEmbedded:Z

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->findWallpapers()V

    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 140
    invoke-direct {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->findWallpapers()V

    .line 146
    iget-boolean v3, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mEmbedded:Z

    if-eqz v3, :cond_0

    .line 147
    sget v3, Lcom/android/launcher/R$layout;->wallpaper_chooser:I

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 148
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mWallpaperDrawable:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 150
    sget v3, Lcom/android/launcher/R$id;->monIndicator:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/customview/MonIndicator;

    iput-object v3, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->monIndicator:Lcom/android/customview/MonIndicator;

    .line 152
    sget v3, Lcom/android/launcher/R$id;->gallery:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    .line 153
    .local v0, "gallery":Landroid/widget/Gallery;
    invoke-virtual {v0, v4}, Landroid/widget/Gallery;->setCallbackDuringFling(Z)V

    .line 154
    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 155
    new-instance v3, Lcom/android/launcher2/WallpaperChooserDialogFragment$ImageAdapter;

    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/launcher2/WallpaperChooserDialogFragment$ImageAdapter;-><init>(Lcom/android/launcher2/WallpaperChooserDialogFragment;Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 157
    sget v3, Lcom/android/launcher/R$id;->set:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 158
    .local v1, "setButton":Landroid/view/View;
    new-instance v3, Lcom/android/launcher2/WallpaperChooserDialogFragment$3;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher2/WallpaperChooserDialogFragment$3;-><init>(Lcom/android/launcher2/WallpaperChooserDialogFragment;Landroid/widget/Gallery;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    .end local v0    # "gallery":Landroid/widget/Gallery;
    .end local v1    # "setButton":Landroid/view/View;
    .end local v2    # "view":Landroid/view/View;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 111
    invoke-direct {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->cancelLoader()V

    .line 112
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 104
    invoke-direct {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->cancelLoader()V

    .line 105
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 122
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 125
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->selectWallpaper(I)V

    .line 239
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    invoke-virtual {v0}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    invoke-virtual {v0}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->cancel()V

    .line 247
    :cond_0
    new-instance v0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    invoke-direct {v0, p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;-><init>(Lcom/android/launcher2/WallpaperChooserDialogFragment;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    iput-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    .line 248
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    const-string v0, "com.android.launcher2.WallpaperChooserDialogFragment.EMBEDDED_KEY"

    iget-boolean v1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mEmbedded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 91
    return-void
.end method
