.class public Lcom/android/launcher2/WeatherView;
.super Landroid/widget/RelativeLayout;
.source "WeatherView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherView"


# instance fields
.field private bUserdefBg:Z

.field private mBtnRefresh:Landroid/widget/Button;

.field private mCityId:Ljava/lang/String;

.field private mCityTxt:Landroid/widget/TextView;

.field private final mCityTxtId:I

.field private final mCurTempId:I

.field private mCurrentTemp:Landroid/widget/TextView;

.field private final mIconId:I

.field private final mRefreshId:I

.field private final mTempId:I

.field private final mTypeTextId:I

.field private mUpdateTxt:Landroid/widget/TextView;

.field private final mUpdateTxtId:I

.field private mWeatherData:Lcom/forfan/carassist/WeatherData;

.field private mWeatherImage:Landroid/widget/ImageView;

.field mWeatherReciver:Landroid/content/BroadcastReceiver;

.field private mWeatherService:Lcom/forfan/carassist/IWeatherService;

.field private mWeatherTemp:Landroid/widget/TextView;

.field private mWeatherType:Landroid/widget/TextView;

.field private m_Context:Landroid/content/Context;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private weatherSconn:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/WeatherView;->bUserdefBg:Z

    .line 166
    new-instance v2, Lcom/android/launcher2/WeatherView$1;

    invoke-direct {v2, p0}, Lcom/android/launcher2/WeatherView$1;-><init>(Lcom/android/launcher2/WeatherView;)V

    iput-object v2, p0, Lcom/android/launcher2/WeatherView;->weatherSconn:Landroid/content/ServiceConnection;

    .line 195
    new-instance v2, Lcom/android/launcher2/WeatherView$2;

    invoke-direct {v2, p0}, Lcom/android/launcher2/WeatherView$2;-><init>(Lcom/android/launcher2/WeatherView;)V

    iput-object v2, p0, Lcom/android/launcher2/WeatherView;->mWeatherReciver:Landroid/content/BroadcastReceiver;

    .line 237
    new-instance v2, Lcom/android/launcher2/WeatherView$3;

    invoke-direct {v2, p0}, Lcom/android/launcher2/WeatherView$3;-><init>(Lcom/android/launcher2/WeatherView;)V

    iput-object v2, p0, Lcom/android/launcher2/WeatherView;->receiver:Landroid/content/BroadcastReceiver;

    .line 81
    iput-object p1, p0, Lcom/android/launcher2/WeatherView;->m_Context:Landroid/content/Context;

    .line 82
    sget-object v2, Lcom/android/launcher/R$styleable;->WeatherView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v2, "weather_image"

    invoke-direct {p0, v0, v4, v2}, Lcom/android/launcher2/WeatherView;->getViewId(Landroid/content/res/TypedArray;ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/WeatherView;->mIconId:I

    .line 85
    const/4 v2, 0x3

    const-string v3, "weather_txt"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher2/WeatherView;->getViewId(Landroid/content/res/TypedArray;ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/WeatherView;->mTypeTextId:I

    .line 86
    const/4 v2, 0x4

    const-string v3, "temperature_txt"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher2/WeatherView;->getViewId(Landroid/content/res/TypedArray;ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/WeatherView;->mTempId:I

    .line 87
    const/4 v2, 0x2

    const-string v3, "current_temp"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher2/WeatherView;->getViewId(Landroid/content/res/TypedArray;ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/WeatherView;->mCurTempId:I

    .line 88
    const/4 v2, 0x6

    const-string v3, "location_txt"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher2/WeatherView;->getViewId(Landroid/content/res/TypedArray;ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/WeatherView;->mCityTxtId:I

    .line 89
    const/4 v2, 0x7

    const-string v3, "update_time"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher2/WeatherView;->getViewId(Landroid/content/res/TypedArray;ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/WeatherView;->mUpdateTxtId:I

    .line 90
    const/4 v2, 0x5

    const-string v3, "btn_refresh"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher2/WeatherView;->getViewId(Landroid/content/res/TypedArray;ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/WeatherView;->mRefreshId:I

    .line 91
    const/16 v2, 0x8

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 92
    .local v1, "resId":I
    invoke-virtual {p0}, Lcom/android/launcher2/WeatherView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    sget v2, Lcom/android/launcher/R$drawable;->main_weather_sunny_bg:I

    if-eq v1, v2, :cond_0

    .line 94
    iput-boolean v4, p0, Lcom/android/launcher2/WeatherView;->bUserdefBg:Z

    .line 103
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher2/WeatherView;Lcom/forfan/carassist/IWeatherService;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/launcher2/WeatherView;->mWeatherService:Lcom/forfan/carassist/IWeatherService;

    return-void
.end method

.method static synthetic access$1(Lcom/android/launcher2/WeatherView;)Lcom/forfan/carassist/IWeatherService;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher2/WeatherView;->mWeatherService:Lcom/forfan/carassist/IWeatherService;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/launcher2/WeatherView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/launcher2/WeatherView;->mCityId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/android/launcher2/WeatherView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/launcher2/WeatherView;->mCityId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/launcher2/WeatherView;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/launcher2/WeatherView;->bindWeatherService()V

    return-void
.end method

.method private bindWeatherService()V
    .locals 4

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/android/launcher2/LibWorkspace;->WEATHER_SERVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v1, "com.android.launcher"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    iget-object v1, p0, Lcom/android/launcher2/WeatherView;->m_Context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher2/WeatherView;->weatherSconn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 164
    return-void
.end method

.method private getViewId(Landroid/content/res/TypedArray;ILjava/lang/String;)I
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "styleableId"    # I
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/android/launcher2/WeatherView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    :cond_0
    return v0

    .line 71
    :cond_1
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 72
    .local v0, "groupid":I
    if-nez v0, :cond_0

    .line 73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attribute is required and must refer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 74
    const-string v3, "to a valid child."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getWeatherIconByName(Ljava/lang/String;)I
    .locals 5
    .param p1, "weather"    # Ljava/lang/String;

    .prologue
    .line 268
    iget-object v2, p0, Lcom/android/launcher2/WeatherView;->m_Context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/launcher/R$drawable;->weather_icon_qing:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "packagename":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher2/WeatherView;->m_Context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "weather_icon_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 271
    .local v0, "imageId":I
    return v0
.end method

.method private registerScreenActionReceiver()V
    .locals 3

    .prologue
    .line 231
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 232
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/android/launcher2/WeatherView;->m_Context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher2/WeatherView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    return-void
.end method

.method private setupWeatherViews()V
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/android/launcher2/WeatherView;->mIconId:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WeatherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/WeatherView;->mWeatherImage:Landroid/widget/ImageView;

    .line 147
    iget v0, p0, Lcom/android/launcher2/WeatherView;->mTypeTextId:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WeatherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/WeatherView;->mWeatherType:Landroid/widget/TextView;

    .line 148
    iget v0, p0, Lcom/android/launcher2/WeatherView;->mCurTempId:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WeatherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/WeatherView;->mCurrentTemp:Landroid/widget/TextView;

    .line 149
    iget v0, p0, Lcom/android/launcher2/WeatherView;->mTempId:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WeatherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/WeatherView;->mWeatherTemp:Landroid/widget/TextView;

    .line 150
    iget v0, p0, Lcom/android/launcher2/WeatherView;->mCityTxtId:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WeatherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/WeatherView;->mCityTxt:Landroid/widget/TextView;

    .line 151
    iget v0, p0, Lcom/android/launcher2/WeatherView;->mUpdateTxtId:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WeatherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/WeatherView;->mUpdateTxt:Landroid/widget/TextView;

    .line 152
    iget v0, p0, Lcom/android/launcher2/WeatherView;->mRefreshId:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WeatherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher2/WeatherView;->mBtnRefresh:Landroid/widget/Button;

    .line 153
    iget-object v0, p0, Lcom/android/launcher2/WeatherView;->mBtnRefresh:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/launcher2/WeatherView;->mBtnRefresh:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 116
    invoke-virtual {p0}, Lcom/android/launcher2/WeatherView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const-string v0, "WeatherView"

    const-string v1, "!isInEditMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0}, Lcom/android/launcher2/WeatherView;->registerScreenActionReceiver()V

    .line 121
    invoke-virtual {p0}, Lcom/android/launcher2/WeatherView;->registWeatherReciver()V

    .line 123
    invoke-direct {p0}, Lcom/android/launcher2/WeatherView;->bindWeatherService()V

    .line 125
    invoke-direct {p0}, Lcom/android/launcher2/WeatherView;->setupWeatherViews()V

    .line 127
    invoke-virtual {p0}, Lcom/android/launcher2/WeatherView;->updateWeatherDisplay()V

    .line 129
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/WeatherView;->mRefreshId:I

    if-ne v1, v2, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/launcher2/WeatherView;->mWeatherService:Lcom/forfan/carassist/IWeatherService;

    if-eqz v1, :cond_0

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/WeatherView;->mWeatherService:Lcom/forfan/carassist/IWeatherService;

    iget-object v2, p0, Lcom/android/launcher2/WeatherView;->mCityId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/forfan/carassist/IWeatherService;->getWeatherByCityId(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 133
    const-string v0, "WeatherView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/launcher2/WeatherView;->m_Context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher2/WeatherView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    iget-object v0, p0, Lcom/android/launcher2/WeatherView;->m_Context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher2/WeatherView;->mWeatherReciver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 136
    iget-object v0, p0, Lcom/android/launcher2/WeatherView;->m_Context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher2/WeatherView;->weatherSconn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 138
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 139
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "WeatherView"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 110
    return-void
.end method

.method registWeatherReciver()V
    .locals 3

    .prologue
    .line 190
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.ts.weather.WEATHER_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.ts.weather.GET_WEATHER_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/android/launcher2/WeatherView;->m_Context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher2/WeatherView;->mWeatherReciver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    return-void
.end method

.method protected updateWeatherDisplay()V
    .locals 18

    .prologue
    .line 275
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WeatherView;->mWeatherService:Lcom/forfan/carassist/IWeatherService;

    if-eqz v14, :cond_6

    .line 277
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WeatherView;->mWeatherService:Lcom/forfan/carassist/IWeatherService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/WeatherView;->mCityId:Ljava/lang/String;

    invoke-interface {v14, v15}, Lcom/forfan/carassist/IWeatherService;->getWeatherList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 278
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/forfan/carassist/WeatherData;>;"
    if-eqz v5, :cond_6

    .line 279
    const/4 v4, 0x0

    .line 280
    .local v4, "index":I
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 281
    .local v12, "tmpTime":Landroid/text/format/Time;
    invoke-virtual {v12}, Landroid/text/format/Time;->setToNow()V

    .line 282
    new-instance v6, Ljava/util/Date;

    iget v14, v12, Landroid/text/format/Time;->year:I

    add-int/lit16 v14, v14, -0x76c

    iget v15, v12, Landroid/text/format/Time;->month:I

    iget v0, v12, Landroid/text/format/Time;->monthDay:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v6, v14, v15, v0}, Ljava/util/Date;-><init>(III)V

    .line 283
    .local v6, "now":Ljava/util/Date;
    const-wide/16 v8, -0x1

    .line 284
    .local v8, "timeDistance":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-lt v3, v14, :cond_7

    .line 302
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/forfan/carassist/WeatherData;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/launcher2/WeatherView;->mWeatherData:Lcom/forfan/carassist/WeatherData;

    .line 303
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WeatherView;->mCityTxt:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/WeatherView;->mWeatherData:Lcom/forfan/carassist/WeatherData;

    iget-object v15, v15, Lcom/forfan/carassist/WeatherData;->city:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WeatherView;->mWeatherTemp:Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 305
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WeatherView;->mWeatherTemp:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WeatherView;->mWeatherData:Lcom/forfan/carassist/WeatherData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/forfan/carassist/WeatherData;->lowtemp:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "~"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WeatherView;->mWeatherData:Lcom/forfan/carassist/WeatherData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/forfan/carassist/WeatherData;->hightemp:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\u2103"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WeatherView;->mWeatherType:Landroid/widget/TextView;

    if-eqz v14, :cond_1

    .line 308
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WeatherView;->mWeatherType:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/WeatherView;->mWeatherData:Lcom/forfan/carassist/WeatherData;

    iget-object v15, v15, Lcom/forfan/carassist/WeatherData;->weatherStr:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/WeatherView;->bUserdefBg:Z

    if-nez v14, :cond_2

    .line 312
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WeatherView;->mWeatherData:Lcom/forfan/carassist/WeatherData;

    iget-object v14, v14, Lcom/forfan/carassist/WeatherData;->weatherStr:Ljava/lang/String;

    const-string v15, "\u96ea"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 313
    sget v14, Lcom/android/launcher/R$drawable;->main_weather_snowy_bg:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/WeatherView;->setBackgroundResource(I)V

    .line 327
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WeatherView;->mCurrentTemp:Landroid/widget/TextView;

    if-eqz v14, :cond_4

    .line 328
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WeatherView;->mWeatherData:Lcom/forfan/carassist/WeatherData;

    iget-object v14, v14, Lcom/forfan/carassist/WeatherData;->curTemp:Ljava/lang/String;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WeatherView;->mWeatherData:Lcom/forfan/carassist/WeatherData;

    iget-object v14, v14, Lcom/forfan/carassist/WeatherData;->curTemp:Ljava/lang/String;

    const-string v15, "null"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 329
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WeatherView;->mCurrentTemp:Landroid/widget/TextView;

    const-string v15, "--\u2103"

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WeatherView;->mUpdateTxt:Landroid/widget/TextView;

    if-eqz v14, :cond_5

    .line 336
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WeatherView;->mUpdateTxt:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/WeatherView;->mWeatherData:Lcom/forfan/carassist/WeatherData;

    iget-object v15, v15, Lcom/forfan/carassist/WeatherData;->updateTime:Ljava/lang/String;

    const/16 v16, 0x5

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WeatherView;->mWeatherImage:Landroid/widget/ImageView;

    if-eqz v14, :cond_6

    .line 339
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WeatherView;->mWeatherData:Lcom/forfan/carassist/WeatherData;

    iget-object v14, v14, Lcom/forfan/carassist/WeatherData;->weather:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/launcher2/WeatherView;->getWeatherIconByName(Ljava/lang/String;)I

    move-result v7

    .line 340
    .local v7, "resId":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WeatherView;->mWeatherImage:Landroid/widget/ImageView;

    invoke-virtual {v14, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 348
    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/forfan/carassist/WeatherData;>;"
    .end local v6    # "now":Ljava/util/Date;
    .end local v7    # "resId":I
    .end local v8    # "timeDistance":J
    .end local v12    # "tmpTime":Landroid/text/format/Time;
    :cond_6
    :goto_3
    return-void

    .line 285
    .restart local v3    # "i":I
    .restart local v4    # "index":I
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/forfan/carassist/WeatherData;>;"
    .restart local v6    # "now":Ljava/util/Date;
    .restart local v8    # "timeDistance":J
    .restart local v12    # "tmpTime":Landroid/text/format/Time;
    :cond_7
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/forfan/carassist/WeatherData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 287
    .local v13, "weatherData":Lcom/forfan/carassist/WeatherData;
    :try_start_1
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v15, "yyyy-MM-dd"

    invoke-direct {v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v15, v13, Lcom/forfan/carassist/WeatherData;->date:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 288
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    sub-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v10

    .line 289
    .local v10, "tmp":J
    if-nez v3, :cond_8

    .line 290
    move-wide v8, v10

    .line 292
    :cond_8
    cmp-long v14, v10, v8

    if-gtz v14, :cond_9

    .line 293
    move v4, v3

    .line 294
    move-wide v8, v10

    .line 284
    .end local v1    # "date":Ljava/util/Date;
    .end local v10    # "tmp":J
    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 296
    :catch_0
    move-exception v2

    .line 298
    .local v2, "e":Ljava/text/ParseException;
    :try_start_2
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 343
    .end local v2    # "e":Ljava/text/ParseException;
    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/forfan/carassist/WeatherData;>;"
    .end local v6    # "now":Ljava/util/Date;
    .end local v8    # "timeDistance":J
    .end local v12    # "tmpTime":Landroid/text/format/Time;
    .end local v13    # "weatherData":Lcom/forfan/carassist/WeatherData;
    :catch_1
    move-exception v2

    .line 345
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 315
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v3    # "i":I
    .restart local v4    # "index":I
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/forfan/carassist/WeatherData;>;"
    .restart local v6    # "now":Ljava/util/Date;
    .restart local v8    # "timeDistance":J
    .restart local v12    # "tmpTime":Landroid/text/format/Time;
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WeatherView;->mWeatherData:Lcom/forfan/carassist/WeatherData;

    iget-object v14, v14, Lcom/forfan/carassist/WeatherData;->weatherStr:Ljava/lang/String;

    const-string v15, "\u96e8"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 316
    sget v14, Lcom/android/launcher/R$drawable;->main_weather_rainy_bg:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/WeatherView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 318
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WeatherView;->mWeatherData:Lcom/forfan/carassist/WeatherData;

    iget-object v14, v14, Lcom/forfan/carassist/WeatherData;->weatherStr:Ljava/lang/String;

    const-string v15, "\u9634"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 319
    sget v14, Lcom/android/launcher/R$drawable;->main_weather_cloudy_bg:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/WeatherView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 322
    :cond_c
    sget v14, Lcom/android/launcher/R$drawable;->main_weather_sunny_bg:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/WeatherView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 331
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WeatherView;->mCurrentTemp:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WeatherView;->mWeatherData:Lcom/forfan/carassist/WeatherData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/forfan/carassist/WeatherData;->curTemp:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "\u2103"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2
.end method
