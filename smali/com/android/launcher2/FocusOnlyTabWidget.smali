.class public Lcom/android/launcher2/FocusOnlyTabWidget;
.super Landroid/widget/TabWidget;
.source "FocusOnlyTabWidget.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method


# virtual methods
.method public getChildTabIndex(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getTabCount()I

    move-result v1

    .line 50
    .local v1, "tabCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 55
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 51
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v2, p1, :cond_0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSelectedTab()Landroid/view/View;
    .locals 4

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getTabCount()I

    move-result v0

    .line 39
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 45
    const/4 v2, 0x0

    :cond_0
    return-object v2

    .line 40
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 41
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 81
    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getTabCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getSelectedTab()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 85
    :cond_0
    return-void
.end method

.method public setCurrentTabToFocusedTab()V
    .locals 6

    .prologue
    .line 59
    const/4 v3, 0x0

    .line 60
    .local v3, "tab":Landroid/view/View;
    const/4 v2, -0x1

    .line 61
    .local v2, "index":I
    invoke-virtual {p0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getTabCount()I

    move-result v0

    .line 62
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 70
    :goto_1
    const/4 v5, -0x1

    if-le v2, v5, :cond_0

    .line 71
    invoke-super {p0, v2}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 72
    const/4 v5, 0x1

    invoke-super {p0, v3, v5}, Landroid/widget/TabWidget;->onFocusChange(Landroid/view/View;Z)V

    .line 74
    :cond_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    .line 64
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 65
    move-object v3, v4

    .line 66
    move v2, v1

    .line 67
    goto :goto_1

    .line 62
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public superOnFocusChange(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Landroid/widget/TabWidget;->onFocusChange(Landroid/view/View;Z)V

    .line 77
    return-void
.end method
