.class public Lcom/android/launcher2/PagedViewIcon;
.super Landroid/widget/TextView;
.source "PagedViewIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PagedViewIcon$PressedCallback;
    }
.end annotation


# static fields
.field private static final PRESS_ALPHA:F = 0.4f

.field private static final TAG:Ljava/lang/String; = "PagedViewIcon"


# instance fields
.field private mIcon:Landroid/graphics/Bitmap;

.field private mLockDrawableState:Z

.field private mPressedCallback:Lcom/android/launcher2/PagedViewIcon$PressedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedViewIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedViewIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewIcon;->mLockDrawableState:Z

    .line 56
    return-void
.end method


# virtual methods
.method public applyFromApplicationInfo(Lcom/android/launcher2/ApplicationInfo;ZLcom/android/launcher2/PagedViewIcon$PressedCallback;)V
    .locals 4
    .param p1, "info"    # Lcom/android/launcher2/ApplicationInfo;
    .param p2, "scaleUp"    # Z
    .param p3, "cb"    # Lcom/android/launcher2/PagedViewIcon$PressedCallback;

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v1, p1, Lcom/android/launcher2/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/launcher2/PagedViewIcon;->mIcon:Landroid/graphics/Bitmap;

    .line 61
    iput-object p3, p0, Lcom/android/launcher2/PagedViewIcon;->mPressedCallback:Lcom/android/launcher2/PagedViewIcon$PressedCallback;

    .line 64
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher/R$bool;->allapp_icon_text_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 65
    .local v0, "allappTextRight":Z
    if-eqz v0, :cond_0

    .line 66
    new-instance v1, Lcom/android/launcher2/FastBitmapDrawable;

    iget-object v2, p0, Lcom/android/launcher2/PagedViewIcon;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1, v3, v3, v3}, Lcom/android/launcher2/PagedViewIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 67
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewIcon;->setGravity(I)V

    .line 71
    :goto_0
    iget-object v1, p1, Lcom/android/launcher2/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewIcon;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewIcon;->setTag(Ljava/lang/Object;)V

    .line 73
    return-void

    .line 69
    :cond_0
    new-instance v1, Lcom/android/launcher2/FastBitmapDrawable;

    iget-object v2, p0, Lcom/android/launcher2/PagedViewIcon;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v3, v1, v3, v3}, Lcom/android/launcher2/PagedViewIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 94
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewIcon;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewIcon;->setAlpha(F)V

    .line 96
    iget-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mPressedCallback:Lcom/android/launcher2/PagedViewIcon$PressedCallback;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mPressedCallback:Lcom/android/launcher2/PagedViewIcon$PressedCallback;

    invoke-interface {v0, p0}, Lcom/android/launcher2/PagedViewIcon$PressedCallback;->iconPressed(Lcom/android/launcher2/PagedViewIcon;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewIcon;->mLockDrawableState:Z

    if-nez v0, :cond_0

    .line 100
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewIcon;->setAlpha(F)V

    goto :goto_0
.end method

.method public lockDrawableState()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewIcon;->mLockDrawableState:Z

    .line 77
    return-void
.end method

.method public resetDrawableState()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewIcon;->mLockDrawableState:Z

    .line 81
    new-instance v0, Lcom/android/launcher2/PagedViewIcon$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/PagedViewIcon$1;-><init>(Lcom/android/launcher2/PagedViewIcon;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewIcon;->post(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method
