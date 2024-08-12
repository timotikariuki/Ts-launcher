.class public Lcom/android/launcher2/TsImageView;
.super Landroid/widget/ImageView;
.source "TsImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/TsImageView$UserPaint;
    }
.end annotation


# instance fields
.field public m_UserPaint:Lcom/android/launcher2/TsImageView$UserPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/TsImageView;->m_UserPaint:Lcom/android/launcher2/TsImageView$UserPaint;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/TsImageView;->m_UserPaint:Lcom/android/launcher2/TsImageView$UserPaint;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/TsImageView;->m_UserPaint:Lcom/android/launcher2/TsImageView$UserPaint;

    .line 23
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 37
    iget-object v0, p0, Lcom/android/launcher2/TsImageView;->m_UserPaint:Lcom/android/launcher2/TsImageView$UserPaint;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/launcher2/TsImageView;->m_UserPaint:Lcom/android/launcher2/TsImageView$UserPaint;

    invoke-interface {v0, p1}, Lcom/android/launcher2/TsImageView$UserPaint;->userPaint(Landroid/graphics/Canvas;)V

    .line 41
    :cond_0
    return-void
.end method

.method public setUserPaint(Lcom/android/launcher2/TsImageView$UserPaint;)V
    .locals 0
    .param p1, "userPaint"    # Lcom/android/launcher2/TsImageView$UserPaint;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/launcher2/TsImageView;->m_UserPaint:Lcom/android/launcher2/TsImageView$UserPaint;

    .line 46
    return-void
.end method
