.class Lcom/android/launcher2/PageViewAnimation$ZInterpolator;
.super Ljava/lang/Object;
.source "PageViewAnimation.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PageViewAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZInterpolator"
.end annotation


# instance fields
.field private focalLength:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "foc"    # F

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput p1, p0, Lcom/android/launcher2/PageViewAnimation$ZInterpolator;->focalLength:F

    .line 448
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 451
    iget v0, p0, Lcom/android/launcher2/PageViewAnimation$ZInterpolator;->focalLength:F

    iget v1, p0, Lcom/android/launcher2/PageViewAnimation$ZInterpolator;->focalLength:F

    add-float/2addr v1, p1

    div-float/2addr v0, v1

    sub-float v0, v3, v0

    .line 452
    iget v1, p0, Lcom/android/launcher2/PageViewAnimation$ZInterpolator;->focalLength:F

    iget v2, p0, Lcom/android/launcher2/PageViewAnimation$ZInterpolator;->focalLength:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    .line 451
    div-float/2addr v0, v1

    return v0
.end method
