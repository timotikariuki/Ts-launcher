.class Lcom/android/launcher2/HotseatIconKeyEventListener;
.super Ljava/lang/Object;
.source "FocusHelper.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 59
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p1, p2, p3, v1}, Lcom/android/launcher2/FocusHelper;->handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z

    move-result v1

    return v1
.end method
