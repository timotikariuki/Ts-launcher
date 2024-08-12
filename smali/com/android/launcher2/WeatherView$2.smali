.class Lcom/android/launcher2/WeatherView$2;
.super Landroid/content/BroadcastReceiver;
.source "WeatherView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/WeatherView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/WeatherView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/WeatherView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/WeatherView$2;->this$0:Lcom/android/launcher2/WeatherView;

    .line 195
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 199
    const-string v5, "WeatherView"

    const-string v6, "mWeatherReciver recived!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 201
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 202
    const-string v5, "type"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "type":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 227
    .end local v3    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 206
    .restart local v3    # "type":Ljava/lang/String;
    :cond_1
    const-string v5, "cityId"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 208
    const-string v5, "value"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "tmp":Ljava/lang/String;
    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/WeatherView$2;->this$0:Lcom/android/launcher2/WeatherView;

    invoke-static {v5}, Lcom/android/launcher2/WeatherView;->access$3(Lcom/android/launcher2/WeatherView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 210
    iget-object v5, p0, Lcom/android/launcher2/WeatherView$2;->this$0:Lcom/android/launcher2/WeatherView;

    invoke-static {v5, v2}, Lcom/android/launcher2/WeatherView;->access$2(Lcom/android/launcher2/WeatherView;Ljava/lang/String;)V

    .line 212
    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/WeatherView$2;->this$0:Lcom/android/launcher2/WeatherView;

    invoke-virtual {v5}, Lcom/android/launcher2/WeatherView;->updateWeatherDisplay()V

    .line 214
    .end local v2    # "tmp":Ljava/lang/String;
    :cond_3
    const-string v5, "WeatherResult"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 215
    const-string v5, "CityId"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "cityId":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/launcher2/WeatherView$2;->this$0:Lcom/android/launcher2/WeatherView;

    invoke-static {v5}, Lcom/android/launcher2/WeatherView;->access$3(Lcom/android/launcher2/WeatherView;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher2/WeatherView$2;->this$0:Lcom/android/launcher2/WeatherView;

    invoke-static {v5}, Lcom/android/launcher2/WeatherView;->access$3(Lcom/android/launcher2/WeatherView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 217
    const-string v5, "Result"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 218
    .local v4, "value":Z
    if-eqz v4, :cond_4

    .line 219
    iget-object v5, p0, Lcom/android/launcher2/WeatherView$2;->this$0:Lcom/android/launcher2/WeatherView;

    invoke-virtual {v5}, Lcom/android/launcher2/WeatherView;->updateWeatherDisplay()V

    .line 223
    .end local v1    # "cityId":Ljava/lang/String;
    .end local v4    # "value":Z
    :cond_4
    const-string v5, "HistoryLoaded"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 224
    iget-object v5, p0, Lcom/android/launcher2/WeatherView$2;->this$0:Lcom/android/launcher2/WeatherView;

    invoke-virtual {v5}, Lcom/android/launcher2/WeatherView;->updateWeatherDisplay()V

    goto :goto_0
.end method
