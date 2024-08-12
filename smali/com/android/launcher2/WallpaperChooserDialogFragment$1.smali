.class Lcom/android/launcher2/WallpaperChooserDialogFragment$1;
.super Ljava/lang/Object;
.source "WallpaperChooserDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/WallpaperChooserDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/WallpaperChooserDialogFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$1;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$1;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    iget-object v2, v1, Lcom/android/launcher2/WallpaperChooserDialogFragment;->wpm:Landroid/app/WallpaperManager;

    iget-object v1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$1;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-static {v1}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->access$0(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$1;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    iget v3, v3, Lcom/android/launcher2/WallpaperChooserDialogFragment;->selection:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/app/WallpaperManager;->setResource(I)V

    .line 211
    iget-object v1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$1;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    iget-object v1, v1, Lcom/android/launcher2/WallpaperChooserDialogFragment;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$1;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    iget-object v2, v2, Lcom/android/launcher2/WallpaperChooserDialogFragment;->handlerRun:Ljava/lang/Runnable;

    const-wide/16 v3, 0x9c4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
