.class Lcom/android/launcher2/WallpaperChooserDialogFragment$3;
.super Ljava/lang/Object;
.source "WallpaperChooserDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/WallpaperChooserDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

.field private final synthetic val$gallery:Landroid/widget/Gallery;


# direct methods
.method constructor <init>(Lcom/android/launcher2/WallpaperChooserDialogFragment;Landroid/widget/Gallery;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$3;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    iput-object p2, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$3;->val$gallery:Landroid/widget/Gallery;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$3;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    iget-object v1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$3;->val$gallery:Landroid/widget/Gallery;

    invoke-virtual {v1}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->access$6(Lcom/android/launcher2/WallpaperChooserDialogFragment;I)V

    .line 162
    return-void
.end method
