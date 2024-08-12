.class Lcom/android/launcher2/AppsCustomizeAsyncTask;
.super Landroid/os/AsyncTask;
.source "AppsCustomizePagedView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/launcher2/AsyncTaskPageData;",
        "Ljava/lang/Void;",
        "Lcom/android/launcher2/AsyncTaskPageData;",
        ">;"
    }
.end annotation


# instance fields
.field dataType:Lcom/android/launcher2/AsyncTaskPageData$Type;

.field page:I

.field threadPriority:I


# direct methods
.method constructor <init>(ILcom/android/launcher2/AsyncTaskPageData$Type;)V
    .locals 1
    .param p1, "p"    # I
    .param p2, "ty"    # Lcom/android/launcher2/AsyncTaskPageData$Type;

    .prologue
    .line 141
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 142
    iput p1, p0, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/AppsCustomizeAsyncTask;->threadPriority:I

    .line 144
    iput-object p2, p0, Lcom/android/launcher2/AppsCustomizeAsyncTask;->dataType:Lcom/android/launcher2/AsyncTaskPageData$Type;

    .line 145
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/launcher2/AsyncTaskPageData;)Lcom/android/launcher2/AsyncTaskPageData;
    .locals 3
    .param p1, "params"    # [Lcom/android/launcher2/AsyncTaskPageData;

    .prologue
    const/4 v2, 0x0

    .line 148
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    .line 150
    :cond_0
    aget-object v0, p1, v2

    iget-object v0, v0, Lcom/android/launcher2/AsyncTaskPageData;->doInBackgroundCallback:Lcom/android/launcher2/AsyncTaskCallback;

    aget-object v1, p1, v2

    invoke-interface {v0, p0, v1}, Lcom/android/launcher2/AsyncTaskCallback;->run(Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V

    .line 151
    aget-object v0, p1, v2

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lcom/android/launcher2/AsyncTaskPageData;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->doInBackground([Lcom/android/launcher2/AsyncTaskPageData;)Lcom/android/launcher2/AsyncTaskPageData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/launcher2/AsyncTaskPageData;)V
    .locals 1
    .param p1, "result"    # Lcom/android/launcher2/AsyncTaskPageData;

    .prologue
    .line 156
    iget-object v0, p1, Lcom/android/launcher2/AsyncTaskPageData;->postExecuteCallback:Lcom/android/launcher2/AsyncTaskCallback;

    invoke-interface {v0, p0, p1}, Lcom/android/launcher2/AsyncTaskCallback;->run(Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V

    .line 157
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/android/launcher2/AsyncTaskPageData;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->onPostExecute(Lcom/android/launcher2/AsyncTaskPageData;)V

    return-void
.end method

.method setThreadPriority(I)V
    .locals 0
    .param p1, "p"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/android/launcher2/AppsCustomizeAsyncTask;->threadPriority:I

    .line 161
    return-void
.end method

.method syncThreadPriority()V
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/android/launcher2/AppsCustomizeAsyncTask;->threadPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 164
    return-void
.end method
