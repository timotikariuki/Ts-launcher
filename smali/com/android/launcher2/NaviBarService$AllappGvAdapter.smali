.class Lcom/android/launcher2/NaviBarService$AllappGvAdapter;
.super Landroid/widget/BaseAdapter;
.source "NaviBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/NaviBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AllappGvAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/NaviBarService$AllappGvAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/launcher2/NaviBarService;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/NaviBarService;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 737
    iput-object p1, p0, Lcom/android/launcher2/NaviBarService$AllappGvAdapter;->this$0:Lcom/android/launcher2/NaviBarService;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 738
    iput-object p2, p0, Lcom/android/launcher2/NaviBarService$AllappGvAdapter;->context:Landroid/content/Context;

    .line 739
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher2/NaviBarService$AllappGvAdapter;)Lcom/android/launcher2/NaviBarService;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/launcher2/NaviBarService$AllappGvAdapter;->this$0:Lcom/android/launcher2/NaviBarService;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 743
    sget-object v0, Lcom/android/launcher2/MyWorkspace;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 749
    sget-object v0, Lcom/android/launcher2/MyWorkspace;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 754
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 760
    const-string v4, "hdd"

    const-string v5, "getView getView "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v2, 0x0

    .line 762
    .local v2, "holder":Lcom/android/launcher2/NaviBarService$AllappGvAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 763
    new-instance v2, Lcom/android/launcher2/NaviBarService$AllappGvAdapter$ViewHolder;

    .end local v2    # "holder":Lcom/android/launcher2/NaviBarService$AllappGvAdapter$ViewHolder;
    invoke-direct {v2, p0}, Lcom/android/launcher2/NaviBarService$AllappGvAdapter$ViewHolder;-><init>(Lcom/android/launcher2/NaviBarService$AllappGvAdapter;)V

    .line 764
    .restart local v2    # "holder":Lcom/android/launcher2/NaviBarService$AllappGvAdapter$ViewHolder;
    iget-object v4, p0, Lcom/android/launcher2/NaviBarService$AllappGvAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 765
    const v5, 0x7f04000f

    const/4 v6, 0x0

    .line 764
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 767
    const v4, 0x7f070039

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 766
    iput-object v4, v2, Lcom/android/launcher2/NaviBarService$AllappGvAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    .line 769
    const v4, 0x7f070038

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 768
    iput-object v4, v2, Lcom/android/launcher2/NaviBarService$AllappGvAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    .line 770
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 774
    :goto_0
    const-string v5, "hdd"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v4, "appname"

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/launcher2/MyWorkspace;->titleList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 775
    const-string v6, "---"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/android/launcher2/MyWorkspace;->data:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 774
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v5, v2, Lcom/android/launcher2/NaviBarService$AllappGvAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    sget-object v4, Lcom/android/launcher2/MyWorkspace;->drawableList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 777
    iget-object v5, v2, Lcom/android/launcher2/NaviBarService$AllappGvAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    sget-object v4, Lcom/android/launcher2/MyWorkspace;->titleList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    sget-object v4, Lcom/android/launcher2/MyWorkspace;->drawableList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 779
    .local v0, "appDrawable":Landroid/graphics/drawable/Drawable;
    sget-object v4, Lcom/android/launcher2/MyWorkspace;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ApplicationInfo;

    .line 780
    invoke-virtual {v4}, Lcom/android/launcher2/ApplicationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 781
    .local v3, "packageName":Ljava/lang/String;
    sget-object v4, Lcom/android/launcher2/MyWorkspace;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ApplicationInfo;

    iget-object v4, v4, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    .line 782
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 785
    .local v1, "className":Ljava/lang/String;
    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 786
    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 787
    new-instance v4, Lcom/android/launcher2/NaviBarService$AllappGvAdapter$1;

    invoke-direct {v4, p0, v0, v3, v1}, Lcom/android/launcher2/NaviBarService$AllappGvAdapter$1;-><init>(Lcom/android/launcher2/NaviBarService$AllappGvAdapter;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 828
    return-object p2

    .line 772
    .end local v0    # "appDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "className":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "holder":Lcom/android/launcher2/NaviBarService$AllappGvAdapter$ViewHolder;
    check-cast v2, Lcom/android/launcher2/NaviBarService$AllappGvAdapter$ViewHolder;

    .restart local v2    # "holder":Lcom/android/launcher2/NaviBarService$AllappGvAdapter$ViewHolder;
    goto/16 :goto_0
.end method
