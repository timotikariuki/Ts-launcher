.class Lcom/android/launcher2/Launcher$4;
.super Landroid/os/AsyncTask;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->checkForLocaleChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/launcher2/Launcher$LocaleConfiguration;",
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
    iput-object p1, p0, Lcom/android/launcher2/Launcher$4;->this$0:Lcom/android/launcher2/Launcher;

    .line 795
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/launcher2/Launcher$LocaleConfiguration;
    .locals 2
    .param p1, "unused"    # [Ljava/lang/Void;

    .prologue
    .line 798
    new-instance v0, Lcom/android/launcher2/Launcher$LocaleConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher2/Launcher$LocaleConfiguration;-><init>(Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    .line 799
    .local v0, "localeConfiguration":Lcom/android/launcher2/Launcher$LocaleConfiguration;
    iget-object v1, p0, Lcom/android/launcher2/Launcher$4;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher2/Launcher;->access$9(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    .line 800
    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher$4;->doInBackground([Ljava/lang/Void;)Lcom/android/launcher2/Launcher$LocaleConfiguration;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 1
    .param p1, "result"    # Lcom/android/launcher2/Launcher$LocaleConfiguration;

    .prologue
    .line 805
    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$10(Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    .line 806
    iget-object v0, p0, Lcom/android/launcher2/Launcher$4;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$11(Lcom/android/launcher2/Launcher;)V

    .line 807
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher$4;->onPostExecute(Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    return-void
.end method
