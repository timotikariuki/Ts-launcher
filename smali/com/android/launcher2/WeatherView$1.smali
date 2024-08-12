.class Lcom/android/launcher2/WeatherView$1;
.super Ljava/lang/Object;
.source "WeatherView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    iput-object p1, p0, Lcom/android/launcher2/WeatherView$1;->this$0:Lcom/android/launcher2/WeatherView;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 176
    const-string v1, "WeatherView"

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Lcom/android/launcher2/WeatherView$1;->this$0:Lcom/android/launcher2/WeatherView;

    invoke-static {p2}, Lcom/forfan/carassist/IWeatherService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/forfan/carassist/IWeatherService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher2/WeatherView;->access$0(Lcom/android/launcher2/WeatherView;Lcom/forfan/carassist/IWeatherService;)V

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/WeatherView$1;->this$0:Lcom/android/launcher2/WeatherView;

    iget-object v2, p0, Lcom/android/launcher2/WeatherView$1;->this$0:Lcom/android/launcher2/WeatherView;

    invoke-static {v2}, Lcom/android/launcher2/WeatherView;->access$1(Lcom/android/launcher2/WeatherView;)Lcom/forfan/carassist/IWeatherService;

    move-result-object v2

    invoke-interface {v2}, Lcom/forfan/carassist/IWeatherService;->getLMCityId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher2/WeatherView;->access$2(Lcom/android/launcher2/WeatherView;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/WeatherView$1;->this$0:Lcom/android/launcher2/WeatherView;

    invoke-virtual {v1}, Lcom/android/launcher2/WeatherView;->updateWeatherDisplay()V

    .line 185
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 170
    const-string v0, "WeatherView"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/launcher2/WeatherView$1;->this$0:Lcom/android/launcher2/WeatherView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher2/WeatherView;->access$0(Lcom/android/launcher2/WeatherView;Lcom/forfan/carassist/IWeatherService;)V

    .line 172
    return-void
.end method
