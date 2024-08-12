.class Lcom/android/launcher2/CellLayout$CellAndSpan;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellAndSpan"
.end annotation


# instance fields
.field spanX:I

.field spanY:I

.field final synthetic this$0:Lcom/android/launcher2/CellLayout;

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Lcom/android/launcher2/CellLayout;)V
    .locals 0

    .prologue
    .line 2760
    iput-object p1, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2761
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/CellLayout;IIII)V
    .locals 0
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "spanX"    # I
    .param p5, "spanY"    # I

    .prologue
    .line 2770
    iput-object p1, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2771
    iput p2, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    .line 2772
    iput p3, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    .line 2773
    iput p4, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    .line 2774
    iput p5, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    .line 2775
    return-void
.end method


# virtual methods
.method public copy(Lcom/android/launcher2/CellLayout$CellAndSpan;)V
    .locals 1
    .param p1, "copy"    # Lcom/android/launcher2/CellLayout$CellAndSpan;

    .prologue
    .line 2764
    iget v0, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iput v0, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    .line 2765
    iget v0, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iput v0, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    .line 2766
    iget v0, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iput v0, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    .line 2767
    iget v0, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    iput v0, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    .line 2768
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2778
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
