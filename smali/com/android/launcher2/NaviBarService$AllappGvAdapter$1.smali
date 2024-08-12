.class Lcom/android/launcher2/NaviBarService$AllappGvAdapter$1;
.super Ljava/lang/Object;
.source "NaviBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/NaviBarService$AllappGvAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/NaviBarService$AllappGvAdapter;

.field private final synthetic val$appDrawable:Landroid/graphics/drawable/Drawable;

.field private final synthetic val$className:Ljava/lang/String;

.field private final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher2/NaviBarService$AllappGvAdapter;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/NaviBarService$AllappGvAdapter$1;->this$1:Lcom/android/launcher2/NaviBarService$AllappGvAdapter;

    iput-object p2, p0, Lcom/android/launcher2/NaviBarService$AllappGvAdapter$1;->val$appDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/launcher2/NaviBarService$AllappGvAdapter$1;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/launcher2/NaviBarService$AllappGvAdapter$1;->val$className:Ljava/lang/String;

    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 791
    iget-object v1, p0, Lcom/android/launcher2/NaviBarService$AllappGvAdapter$1;->val$appDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 793
    iget-object v1, p0, Lcom/android/launcher2/NaviBarService$AllappGvAdapter$1;->val$packageName:Ljava/lang/String;

    sput-object v1, Lcom/android/launcher2/NaviBarService;->strPackageName:Ljava/lang/String;

    .line 794
    iget-object v1, p0, Lcom/android/launcher2/NaviBarService$AllappGvAdapter$1;->val$className:Ljava/lang/String;

    sput-object v1, Lcom/android/launcher2/NaviBarService;->strPackageClassName:Ljava/lang/String;

    .line 799
    :goto_0
    sget-object v1, Lcom/android/launcher2/NaviBarService;->strPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher2/NaviBarService;->strPackageClassName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 800
    :cond_0
    const-string v1, ""

    sput-object v1, Lcom/android/launcher2/NaviBarService;->strPackageName:Ljava/lang/String;

    .line 801
    const-string v1, ""

    sput-object v1, Lcom/android/launcher2/NaviBarService;->strPackageClassName:Ljava/lang/String;

    .line 803
    :cond_1
    sget-object v1, Lcom/android/launcher2/NaviBarService;->strPackageName:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 804
    const-string v1, ""

    sput-object v1, Lcom/android/launcher2/NaviBarService;->strPackageName:Ljava/lang/String;

    .line 806
    :cond_2
    sget-object v1, Lcom/android/launcher2/NaviBarService;->strPackageClassName:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 807
    const-string v1, ""

    sput-object v1, Lcom/android/launcher2/NaviBarService;->strPackageClassName:Ljava/lang/String;

    .line 810
    :cond_3
    sget-object v1, Lcom/android/launcher2/NaviBarService;->strPackageName:Ljava/lang/String;

    .line 811
    sget-object v2, Lcom/android/launcher2/NaviBarService;->strPackageClassName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher2/NaviBarService$AllappGvAdapter$1;->this$1:Lcom/android/launcher2/NaviBarService$AllappGvAdapter;

    invoke-static {v3}, Lcom/android/launcher2/NaviBarService$AllappGvAdapter;->access$0(Lcom/android/launcher2/NaviBarService$AllappGvAdapter;)Lcom/android/launcher2/NaviBarService;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/NaviBarService;->access$3(Lcom/android/launcher2/NaviBarService;)Landroid/widget/ImageView;

    move-result-object v3

    .line 810
    invoke-static {v1, v2, v3}, Lcom/android/launcher2/MyWorkspace;->setAppDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 812
    sget-object v1, Lcom/android/launcher2/NaviBarService;->strPackageName:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/NaviBarService;->strPackageClassName:Ljava/lang/String;

    .line 813
    iget-object v3, p0, Lcom/android/launcher2/NaviBarService$AllappGvAdapter$1;->this$1:Lcom/android/launcher2/NaviBarService$AllappGvAdapter;

    invoke-static {v3}, Lcom/android/launcher2/NaviBarService$AllappGvAdapter;->access$0(Lcom/android/launcher2/NaviBarService$AllappGvAdapter;)Lcom/android/launcher2/NaviBarService;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/NaviBarService;->access$4(Lcom/android/launcher2/NaviBarService;)Landroid/widget/TextView;

    move-result-object v3

    .line 812
    invoke-static {v1, v2, v3}, Lcom/android/launcher2/MyWorkspace;->setAppName(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)V

    .line 815
    sget-object v1, Lcom/android/launcher2/NaviBarService;->share:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 816
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "btnPackage"

    sget-object v2, Lcom/android/launcher2/NaviBarService;->strPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 817
    const-string v1, "btnClassName"

    sget-object v2, Lcom/android/launcher2/NaviBarService;->strPackageClassName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 818
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 819
    iget-object v1, p0, Lcom/android/launcher2/NaviBarService$AllappGvAdapter$1;->this$1:Lcom/android/launcher2/NaviBarService$AllappGvAdapter;

    invoke-static {v1}, Lcom/android/launcher2/NaviBarService$AllappGvAdapter;->access$0(Lcom/android/launcher2/NaviBarService$AllappGvAdapter;)Lcom/android/launcher2/NaviBarService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/NaviBarService;->wm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/launcher2/NaviBarService$AllappGvAdapter$1;->this$1:Lcom/android/launcher2/NaviBarService$AllappGvAdapter;

    invoke-static {v2}, Lcom/android/launcher2/NaviBarService$AllappGvAdapter;->access$0(Lcom/android/launcher2/NaviBarService$AllappGvAdapter;)Lcom/android/launcher2/NaviBarService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher2/NaviBarService;->AddIconLayout:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 820
    iget-object v1, p0, Lcom/android/launcher2/NaviBarService$AllappGvAdapter$1;->this$1:Lcom/android/launcher2/NaviBarService$AllappGvAdapter;

    invoke-static {v1}, Lcom/android/launcher2/NaviBarService$AllappGvAdapter;->access$0(Lcom/android/launcher2/NaviBarService$AllappGvAdapter;)Lcom/android/launcher2/NaviBarService;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/launcher2/NaviBarService;->IsShowGrid:Z

    .line 825
    return-void

    .line 796
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/NaviBarService$AllappGvAdapter$1;->this$1:Lcom/android/launcher2/NaviBarService$AllappGvAdapter;

    invoke-static {v1}, Lcom/android/launcher2/NaviBarService$AllappGvAdapter;->access$0(Lcom/android/launcher2/NaviBarService$AllappGvAdapter;)Lcom/android/launcher2/NaviBarService;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/NaviBarService;->access$3(Lcom/android/launcher2/NaviBarService;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02000a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 797
    iget-object v1, p0, Lcom/android/launcher2/NaviBarService$AllappGvAdapter$1;->this$1:Lcom/android/launcher2/NaviBarService$AllappGvAdapter;

    invoke-static {v1}, Lcom/android/launcher2/NaviBarService$AllappGvAdapter;->access$0(Lcom/android/launcher2/NaviBarService$AllappGvAdapter;)Lcom/android/launcher2/NaviBarService;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/NaviBarService;->access$3(Lcom/android/launcher2/NaviBarService;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method
