.class Lcom/android/launcher2/WallpaperChooserDialogFragment$2;
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
    iput-object p1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$2;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 224
    iget-object v1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$2;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    iget-object v1, v1, Lcom/android/launcher2/WallpaperChooserDialogFragment;->monIndicator:Lcom/android/customview/MonIndicator;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/customview/MonIndicator;->setVisibility(I)V

    .line 225
    iget-object v1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$2;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 226
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 227
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 228
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 231
    :cond_0
    return-void
.end method
