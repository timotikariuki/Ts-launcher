.class Lcom/android/launcher2/Launcher$22;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->runNewAppsAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/Launcher$22;->this$0:Lcom/android/launcher2/Launcher;

    .line 4312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 6
    .param p1, "a"    # Landroid/view/View;
    .param p2, "b"    # Landroid/view/View;

    .prologue
    .line 4315
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 4316
    .local v0, "alp":Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 4317
    .local v1, "blp":Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v2

    .line 4318
    .local v2, "cellCountX":I
    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    mul-int/2addr v3, v2

    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    add-int/2addr v3, v4

    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    mul-int/2addr v4, v2

    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    return v3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Launcher$22;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
