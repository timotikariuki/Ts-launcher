.class public final Lcom/android/launcher2/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher2/LauncherModel$Callbacks;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Launcher$AppWidgetResetObserver;,
        Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;,
        Lcom/android/launcher2/Launcher$LauncherListener;,
        Lcom/android/launcher2/Launcher$LocaleConfiguration;,
        Lcom/android/launcher2/Launcher$PendingAddArguments;,
        Lcom/android/launcher2/Launcher$State;
    }
.end annotation


# static fields
.field static final APPWIDGET_HOST_ID:I = 0x400

.field private static final BACKGROUND:I = 0x2

.field static final DEBUG_STRICT_MODE:Z = false

.field static final DEBUG_WIDGETS:Z = false

.field static final DEFAULT_SCREEN:I = 0x2

.field private static final DISMISS_CLING_DURATION:I = 0xfa

.field static final DUMP_STATE_PROPERTY:Ljava/lang/String; = "launcher_dump_state"

.field private static final EXIT_SPRINGLOADED_MODE_LONG_TIMEOUT:I = 0x258

.field private static final EXIT_SPRINGLOADED_MODE_SHORT_TIMEOUT:I = 0x12c

.field static final EXTRA_SHORTCUT_DUPLICATE:Ljava/lang/String; = "duplicate"

.field static final FORCE_ENABLE_ROTATION_PROPERTY:Ljava/lang/String; = "launcher_force_rotate"

.field private static final IMAGE_RESOURCE:I = 0x1

.field static final INTENT_EXTRA_IGNORE_LAUNCH_ANIMATION:Ljava/lang/String; = "com.android.launcher.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

.field static final LOGD:Z = false

.field private static final MENU_GROUP_WALLPAPER:I = 0x1

.field private static final MENU_HELP:I = 0x5

.field private static final MENU_MANAGE_APPS:I = 0x3

.field private static final MENU_SYSTEM_SETTINGS:I = 0x4

.field private static final MENU_WALLPAPER_SETTINGS:I = 0x2

.field private static NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS:I = 0x0

.field private static final PREFERENCES:Ljava/lang/String; = "launcher.preferences"

.field static final PROFILE_STARTUP:Z = false

.field private static final REQUEST_BIND_APPWIDGET:I = 0xb

.field private static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field private static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field private static final REQUEST_PICK_APPLICATION:I = 0x6

.field private static final REQUEST_PICK_APPWIDGET:I = 0x9

.field private static final REQUEST_PICK_SHORTCUT:I = 0x7

.field private static final REQUEST_PICK_WALLPAPER:I = 0xa

.field private static final RUNTIME_STATE:Ljava/lang/String; = "launcher.state"

.field private static final RUNTIME_STATE_CURRENT_SCREEN:Ljava/lang/String; = "launcher.current_screen"

.field private static final RUNTIME_STATE_PENDING_ADD_CELL_X:Ljava/lang/String; = "launcher.add_cell_x"

.field private static final RUNTIME_STATE_PENDING_ADD_CELL_Y:Ljava/lang/String; = "launcher.add_cell_y"

.field private static final RUNTIME_STATE_PENDING_ADD_CONTAINER:Ljava/lang/String; = "launcher.add_container"

.field private static final RUNTIME_STATE_PENDING_ADD_SCREEN:Ljava/lang/String; = "launcher.add_screen"

.field private static final RUNTIME_STATE_PENDING_ADD_SPAN_X:Ljava/lang/String; = "launcher.add_span_x"

.field private static final RUNTIME_STATE_PENDING_ADD_SPAN_Y:Ljava/lang/String; = "launcher.add_span_y"

.field private static final RUNTIME_STATE_PENDING_ADD_WIDGET_INFO:Ljava/lang/String; = "launcher.add_widget_info"

.field private static final RUNTIME_STATE_PENDING_FOLDER_RENAME:Ljava/lang/String; = "launcher.rename_folder"

.field private static final RUNTIME_STATE_PENDING_FOLDER_RENAME_ID:Ljava/lang/String; = "launcher.rename_folder_id"

.field static SCREEN_COUNT:I = 0x0

.field private static final SHOW_CLING_DURATION:I = 0x226

.field static final TAG:Ljava/lang/String; = "Launcher"

.field private static final TEXT_DRAWABLE:I = 0x3

.field private static final TOOLBAR_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.launcher.toolbar_icon"

.field private static final TOOLBAR_SEARCH_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.launcher.toolbar_search_icon"

.field private static final TOOLBAR_VOICE_SEARCH_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.launcher.toolbar_voice_search_icon"

.field private static sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

.field static final sDumpLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sForceEnableRotation:Z

.field private static sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

.field private static sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

.field private static final sLock:Ljava/lang/Object;

.field private static sPausedFromUserAction:Z

.field private static sPendingAddList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/Launcher$PendingAddArguments;",
            ">;"
        }
    .end annotation
.end field

.field private static sScreen:I

.field private static sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;


# instance fields
.field private final ADVANCE_MSG:I

.field private launcherListener:Lcom/android/launcher2/Launcher$LauncherListener;

.field private final mAdvanceInterval:I

.field private final mAdvanceStagger:I

.field private mAllAppsButton:Landroid/view/View;

.field private mAppMarketIntent:Landroid/content/Intent;

.field private mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field public mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

.field private mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

.field private mAttached:Z

.field private mAutoAdvanceRunning:Z

.field private mAutoAdvanceSentTime:J

.field private mAutoAdvanceTimeLeft:J

.field private mBlackBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBuildLayersRunnable:Ljava/lang/Runnable;

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDividerAnimator:Landroid/animation/AnimatorSet;

.field private mDockDivider:Landroid/view/View;

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDragLayer:Lcom/android/launcher2/DragLayer;

.field private mFolderIconBitmap:Landroid/graphics/Bitmap;

.field private mFolderIconCanvas:Landroid/graphics/Canvas;

.field private mFolderIconImageView:Landroid/widget/ImageView;

.field private mFolderInfo:Lcom/android/launcher2/FolderInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mHideFromAccessibilityHelper:Lcom/android/launcher2/HideFromAccessibilityHelper;

.field private mHotseat:Lcom/android/launcher2/Hotseat;

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncherView:Landroid/view/View;

.field private mModel:Lcom/android/launcher2/LauncherModel;

.field private mNewShortcutAnimatePage:I

.field private mNewShortcutAnimateViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOnResumeNeedsLoad:Z

.field public mOnResumeState:Lcom/android/launcher2/Launcher$State;

.field private mPaused:Z

.field private mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

.field private mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private mQsbDivider:Landroid/view/View;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRectForFolderAnimation:Landroid/graphics/Rect;

.field private final mRestoreScreenOrientationDelay:I

.field private mRestoring:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field public mState:Lcom/android/launcher2/Launcher$State;

.field private mStateAnimation:Landroid/animation/AnimatorSet;

.field private final mSynchronouslyBoundPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpAddItemCellCoordinates:[I

.field private mUserPresent:Z

.field mViewCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mVisible:Z

.field private mWaitingForResult:Z

.field private mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWidgetObserver:Landroid/database/ContentObserver;

.field private mWidgetsToAdvance:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkspace:Lcom/android/launcher2/Workspace;

.field private mWorkspaceBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mWorkspaceLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 167
    const/4 v0, 0x5

    sput v0, Lcom/android/launcher2/Launcher;->SCREEN_COUNT:I

    .line 222
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->sLock:Ljava/lang/Object;

    .line 223
    sput v1, Lcom/android/launcher2/Launcher;->sScreen:I

    .line 226
    const/16 v0, 0xa

    sput v0, Lcom/android/launcher2/Launcher;->NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS:I

    .line 276
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/Launcher;->sPausedFromUserAction:Z

    .line 286
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    .line 306
    new-array v0, v1, [Landroid/graphics/drawable/Drawable$ConstantState;

    sput-object v0, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 307
    new-array v0, v1, [Landroid/graphics/drawable/Drawable$ConstantState;

    sput-object v0, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 308
    new-array v0, v1, [Landroid/graphics/drawable/Drawable$ConstantState;

    sput-object v0, Lcom/android/launcher2/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 343
    sput-object v0, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    .line 346
    const-string v0, "launcher_force_rotate"

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/Launcher;->sForceEnableRotation:Z

    .line 480
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 139
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 212
    sget-object v0, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 229
    new-instance v0, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0, v3}, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 230
    new-instance v0, Lcom/android/launcher2/Launcher$AppWidgetResetObserver;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$AppWidgetResetObserver;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 244
    new-instance v0, Lcom/android/launcher2/ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher2/ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    .line 247
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 257
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceRunning:Z

    .line 264
    sget-object v0, Lcom/android/launcher2/Launcher$State;->NONE:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    .line 266
    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 268
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    .line 270
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 282
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    .line 283
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    .line 284
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 290
    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    .line 293
    iput v1, p0, Lcom/android/launcher2/Launcher;->ADVANCE_MSG:I

    .line 294
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/launcher2/Launcher;->mAdvanceInterval:I

    .line 295
    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/launcher2/Launcher;->mAdvanceStagger:I

    .line 297
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceTimeLeft:J

    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    .line 303
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/launcher2/Launcher;->mRestoreScreenOrientationDelay:I

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    .line 323
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimatePage:I

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimateViews:Ljava/util/ArrayList;

    .line 328
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mRectForFolderAnimation:Landroid/graphics/Rect;

    .line 333
    new-instance v0, Lcom/android/launcher2/HideFromAccessibilityHelper;

    invoke-direct {v0}, Lcom/android/launcher2/HideFromAccessibilityHelper;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mHideFromAccessibilityHelper:Lcom/android/launcher2/HideFromAccessibilityHelper;

    .line 335
    new-instance v0, Lcom/android/launcher2/Launcher$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$1;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    .line 531
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mViewCache:Ljava/util/WeakHashMap;

    .line 1582
    new-instance v0, Lcom/android/launcher2/Launcher$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$2;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1693
    new-instance v0, Lcom/android/launcher2/Launcher$3;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$3;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    .line 139
    return-void
.end method

.method private acceptFilter()Z
    .locals 2

    .prologue
    .line 1162
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1161
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1163
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/launcher2/Launcher;Z)V
    .locals 0

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    return-void
.end method

.method static synthetic access$10(Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 0

    .prologue
    .line 286
    sput-object p0, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    return-void
.end method

.method static synthetic access$11(Lcom/android/launcher2/Launcher;)V
    .locals 0

    .prologue
    .line 793
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->checkForLocaleChange()V

    return-void
.end method

.method static synthetic access$12(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 0

    .prologue
    .line 870
    invoke-static {p0, p1}, Lcom/android/launcher2/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    return-void
.end method

.method static synthetic access$13(Lcom/android/launcher2/Launcher;IJILandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0

    .prologue
    .line 1498
    invoke-direct/range {p0 .. p6}, Lcom/android/launcher2/Launcher;->completeAddAppWidget(IJILandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    return-void
.end method

.method static synthetic access$14(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-object v0
.end method

.method static synthetic access$15(Lcom/android/launcher2/Launcher;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$16(Lcom/android/launcher2/Launcher;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/android/launcher2/Launcher;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 2835
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStep(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$18(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/SearchDropTargetBar;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    return-object v0
.end method

.method static synthetic access$19(Lcom/android/launcher2/Launcher;Landroid/view/View;ZZ)V
    .locals 0

    .prologue
    .line 2841
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$2(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/DragLayer;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    return-object v0
.end method

.method static synthetic access$20(Lcom/android/launcher2/Launcher;)Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$21(Lcom/android/launcher2/Launcher;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 2786
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Launcher;->setPivotsForZoom(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$22(Lcom/android/launcher2/Launcher;Landroid/view/View;ZZ)V
    .locals 0

    .prologue
    .line 2826
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$23(Lcom/android/launcher2/Launcher;Z)V
    .locals 0

    .prologue
    .line 4307
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->runNewAppsAnimation(Z)V

    return-void
.end method

.method static synthetic access$24(Lcom/android/launcher2/Launcher;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/launcher2/Launcher;)V
    .locals 0

    .prologue
    .line 1675
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    return-void
.end method

.method static synthetic access$4(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizeTabHost;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/ItemInfo;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    return-object v0
.end method

.method static synthetic access$6(Lcom/android/launcher2/Launcher;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/launcher2/Launcher;J)V
    .locals 0

    .prologue
    .line 1668
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Launcher;->sendAdvanceMessage(J)V

    return-void
.end method

.method static synthetic access$8(Lcom/android/launcher2/Launcher;)V
    .locals 0

    .prologue
    .line 2320
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$9(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 0

    .prologue
    .line 848
    invoke-static {p0, p1}, Lcom/android/launcher2/Launcher;->readConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    return-void
.end method

.method private canRunNewAppsAnimation()Z
    .locals 6

    .prologue
    .line 4296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v4}, Lcom/android/launcher2/DragController;->getLastGestureUpTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 4298
    .local v0, "diff":J
    iget v2, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimatePage:I

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    sget v2, Lcom/android/launcher2/Launcher;->NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkForLocaleChange()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 794
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    if-nez v9, :cond_1

    .line 795
    new-instance v9, Lcom/android/launcher2/Launcher$4;

    invoke-direct {v9, p0}, Lcom/android/launcher2/Launcher$4;-><init>(Lcom/android/launcher2/Launcher;)V

    new-array v10, v2, [Ljava/lang/Void;

    .line 808
    invoke-virtual {v9, v10}, Lcom/android/launcher2/Launcher$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 814
    .local v0, "configuration":Landroid/content/res/Configuration;
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iget-object v6, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 815
    .local v6, "previousLocale":Ljava/lang/String;
    iget-object v9, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 817
    .local v1, "locale":Ljava/lang/String;
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iget v7, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 818
    .local v7, "previousMcc":I
    iget v4, v0, Landroid/content/res/Configuration;->mcc:I

    .line 820
    .local v4, "mcc":I
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iget v8, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    .line 821
    .local v8, "previousMnc":I
    iget v5, v0, Landroid/content/res/Configuration;->mnc:I

    .line 823
    .local v5, "mnc":I
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-ne v4, v7, :cond_2

    if-ne v5, v8, :cond_2

    .line 825
    .local v2, "localeChanged":Z
    :goto_1
    if-eqz v2, :cond_0

    .line 826
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iput-object v1, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 827
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iput v4, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 828
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iput v5, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    .line 830
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v9}, Lcom/android/launcher2/IconCache;->flush()V

    .line 832
    sget-object v3, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    .line 833
    .local v3, "localeConfiguration":Lcom/android/launcher2/Launcher$LocaleConfiguration;
    new-instance v9, Lcom/android/launcher2/Launcher$5;

    const-string v10, "WriteLocaleConfiguration"

    invoke-direct {v9, p0, v10, v3}, Lcom/android/launcher2/Launcher$5;-><init>(Lcom/android/launcher2/Launcher;Ljava/lang/String;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    .line 838
    invoke-virtual {v9}, Lcom/android/launcher2/Launcher$5;->start()V

    goto :goto_0

    .line 823
    .end local v2    # "localeChanged":Z
    .end local v3    # "localeConfiguration":Lcom/android/launcher2/Launcher$LocaleConfiguration;
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private clearTypedText()V
    .locals 2

    .prologue
    .line 1201
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1202
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1203
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1207
    :goto_0
    return-void

    .line 1204
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private completeAdd(Lcom/android/launcher2/Launcher$PendingAddArguments;)Z
    .locals 8
    .param p1, "args"    # Lcom/android/launcher2/Launcher$PendingAddArguments;

    .prologue
    const/4 v5, 0x0

    .line 921
    const/4 v7, 0x0

    .line 922
    .local v7, "result":Z
    iget v0, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->requestCode:I

    packed-switch v0, :pswitch_data_0

    .line 947
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    .line 948
    return v7

    .line 924
    :pswitch_1
    iget-object v1, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v2, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->container:J

    iget v4, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->screen:I

    iget v5, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellX:I

    .line 925
    iget v6, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellY:I

    move-object v0, p0

    .line 924
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/Launcher;->completeAddApplication(Landroid/content/Intent;JIII)V

    goto :goto_0

    .line 928
    :pswitch_2
    iget-object v0, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->processShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 931
    :pswitch_3
    iget-object v1, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v2, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->container:J

    iget v4, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->screen:I

    iget v5, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellX:I

    .line 932
    iget v6, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellY:I

    move-object v0, p0

    .line 931
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Launcher;->completeAddShortcut(Landroid/content/Intent;JIII)V

    .line 933
    const/4 v7, 0x1

    .line 934
    goto :goto_0

    .line 936
    :pswitch_4
    iget-object v0, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    const-string v2, "appWidgetId"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 937
    .local v1, "appWidgetId":I
    iget-wide v2, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->container:J

    iget v4, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->screen:I

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Launcher;->completeAddAppWidget(IJILandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 938
    const/4 v7, 0x1

    .line 939
    goto :goto_0

    .line 922
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private completeAddAppWidget(IJILandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 30
    .param p1, "appWidgetId"    # I
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "hostView"    # Landroid/appwidget/AppWidgetHostView;
    .param p6, "appWidgetInfo"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 1500
    if-nez p6, :cond_0

    .line 1501
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p6

    .line 1505
    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/Launcher;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    .line 1507
    .local v4, "layout":Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v26

    .line 1508
    .local v26, "minSpanXY":[I
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v28

    .line 1513
    .local v28, "spanXY":[I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 1514
    .local v11, "cellXY":[I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-object v0, v5, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    move-object/from16 v29, v0

    .line 1515
    .local v29, "touchXY":[I
    const/4 v5, 0x2

    new-array v12, v5, [I

    .line 1516
    .local v12, "finalSpan":[I
    const/16 v25, 0x0

    .line 1517
    .local v25, "foundCellSpan":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v5, v5, Lcom/android/launcher2/ItemInfo;->cellX:I

    if-ltz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v5, v5, Lcom/android/launcher2/ItemInfo;->cellY:I

    if-ltz v5, :cond_2

    .line 1518
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v6, v6, Lcom/android/launcher2/ItemInfo;->cellX:I

    aput v6, v11, v5

    .line 1519
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v6, v6, Lcom/android/launcher2/ItemInfo;->cellY:I

    aput v6, v11, v5

    .line 1520
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v6, v6, Lcom/android/launcher2/ItemInfo;->spanX:I

    aput v6, v28, v5

    .line 1521
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v6, v6, Lcom/android/launcher2/ItemInfo;->spanY:I

    aput v6, v28, v5

    .line 1522
    const/16 v25, 0x1

    .line 1535
    :goto_0
    if-nez v25, :cond_5

    .line 1536
    const/4 v5, -0x1

    move/from16 v0, p1

    if-eq v0, v5, :cond_1

    .line 1539
    new-instance v5, Lcom/android/launcher2/Launcher$8;

    const-string v6, "deleteAppWidgetId"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v5, v0, v6, v1}, Lcom/android/launcher2/Launcher$8;-><init>(Lcom/android/launcher2/Launcher;Ljava/lang/String;I)V

    .line 1543
    invoke-virtual {v5}, Lcom/android/launcher2/Launcher$8;->start()V

    .line 1545
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage(Z)V

    .line 1580
    :goto_1
    return-void

    .line 1523
    :cond_2
    if-eqz v29, :cond_4

    .line 1526
    const/4 v5, 0x0

    aget v5, v29, v5

    const/4 v6, 0x1

    aget v6, v29, v6

    const/4 v7, 0x0

    aget v7, v26, v7

    const/4 v8, 0x1

    aget v8, v26, v8

    const/4 v9, 0x0

    aget v9, v28, v9

    .line 1527
    const/4 v10, 0x1

    aget v10, v28, v10

    .line 1525
    invoke-virtual/range {v4 .. v12}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIIII[I[I)[I

    move-result-object v27

    .line 1528
    .local v27, "result":[I
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v12, v6

    aput v6, v28, v5

    .line 1529
    const/4 v5, 0x1

    const/4 v6, 0x1

    aget v6, v12, v6

    aput v6, v28, v5

    .line 1530
    if-eqz v27, :cond_3

    const/16 v25, 0x1

    .line 1531
    :goto_2
    goto :goto_0

    .line 1530
    :cond_3
    const/16 v25, 0x0

    goto :goto_2

    .line 1532
    .end local v27    # "result":[I
    :cond_4
    const/4 v5, 0x0

    aget v5, v26, v5

    const/4 v6, 0x1

    aget v6, v26, v6

    invoke-virtual {v4, v11, v5, v6}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v25

    goto :goto_0

    .line 1550
    :cond_5
    new-instance v14, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 1551
    move-object/from16 v0, p6

    iget-object v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1550
    move/from16 v0, p1

    invoke-direct {v14, v0, v5}, Lcom/android/launcher2/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 1552
    .local v14, "launcherInfo":Lcom/android/launcher2/LauncherAppWidgetInfo;
    const/4 v5, 0x0

    aget v5, v28, v5

    iput v5, v14, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    .line 1553
    const/4 v5, 0x1

    aget v5, v28, v5

    iput v5, v14, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    .line 1554
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v5, v5, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    iput v5, v14, Lcom/android/launcher2/LauncherAppWidgetInfo;->minSpanX:I

    .line 1555
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v5, v5, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    iput v5, v14, Lcom/android/launcher2/LauncherAppWidgetInfo;->minSpanY:I

    .line 1558
    const/4 v5, 0x0

    aget v18, v11, v5

    const/4 v5, 0x1

    aget v19, v11, v5

    const/16 v20, 0x0

    move-object/from16 v13, p0

    move-wide/from16 v15, p2

    move/from16 v17, p4

    .line 1557
    invoke-static/range {v13 .. v20}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZ)V

    .line 1560
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v5, :cond_6

    .line 1561
    if-nez p5, :cond_7

    .line 1563
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v5

    iput-object v5, v14, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1564
    iget-object v5, v14, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v5, v0, v1}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 1570
    :goto_3
    iget-object v5, v14, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v5, v14}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1571
    iget-object v5, v14, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    .line 1572
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/launcher2/LauncherAppWidgetInfo;->notifyWidgetSizeChanged(Lcom/android/launcher2/Launcher;)V

    .line 1574
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v0, v14, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v16, v0

    const/4 v5, 0x0

    aget v20, v11, v5

    const/4 v5, 0x1

    aget v21, v11, v5

    .line 1575
    iget v0, v14, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    move/from16 v22, v0

    iget v0, v14, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v24

    move-wide/from16 v17, p2

    move/from16 v19, p4

    .line 1574
    invoke-virtual/range {v15 .. v24}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 1577
    iget-object v5, v14, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v5, v1}, Lcom/android/launcher2/Launcher;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 1579
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    goto/16 :goto_1

    .line 1567
    :cond_7
    move-object/from16 v0, p5

    iput-object v0, v14, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    goto :goto_3
.end method

.method private completeAddShortcut(Landroid/content/Intent;JIII)V
    .locals 26
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "cellX"    # I
    .param p6, "cellY"    # I

    .prologue
    .line 1410
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 1411
    .local v9, "cellXY":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-object v0, v4, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    move-object/from16 v25, v0

    .line 1412
    .local v25, "touchXY":[I
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/Launcher;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v8

    .line 1414
    .local v8, "layout":Lcom/android/launcher2/CellLayout;
    const/16 v22, 0x0

    .line 1416
    .local v22, "foundCellSpan":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1, v6}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v23

    .line 1417
    .local v23, "info":Lcom/android/launcher2/ShortcutInfo;
    if-nez v23, :cond_1

    .line 1458
    :cond_0
    :goto_0
    return-void

    .line 1420
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->createShortcut(Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v5

    .line 1423
    .local v5, "view":Landroid/view/View;
    if-ltz p5, :cond_2

    if-ltz p6, :cond_2

    .line 1424
    const/4 v4, 0x0

    aput p5, v9, v4

    .line 1425
    const/4 v4, 0x1

    aput p6, v9, v4

    .line 1426
    const/16 v22, 0x1

    .line 1429
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v10, 0x0

    .line 1430
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide/from16 v6, p2

    .line 1429
    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher2/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher2/CellLayout;[IFZLcom/android/launcher2/DragView;Ljava/lang/Runnable;)Z

    move-result v4

    .line 1430
    if-nez v4, :cond_0

    .line 1433
    new-instance v11, Lcom/android/launcher2/DropTarget$DragObject;

    invoke-direct {v11}, Lcom/android/launcher2/DropTarget$DragObject;-><init>()V

    .line 1434
    .local v11, "dragObject":Lcom/android/launcher2/DropTarget$DragObject;
    move-object/from16 v0, v23

    iput-object v0, v11, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 1435
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v10, 0x0

    .line 1436
    const/4 v12, 0x1

    move-object v7, v5

    .line 1435
    invoke-virtual/range {v6 .. v12}, Lcom/android/launcher2/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher2/CellLayout;[IFLcom/android/launcher2/DropTarget$DragObject;Z)Z

    move-result v4

    .line 1436
    if-nez v4, :cond_0

    .line 1447
    .end local v11    # "dragObject":Lcom/android/launcher2/DropTarget$DragObject;
    :goto_1
    if-nez v22, :cond_5

    .line 1448
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage(Z)V

    goto :goto_0

    .line 1439
    :cond_2
    if-eqz v25, :cond_4

    .line 1441
    const/4 v4, 0x0

    aget v13, v25, v4

    const/4 v4, 0x1

    aget v14, v25, v4

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object v12, v8

    move-object/from16 v17, v9

    invoke-virtual/range {v12 .. v17}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v24

    .line 1442
    .local v24, "result":[I
    if-eqz v24, :cond_3

    const/16 v22, 0x1

    .line 1443
    :goto_2
    goto :goto_1

    .line 1442
    :cond_3
    const/16 v22, 0x0

    goto :goto_2

    .line 1444
    .end local v24    # "result":[I
    :cond_4
    const/4 v4, 0x1

    const/4 v6, 0x1

    invoke-virtual {v8, v9, v4, v6}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v22

    goto :goto_1

    .line 1452
    :cond_5
    const/4 v4, 0x0

    aget v17, v9, v4

    const/4 v4, 0x1

    aget v18, v9, v4

    const/16 v19, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, v23

    move-wide/from16 v14, p2

    move/from16 v16, p4

    invoke-static/range {v12 .. v19}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZ)V

    .line 1454
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v4, :cond_0

    .line 1455
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v4, 0x0

    aget v17, v9, v4

    const/4 v4, 0x1

    aget v18, v9, v4

    const/16 v19, 0x1

    const/16 v20, 0x1

    .line 1456
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v21

    move-object v13, v5

    move-wide/from16 v14, p2

    move/from16 v16, p4

    .line 1455
    invoke-virtual/range {v12 .. v21}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    goto/16 :goto_0
.end method

.method private completeTwoStageWidgetDrop(II)V
    .locals 9
    .param p1, "resultCode"    # I
    .param p2, "appWidgetId"    # I

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v1, v1, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 1011
    .local v2, "cellLayout":Lcom/android/launcher2/CellLayout;
    const/4 v4, 0x0

    .line 1012
    .local v4, "onCompleteRunnable":Ljava/lang/Runnable;
    const/4 v5, 0x0

    .line 1014
    .local v5, "animationType":I
    const/4 v6, 0x0

    .line 1015
    .local v6, "boundWidget":Landroid/appwidget/AppWidgetHostView;
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1016
    const/4 v5, 0x3

    .line 1017
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 1018
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1017
    invoke-virtual {v0, p0, p2, v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v8

    .line 1019
    .local v8, "layout":Landroid/appwidget/AppWidgetHostView;
    move-object v6, v8

    .line 1020
    new-instance v4, Lcom/android/launcher2/Launcher$6;

    .end local v4    # "onCompleteRunnable":Ljava/lang/Runnable;
    invoke-direct {v4, p0, p2, v8, p1}, Lcom/android/launcher2/Launcher$6;-><init>(Lcom/android/launcher2/Launcher;ILandroid/appwidget/AppWidgetHostView;I)V

    .line 1039
    .end local v8    # "layout":Landroid/appwidget/AppWidgetHostView;
    .restart local v4    # "onCompleteRunnable":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher2/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1040
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    .line 1041
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v3}, Lcom/android/launcher2/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/DragView;

    .line 1042
    const/4 v7, 0x1

    .line 1040
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/Workspace;->animateWidgetDrop(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 1047
    :goto_1
    return-void

    .line 1029
    :cond_1
    if-nez p1, :cond_0

    .line 1030
    const/4 v5, 0x4

    .line 1031
    new-instance v4, Lcom/android/launcher2/Launcher$7;

    .end local v4    # "onCompleteRunnable":Ljava/lang/Runnable;
    invoke-direct {v4, p0, p1}, Lcom/android/launcher2/Launcher$7;-><init>(Lcom/android/launcher2/Launcher;I)V

    .restart local v4    # "onCompleteRunnable":Ljava/lang/Runnable;
    goto :goto_0

    .line 1045
    :cond_2
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private copyFolderIconToImage(Lcom/android/launcher2/FolderIcon;)V
    .locals 7
    .param p1, "fi"    # Lcom/android/launcher2/FolderIcon;

    .prologue
    .line 2556
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getMeasuredWidth()I

    move-result v3

    .line 2557
    .local v3, "width":I
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getMeasuredHeight()I

    move-result v0

    .line 2560
    .local v0, "height":I
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    if-nez v4, :cond_0

    .line 2561
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    .line 2563
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 2564
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v0, :cond_2

    .line 2565
    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    .line 2566
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconCanvas:Landroid/graphics/Canvas;

    .line 2570
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/DragLayer$LayoutParams;

    if-eqz v4, :cond_6

    .line 2571
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 2578
    .local v1, "lp":Lcom/android/launcher2/DragLayer$LayoutParams;
    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mRectForFolderAnimation:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, v5}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v2

    .line 2579
    .local v2, "scale":F
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/launcher2/DragLayer$LayoutParams;->customPosition:Z

    .line 2580
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mRectForFolderAnimation:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, v1, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    .line 2581
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mRectForFolderAnimation:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v1, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    .line 2582
    int-to-float v4, v3

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, v1, Lcom/android/launcher2/DragLayer$LayoutParams;->width:I

    .line 2583
    int-to-float v4, v0

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, v1, Lcom/android/launcher2/DragLayer$LayoutParams;->height:I

    .line 2585
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconCanvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2586
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v4}, Lcom/android/launcher2/FolderIcon;->draw(Landroid/graphics/Canvas;)V

    .line 2587
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2588
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2589
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->getPivotXForIconAnimation()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 2590
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->getPivotYForIconAnimation()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 2594
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DragLayer;->indexOfChild(Landroid/view/View;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 2595
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DragLayer;->removeView(Landroid/view/View;)V

    .line 2597
    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v1}, Lcom/android/launcher2/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2598
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 2599
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->bringToFront()V

    .line 2601
    :cond_5
    return-void

    .line 2573
    .end local v1    # "lp":Lcom/android/launcher2/DragLayer$LayoutParams;
    .end local v2    # "scale":F
    :cond_6
    new-instance v1, Lcom/android/launcher2/DragLayer$LayoutParams;

    invoke-direct {v1, v3, v0}, Lcom/android/launcher2/DragLayer$LayoutParams;-><init>(II)V

    .restart local v1    # "lp":Lcom/android/launcher2/DragLayer$LayoutParams;
    goto/16 :goto_0
.end method

.method public static createThemeDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/StateListDrawable;
    .locals 23
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 401
    invoke-virtual/range {p0 .. p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v16

    .line 402
    .local v16, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static/range {v16 .. v16}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    .line 403
    .local v7, "attrs":Landroid/util/AttributeSet;
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v20

    add-int/lit8 v14, v20, 0x1

    .line 405
    .local v14, "innerDepth":I
    const/4 v9, 0x0

    .line 406
    .local v9, "drawable":Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    .local v18, "type":I
    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 407
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v20

    move/from16 v0, v20

    if-ge v0, v14, :cond_2

    .line 408
    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 456
    :cond_1
    return-object v9

    .line 410
    :cond_2
    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 414
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "item"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 417
    if-nez v9, :cond_3

    .line 418
    new-instance v9, Lcom/android/launcher2/ThemeStateListDrawable;

    .end local v9    # "drawable":Landroid/graphics/drawable/StateListDrawable;
    move/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/android/launcher2/ThemeStateListDrawable;-><init>(I)V

    .line 421
    .restart local v9    # "drawable":Landroid/graphics/drawable/StateListDrawable;
    :cond_3
    const/4 v4, 0x0

    .line 422
    .local v4, "StateListDrawableItem":[I
    const/4 v5, 0x0

    .line 424
    .local v5, "StateListDrawableItem_drawable":I
    :try_start_0
    const-string v20, "com.android.internal.R$styleable"

    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 425
    .local v8, "clasz":Ljava/lang/Class;
    const-string v20, "StateListDrawableItem"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 426
    .local v13, "field":Ljava/lang/reflect/Field;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 427
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, [I

    move-object v4, v0

    .line 429
    const-string v20, "StateListDrawableItem_drawable"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 430
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 431
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    .line 440
    .end local v8    # "clasz":Ljava/lang/Class;
    .end local v13    # "field":Ljava/lang/reflect/Field;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 441
    .local v6, "a":Landroid/content/res/TypedArray;
    new-instance v19, Landroid/util/TypedValue;

    invoke-direct/range {v19 .. v19}, Landroid/util/TypedValue;-><init>()V

    .line 442
    .local v19, "value":Landroid/util/TypedValue;
    move-object/from16 v0, v19

    invoke-virtual {v6, v5, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 443
    move-object/from16 v0, v19

    iget v10, v0, Landroid/util/TypedValue;->resourceId:I

    .line 444
    .local v10, "drawableId":I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 445
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v12

    .line 446
    .local v12, "entryName":Ljava/lang/String;
    const-string v20, "_night"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 447
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "_night"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 448
    const-string v21, "drawable"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v22

    .line 447
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 449
    .local v15, "newId":I
    if-lez v15, :cond_0

    .line 450
    invoke-static {v7}, Lcom/android/launcher2/Launcher;->extractStateSet(Landroid/util/AttributeSet;)[I

    move-result-object v17

    .line 451
    .local v17, "states":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 432
    .end local v6    # "a":Landroid/content/res/TypedArray;
    .end local v10    # "drawableId":I
    .end local v12    # "entryName":Ljava/lang/String;
    .end local v15    # "newId":I
    .end local v17    # "states":[I
    .end local v19    # "value":Landroid/util/TypedValue;
    :catch_0
    move-exception v11

    .line 433
    .local v11, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v11}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 434
    .end local v11    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v11

    .line 435
    .local v11, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v11}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 436
    .end local v11    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v11

    .line 437
    .local v11, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v11}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1
.end method

.method private dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;I)V
    .locals 5
    .param p1, "cling"    # Lcom/android/launcher2/Cling;
    .param p2, "flag"    # Ljava/lang/String;
    .param p3, "duration"    # I

    .prologue
    .line 4598
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/Cling;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 4599
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4600
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4601
    new-instance v1, Lcom/android/launcher2/Launcher$28;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher2/Launcher$28;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Cling;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4615
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 4616
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHideFromAccessibilityHelper:Lcom/android/launcher2/HideFromAccessibilityHelper;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/HideFromAccessibilityHelper;->restoreImportantForAccessibility(Landroid/view/View;)V

    .line 4618
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method

.method private dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 2842
    instance-of v0, p1, Lcom/android/launcher2/LauncherTransitionable;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 2843
    check-cast v0, Lcom/android/launcher2/LauncherTransitionable;

    invoke-interface {v0, p0, p2, p3}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionEnd(Lcom/android/launcher2/Launcher;ZZ)V

    .line 2847
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStep(Landroid/view/View;F)V

    .line 2848
    return-void
.end method

.method private dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 2821
    instance-of v0, p1, Lcom/android/launcher2/LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 2822
    check-cast p1, Lcom/android/launcher2/LauncherTransitionable;

    .end local p1    # "v":Landroid/view/View;
    invoke-interface {p1, p0, p2, p3}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionPrepare(Lcom/android/launcher2/Launcher;ZZ)V

    .line 2824
    :cond_0
    return-void
.end method

.method private dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 2827
    instance-of v0, p1, Lcom/android/launcher2/LauncherTransitionable;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 2828
    check-cast v0, Lcom/android/launcher2/LauncherTransitionable;

    invoke-interface {v0, p0, p2, p3}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionStart(Lcom/android/launcher2/Launcher;ZZ)V

    .line 2832
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStep(Landroid/view/View;F)V

    .line 2833
    return-void
.end method

.method private dispatchOnLauncherTransitionStep(Landroid/view/View;F)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "t"    # F

    .prologue
    .line 2836
    instance-of v0, p1, Lcom/android/launcher2/LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 2837
    check-cast p1, Lcom/android/launcher2/LauncherTransitionable;

    .end local p1    # "v":Landroid/view/View;
    invoke-interface {p1, p0, p2}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionStep(Lcom/android/launcher2/Launcher;F)V

    .line 2839
    :cond_0
    return-void
.end method

.method public static dumpDebugLogsToConsole()V
    .locals 4

    .prologue
    .line 4738
    const-string v1, "Launcher"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4739
    const-string v1, "Launcher"

    const-string v2, "*********************"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4740
    const-string v1, "Launcher"

    const-string v2, "Launcher debug logs: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4741
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/launcher2/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 4744
    const-string v1, "Launcher"

    const-string v2, "*********************"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4745
    const-string v1, "Launcher"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4746
    return-void

    .line 4742
    :cond_0
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher2/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4741
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static extractStateSet(Landroid/util/AttributeSet;)[I
    .locals 7
    .param p0, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 460
    const/4 v1, 0x0

    .line 461
    .local v1, "j":I
    invoke-interface {p0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    .line 462
    .local v3, "numAttrs":I
    new-array v5, v3, [I

    .line 463
    .local v5, "states":[I
    const/4 v0, 0x0

    .local v0, "i":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 473
    invoke-static {v5, v2}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v5

    .line 474
    return-object v5

    .line 464
    :cond_0
    invoke-interface {p0, v0}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v4

    .line 465
    .local v4, "stateResId":I
    packed-switch v4, :pswitch_data_0

    .line 469
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    const/4 v6, 0x0

    invoke-interface {p0, v0, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v6

    if-eqz v6, :cond_1

    .end local v4    # "stateResId":I
    :goto_1
    aput v4, v5, v2

    .line 463
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    goto :goto_0

    .restart local v4    # "stateResId":I
    :pswitch_0
    move v1, v2

    .line 467
    .end local v2    # "j":I
    .restart local v1    # "j":I
    goto :goto_2

    .line 470
    :cond_1
    neg-int v4, v4

    goto :goto_1

    .line 465
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getCurrentOrientationIndexForGlobalIcons()I
    .locals 1

    .prologue
    .line 3771
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 3775
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3773
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3771
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private getExternalPackageToolbarIcon(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .param p2, "resourceName"    # Ljava/lang/String;

    .prologue
    .line 3781
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 3784
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    .line 3783
    invoke-virtual {v4, p1, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 3784
    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 3785
    .local v2, "metaData":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 3786
    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 3787
    .local v1, "iconResId":I
    if-eqz v1, :cond_0

    .line 3788
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v5

    .line 3789
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 3801
    .end local v1    # "iconResId":I
    .end local v2    # "metaData":Landroid/os/Bundle;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v6

    .line 3792
    :catch_0
    move-exception v0

    .line 3794
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "Launcher"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to load toolbar icon; "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3795
    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3794
    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3801
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 3796
    :catch_1
    move-exception v3

    .line 3798
    .local v3, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string v6, "Launcher"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to load toolbar icon from "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 1480
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II)[I

    move-result-object v0

    return-object v0
.end method

.method static getMinSpanForWidget(Landroid/content/Context;Lcom/android/launcher2/PendingAddWidgetInfo;)[I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/android/launcher2/PendingAddWidgetInfo;

    .prologue
    .line 1488
    iget-object v0, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    iget v1, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->minResizeWidth:I

    .line 1489
    iget v2, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->minResizeHeight:I

    .line 1488
    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II)[I

    move-result-object v0

    return-object v0
.end method

.method static getScreen()I
    .locals 2

    .prologue
    .line 905
    sget-object v1, Lcom/android/launcher2/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 906
    :try_start_0
    sget v0, Lcom/android/launcher2/Launcher;->sScreen:I

    monitor-exit v1

    return v0

    .line 905
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 1476
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II)[I

    move-result-object v0

    return-object v0
.end method

.method static getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II)[I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I

    .prologue
    const/4 v5, 0x0

    .line 1462
    invoke-static {p0, p1, v5}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1465
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/launcher/R$integer;->myiconback:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 1466
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int v2, v3, v4

    .line 1467
    .local v2, "requiredWidth":I
    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int v1, v3, v4

    .line 1468
    .local v1, "requiredHeight":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2, v1, v5}, Lcom/android/launcher2/CellLayout;->rectToCell(Landroid/content/res/Resources;II[I)[I

    move-result-object v3

    .line 1471
    .end local v1    # "requiredHeight":I
    .end local v2    # "requiredWidth":I
    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p2, p3, v5}, Lcom/android/launcher2/CellLayout;->rectToCell(Landroid/content/res/Resources;II[I)[I

    move-result-object v3

    goto :goto_0
.end method

.method static getSpanForWidget(Landroid/content/Context;Lcom/android/launcher2/PendingAddWidgetInfo;)[I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/android/launcher2/PendingAddWidgetInfo;

    .prologue
    .line 1484
    iget-object v0, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    iget v1, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->minWidth:I

    iget v2, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->minHeight:I

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II)[I

    move-result-object v0

    return-object v0
.end method

.method private static getStatusBarHeight(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 394
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 395
    .local v0, "resourceId":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private growAndFadeOutFolderIcon(Lcom/android/launcher2/FolderIcon;)V
    .locals 13
    .param p1, "fi"    # Lcom/android/launcher2/FolderIcon;

    .prologue
    const/high16 v10, 0x3fc00000    # 1.5f

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2604
    if-nez p1, :cond_0

    .line 2624
    :goto_0
    return-void

    .line 2605
    :cond_0
    const-string v7, "alpha"

    new-array v8, v12, [F

    const/4 v9, 0x0

    aput v9, v8, v11

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 2606
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const-string v7, "scaleX"

    new-array v8, v12, [F

    aput v10, v8, v11

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 2607
    .local v5, "scaleX":Landroid/animation/PropertyValuesHolder;
    const-string v7, "scaleY"

    new-array v8, v12, [F

    aput v10, v8, v11

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 2609
    .local v6, "scaleY":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/FolderInfo;

    .line 2610
    .local v2, "info":Lcom/android/launcher2/FolderInfo;
    iget-wide v7, v2, Lcom/android/launcher2/FolderInfo;->container:J

    const-wide/16 v9, -0x65

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    .line 2611
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 2612
    .local v1, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2613
    .local v3, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v8, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v1, v7, v8}, Lcom/android/launcher2/CellLayout;->setFolderLeaveBehindCell(II)V

    .line 2617
    .end local v1    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v3    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->copyFolderIconToImage(Lcom/android/launcher2/FolderIcon;)V

    .line 2618
    const/4 v7, 0x4

    invoke-virtual {p1, v7}, Lcom/android/launcher2/FolderIcon;->setVisibility(I)V

    .line 2620
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v8, v11

    .line 2621
    aput-object v5, v8, v12

    const/4 v9, 0x2

    aput-object v6, v8, v9

    .line 2620
    invoke-static {v7, v8}, Lcom/android/launcher2/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 2622
    .local v4, "oa":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/launcher/R$integer;->config_folderAnimDuration:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v4, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2623
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private handleFolderClick(Lcom/android/launcher2/FolderIcon;)V
    .locals 6
    .param p1, "folderIcon"    # Lcom/android/launcher2/FolderIcon;

    .prologue
    .line 2518
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getFolderInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v1

    .line 2519
    .local v1, "info":Lcom/android/launcher2/FolderInfo;
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Workspace;->getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher2/Folder;

    move-result-object v2

    .line 2523
    .local v2, "openFolder":Lcom/android/launcher2/Folder;
    iget-boolean v3, v1, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    .line 2524
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Folder info marked as open, but associated folder is not open. Screen: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2525
    iget v5, v1, Lcom/android/launcher2/FolderInfo;->screen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/launcher2/FolderInfo;->cellX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/launcher2/FolderInfo;->cellY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2524
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/launcher2/FolderInfo;->opened:Z

    .line 2529
    :cond_0
    iget-boolean v3, v1, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2531
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 2533
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->openFolder(Lcom/android/launcher2/FolderIcon;)V

    .line 2549
    :cond_1
    :goto_0
    return-void

    .line 2537
    :cond_2
    if-eqz v2, :cond_1

    .line 2538
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/Workspace;->getPageForView(Landroid/view/View;)I

    move-result v0

    .line 2540
    .local v0, "folderScreen":I
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)V

    .line 2541
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    if-eq v0, v3, :cond_1

    .line 2543
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 2545
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->openFolder(Lcom/android/launcher2/FolderIcon;)V

    goto :goto_0
.end method

.method private hideAppsCustomizeHelper(Lcom/android/launcher2/Launcher$State;ZZLjava/lang/Runnable;)V
    .locals 20
    .param p1, "toState"    # Lcom/android/launcher2/Launcher$State;
    .param p2, "animated"    # Z
    .param p3, "springLoaded"    # Z
    .param p4, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 3333
    new-instance v11, Landroid/content/Intent;

    const-string v2, "Allapp_backto_workspace"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3334
    .local v11, "intent_allapp_back":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 3336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 3337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3338
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 3340
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 3342
    .local v12, "res":Landroid/content/res/Resources;
    sget v2, Lcom/android/launcher/R$integer;->config_appsCustomizeZoomOutTime:I

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 3344
    .local v9, "duration":I
    sget v2, Lcom/android/launcher/R$integer;->config_appsCustomizeFadeOutTime:I

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 3346
    .local v10, "fadeOutDuration":I
    sget v2, Lcom/android/launcher/R$integer;->config_appsCustomizeZoomScaleFactor:I

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v14, v2

    .line 3347
    .local v14, "scaleFactor":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    .line 3348
    .local v4, "fromView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 3349
    .local v6, "toView":Landroid/view/View;
    const/16 v17, 0x0

    .line 3351
    .local v17, "workspaceAnim":Landroid/animation/Animator;
    sget-object v2, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 3352
    sget v2, Lcom/android/launcher/R$integer;->config_appsCustomizeWorkspaceAnimationStagger:I

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    .line 3353
    .local v15, "stagger":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 3354
    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    .line 3353
    move/from16 v0, p2

    invoke-virtual {v2, v3, v0, v15}, Lcom/android/launcher2/Workspace;->getChangeStateAnimation(Lcom/android/launcher2/Workspace$State;ZI)Landroid/animation/Animator;

    move-result-object v17

    .line 3360
    .end local v15    # "stagger":I
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14}, Lcom/android/launcher2/Launcher;->setPivotsForZoom(Landroid/view/View;F)V

    .line 3361
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    .line 3362
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->showHotseat(Z)V

    .line 3363
    if-eqz p2, :cond_4

    .line 3365
    new-instance v13, Lcom/android/launcher2/LauncherViewPropertyAnimator;

    invoke-direct {v13, v4}, Lcom/android/launcher2/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 3367
    .local v13, "scaleAnim":Lcom/android/launcher2/LauncherViewPropertyAnimator;
    invoke-virtual {v13, v14}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v2

    .line 3368
    int-to-long v0, v9

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 3369
    new-instance v3, Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    invoke-direct {v3}, Lcom/android/launcher2/Workspace$ZoomInInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3372
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v4, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 3373
    int-to-long v0, v10

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 3374
    .local v8, "alphaAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v8, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3375
    new-instance v2, Lcom/android/launcher2/Launcher$16;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v6}, Lcom/android/launcher2/Launcher$16;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v8, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3384
    invoke-static {}, Lcom/android/launcher2/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 3386
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 3387
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v6, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 3388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppsCustomizePagedView;->pauseScrolling()V

    .line 3390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    new-instance v2, Lcom/android/launcher2/Launcher$17;

    move-object/from16 v3, p0

    move/from16 v5, p2

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/Launcher$17;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;ZLandroid/view/View;Ljava/lang/Runnable;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v13, v3, v5

    const/4 v5, 0x1

    aput-object v8, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3409
    if-eqz v17, :cond_2

    .line 3410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 3412
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 3413
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v6, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 3414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v16, v0

    .line 3415
    .local v16, "stateAnimation":Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v3, Lcom/android/launcher2/Launcher$18;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v3, v0, v1}, Lcom/android/launcher2/Launcher$18;-><init>(Lcom/android/launcher2/Launcher;Landroid/animation/Animator;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 3505
    .end local v8    # "alphaAnim":Landroid/animation/ObjectAnimator;
    .end local v13    # "scaleAnim":Lcom/android/launcher2/LauncherViewPropertyAnimator;
    .end local v16    # "stateAnimation":Landroid/animation/Animator;
    :goto_1
    return-void

    .line 3355
    :cond_3
    sget-object v2, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 3356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 3357
    sget-object v3, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    .line 3356
    move/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher2/Workspace;->getChangeStateAnimation(Lcom/android/launcher2/Workspace$State;Z)Landroid/animation/Animator;

    move-result-object v17

    goto/16 :goto_0

    .line 3495
    :cond_4
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3496
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 3497
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 3498
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 3499
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v6, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 3500
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v6, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 3501
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v6, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 3502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->hideScrollingIndicator(Z)V

    goto :goto_1

    .line 3372
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initCling(I[IZI)Lcom/android/launcher2/Cling;
    .locals 6
    .param p1, "clingId"    # I
    .param p2, "positionData"    # [I
    .param p3, "animate"    # Z
    .param p4, "delay"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 4565
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Cling;

    .line 4566
    .local v0, "cling":Lcom/android/launcher2/Cling;
    if-eqz v0, :cond_0

    .line 4567
    invoke-virtual {v0, p0, p2}, Lcom/android/launcher2/Cling;->init(Lcom/android/launcher2/Launcher;[I)V

    .line 4568
    invoke-virtual {v0, v2}, Lcom/android/launcher2/Cling;->setVisibility(I)V

    .line 4569
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher2/Cling;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4570
    if-eqz p3, :cond_1

    .line 4571
    invoke-virtual {v0}, Lcom/android/launcher2/Cling;->buildLayer()V

    .line 4572
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Cling;->setAlpha(F)V

    .line 4573
    invoke-virtual {v0}, Lcom/android/launcher2/Cling;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 4574
    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 4575
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 4576
    const-wide/16 v4, 0x226

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 4577
    int-to-long v4, p4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 4578
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4582
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher2/Cling;->setFocusableInTouchMode(Z)V

    .line 4583
    new-instance v3, Lcom/android/launcher2/Launcher$27;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher2/Launcher$27;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Cling;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Cling;->post(Ljava/lang/Runnable;)Z

    .line 4589
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHideFromAccessibilityHelper:Lcom/android/launcher2/HideFromAccessibilityHelper;

    .line 4590
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    sget v5, Lcom/android/launcher/R$id;->all_apps_cling:I

    if-ne p1, v5, :cond_2

    .line 4589
    :goto_1
    invoke-virtual {v3, v4, v1}, Lcom/android/launcher2/HideFromAccessibilityHelper;->setImportantForAccessibilityToNo(Landroid/view/View;Z)V

    .line 4592
    :cond_0
    return-object v0

    .line 4580
    :cond_1
    invoke-virtual {v0, v5}, Lcom/android/launcher2/Cling;->setAlpha(F)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 4590
    goto :goto_1
.end method

.method private static intToState(I)Lcom/android/launcher2/Launcher$State;
    .locals 4
    .param p0, "stateOrdinal"    # I

    .prologue
    .line 1214
    sget-object v1, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    .line 1215
    .local v1, "state":Lcom/android/launcher2/Launcher$State;
    invoke-static {}, Lcom/android/launcher2/Launcher$State;->values()[Lcom/android/launcher2/Launcher$State;

    move-result-object v2

    .line 1216
    .local v2, "stateValues":[Lcom/android/launcher2/Launcher$State;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 1222
    :goto_1
    return-object v1

    .line 1217
    :cond_0
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher$State;->ordinal()I

    move-result v3

    if-ne v3, p0, :cond_1

    .line 1218
    aget-object v1, v2, v0

    .line 1219
    goto :goto_1

    .line 1216
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "container"    # Landroid/view/View;
    .param p2, "button"    # Landroid/view/View;

    .prologue
    .line 3863
    instance-of v2, p1, Lcom/android/launcher2/HolographicLinearLayout;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 3864
    check-cast v0, Lcom/android/launcher2/HolographicLinearLayout;

    .line 3865
    .local v0, "layout":Lcom/android/launcher2/HolographicLinearLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/HolographicLinearLayout;->invalidatePressedFocusedStates()V

    .line 3870
    .end local v0    # "layout":Lcom/android/launcher2/HolographicLinearLayout;
    :cond_0
    :goto_0
    return-void

    .line 3866
    :cond_1
    instance-of v2, p2, Lcom/android/launcher2/HolographicImageView;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 3867
    check-cast v1, Lcom/android/launcher2/HolographicImageView;

    .line 3868
    .local v1, "view":Lcom/android/launcher2/HolographicImageView;
    invoke-virtual {v1}, Lcom/android/launcher2/HolographicImageView;->invalidatePressedFocusedStates()V

    goto :goto_0
.end method

.method private isClingsEnabled()Z
    .locals 1

    .prologue
    .line 4557
    const/4 v0, 0x0

    return v0
.end method

.method private static isPropertyEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 358
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private mapConfigurationOriActivityInfoOri(I)I
    .locals 7
    .param p1, "configOri"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x2

    .line 4499
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4500
    .local v0, "d":Landroid/view/Display;
    const/4 v2, 0x2

    .line 4501
    .local v2, "naturalOri":I
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 4513
    :goto_0
    const/4 v6, 0x4

    new-array v3, v6, [I

    const/4 v6, 0x0

    .line 4516
    aput v4, v3, v6

    .line 4518
    const/16 v4, 0x9

    aput v4, v3, v5

    const/4 v4, 0x3

    .line 4519
    const/16 v6, 0x8

    .line 4515
    aput v6, v3, v4

    .line 4523
    .local v3, "oriMap":[I
    const/4 v1, 0x0

    .line 4524
    .local v1, "indexOffset":I
    if-ne v2, v5, :cond_0

    .line 4525
    const/4 v1, 0x1

    .line 4527
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    add-int/2addr v4, v1

    rem-int/lit8 v4, v4, 0x4

    aget v4, v3, v4

    return v4

    .line 4505
    .end local v1    # "indexOffset":I
    .end local v3    # "oriMap":[I
    :pswitch_0
    move v2, p1

    .line 4506
    goto :goto_0

    .line 4510
    :pswitch_1
    if-ne p1, v5, :cond_1

    move v2, v4

    :goto_1
    goto :goto_0

    :cond_1
    move v2, v5

    .line 4511
    goto :goto_1

    .line 4501
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onAppWidgetReset()V
    .locals 1

    .prologue
    .line 2321
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    if-eqz v0, :cond_0

    .line 2322
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    .line 2324
    :cond_0
    return-void
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configuration"    # Lcom/android/launcher2/Launcher$LocaleConfiguration;

    .prologue
    .line 849
    const/4 v0, 0x0

    .line 851
    .local v0, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    const-string v2, "launcher.preferences"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 852
    .end local v0    # "in":Ljava/io/DataInputStream;
    .local v1, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 853
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 854
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 860
    if-eqz v1, :cond_2

    .line 862
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v0, v1

    .line 868
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "in":Ljava/io/DataInputStream;
    :cond_0
    :goto_0
    return-void

    .line 855
    :catch_0
    move-exception v2

    .line 860
    :goto_1
    if-eqz v0, :cond_0

    .line 862
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 863
    :catch_1
    move-exception v2

    goto :goto_0

    .line 857
    :catch_2
    move-exception v2

    .line 860
    :goto_2
    if-eqz v0, :cond_0

    .line 862
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 863
    :catch_3
    move-exception v2

    goto :goto_0

    .line 859
    :catchall_0
    move-exception v2

    .line 860
    :goto_3
    if-eqz v0, :cond_1

    .line 862
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 867
    :cond_1
    :goto_4
    throw v2

    .line 863
    .end local v0    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "in":Ljava/io/DataInputStream;
    goto :goto_0

    :catch_5
    move-exception v3

    goto :goto_4

    .line 859
    .end local v0    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "in":Ljava/io/DataInputStream;
    goto :goto_3

    .line 857
    .end local v0    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "in":Ljava/io/DataInputStream;
    goto :goto_2

    .line 855
    .end local v0    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "in":Ljava/io/DataInputStream;
    goto :goto_1

    .end local v0    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :cond_2
    move-object v0, v1

    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "in":Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method private registerContentObservers()V
    .locals 4

    .prologue
    .line 2252
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2253
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    .line 2254
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 2253
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2255
    return-void
.end method

.method private removeCling(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 4621
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4622
    .local v0, "cling":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 4623
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 4624
    .local v1, "parent":Landroid/view/ViewGroup;
    new-instance v2, Lcom/android/launcher2/Launcher$29;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/launcher2/Launcher$29;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 4630
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHideFromAccessibilityHelper:Lcom/android/launcher2/HideFromAccessibilityHelper;

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/HideFromAccessibilityHelper;->restoreImportantForAccessibility(Landroid/view/View;)V

    .line 4632
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private resetAddInfo()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 2073
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 2074
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput v3, v0, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 2075
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput v3, v1, Lcom/android/launcher2/ItemInfo;->cellY:I

    iput v3, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 2076
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput v3, v1, Lcom/android/launcher2/ItemInfo;->spanY:I

    iput v3, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 2077
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput v3, v1, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    iput v3, v0, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    .line 2078
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    .line 2079
    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 1231
    sget-object v10, Lcom/android/launcher2/DefaultWorkspace;->mOnResumeAllapp:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1232
    sget-object v10, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    iput-object v10, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    .line 1233
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    sput-object v10, Lcom/android/launcher2/DefaultWorkspace;->mOnResumeAllapp:Ljava/lang/Boolean;

    .line 1235
    :cond_0
    const-string v10, "###"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "restoreState###"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    if-nez p1, :cond_2

    .line 1288
    :cond_1
    :goto_0
    return-void

    .line 1241
    :cond_2
    const-string v10, "launcher.state"

    sget-object v11, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    invoke-virtual {v11}, Lcom/android/launcher2/Launcher$State;->ordinal()I

    move-result v11

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/launcher2/Launcher;->intToState(I)Lcom/android/launcher2/Launcher$State;

    move-result-object v9

    .line 1242
    .local v9, "state":Lcom/android/launcher2/Launcher$State;
    sget-object v10, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v9, v10, :cond_3

    .line 1243
    sget-object v10, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    iput-object v10, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    .line 1246
    :cond_3
    const-string v10, "launcher.current_screen"

    const/4 v11, -0x1

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1247
    .local v2, "currentScreen":I
    const/4 v10, -0x1

    if-le v2, v10, :cond_4

    .line 1248
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10, v2}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 1251
    :cond_4
    const-string v10, "launcher.add_container"

    const-wide/16 v11, -0x1

    invoke-virtual {p1, v10, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 1252
    .local v5, "pendingAddContainer":J
    const-string v10, "launcher.add_screen"

    const/4 v11, -0x1

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 1254
    .local v7, "pendingAddScreen":I
    const-wide/16 v10, -0x1

    cmp-long v10, v5, v10

    if-eqz v10, :cond_5

    const/4 v10, -0x1

    if-le v7, v10, :cond_5

    .line 1255
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput-wide v5, v10, Lcom/android/launcher2/ItemInfo;->container:J

    .line 1256
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput v7, v10, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 1257
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const-string v11, "launcher.add_cell_x"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 1258
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const-string v11, "launcher.add_cell_y"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 1259
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const-string v11, "launcher.add_span_x"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 1260
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const-string v11, "launcher.add_span_y"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 1261
    const-string v10, "launcher.add_widget_info"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v10, p0, Lcom/android/launcher2/Launcher;->mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1262
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 1263
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    .line 1267
    :cond_5
    const-string v10, "launcher.rename_folder"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 1268
    .local v8, "renameFolder":Z
    if-eqz v8, :cond_6

    .line 1269
    const-string v10, "launcher.rename_folder_id"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1270
    .local v3, "id":J
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    sget-object v11, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v10, p0, v11, v3, v4}, Lcom/android/launcher2/LauncherModel;->getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/android/launcher2/FolderInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    .line 1271
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    .line 1276
    .end local v3    # "id":J
    :cond_6
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    if-eqz v10, :cond_1

    .line 1277
    const-string v10, "apps_customize_currentTab"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1278
    .local v0, "curTab":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 1279
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    .line 1280
    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v11, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getContentTypeForTabTag(Ljava/lang/String;)Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    move-result-object v11

    .line 1279
    invoke-virtual {v10, v11}, Lcom/android/launcher2/AppsCustomizeTabHost;->setContentTypeImmediate(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 1281
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    .line 1282
    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v11}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v11

    .line 1281
    invoke-virtual {v10, v11}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(I)V

    .line 1285
    :cond_7
    const-string v10, "apps_customize_currentIndex"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1286
    .local v1, "currentIndex":I
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v10, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->restorePageForIndex(I)V

    goto/16 :goto_0
.end method

.method private runNewAppsAnimation(Z)V
    .locals 12
    .param p1, "immediate"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 4308
    invoke-static {}, Lcom/android/launcher2/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 4309
    .local v0, "anim":Landroid/animation/AnimatorSet;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4312
    .local v2, "bounceAnims":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/animation/Animator;>;"
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimateViews:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/launcher2/Launcher$22;

    invoke-direct {v6, p0}, Lcom/android/launcher2/Launcher$22;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4323
    if-eqz p1, :cond_1

    .line 4324
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 4354
    :goto_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimatePage:I

    .line 4355
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 4356
    new-instance v5, Lcom/android/launcher2/Launcher$24;

    const-string v6, "clearNewAppsThread"

    invoke-direct {v5, p0, v6}, Lcom/android/launcher2/Launcher$24;-><init>(Lcom/android/launcher2/Launcher;Ljava/lang/String;)V

    .line 4363
    invoke-virtual {v5}, Lcom/android/launcher2/Launcher$24;->start()V

    .line 4364
    return-void

    .line 4324
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 4325
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4, v9}, Landroid/view/View;->setAlpha(F)V

    .line 4326
    invoke-virtual {v4, v9}, Landroid/view/View;->setScaleX(F)V

    .line 4327
    invoke-virtual {v4, v9}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 4330
    .end local v4    # "v":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_2

    .line 4341
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 4342
    new-instance v5, Lcom/android/launcher2/Launcher$23;

    invoke-direct {v5, p0}, Lcom/android/launcher2/Launcher$23;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4350
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 4331
    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 4332
    .restart local v4    # "v":Landroid/view/View;
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    .line 4333
    const-string v6, "alpha"

    new-array v7, v11, [F

    aput v9, v7, v10

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v5, v10

    .line 4334
    const-string v6, "scaleX"

    new-array v7, v11, [F

    aput v9, v7, v10

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v5, v11

    const/4 v6, 0x2

    .line 4335
    const-string v7, "scaleY"

    new-array v8, v11, [F

    aput v9, v8, v10

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v5, v6

    .line 4332
    invoke-static {v4, v5}, Lcom/android/launcher2/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 4336
    .local v1, "bounceAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v5, 0x1c2

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4337
    mul-int/lit8 v5, v3, 0x4b

    int-to-long v5, v5

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 4338
    new-instance v5, Lcom/android/launcher2/SmoothPagedView$OvershootInterpolator;

    invoke-direct {v5}, Lcom/android/launcher2/SmoothPagedView$OvershootInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4339
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4330
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private sendAdvanceMessage(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    const/4 v2, 0x1

    .line 1669
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1670
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1671
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1672
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceSentTime:J

    .line 1673
    return-void
.end method

.method private setPivotsForZoom(Landroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "scaleFactor"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 2787
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 2788
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 2789
    return-void
.end method

.method static setScreen(I)V
    .locals 2
    .param p0, "screen"    # I

    .prologue
    .line 911
    sget-object v1, Lcom/android/launcher2/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 912
    :try_start_0
    sput p0, Lcom/android/launcher2/Launcher;->sScreen:I

    .line 911
    monitor-exit v1

    .line 914
    return-void

    .line 911
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setWorkspaceBackground(Z)V
    .locals 2
    .param p1, "workspace"    # Z

    .prologue
    .line 2805
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mLauncherView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspaceBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2808
    return-void
.end method

.method private setupViews()V
    .locals 3

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    .line 1296
    .local v0, "dragController":Lcom/android/launcher2/DragController;
    sget v1, Lcom/android/launcher/R$id;->launcher:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mLauncherView:Landroid/view/View;

    .line 1297
    sget v1, Lcom/android/launcher/R$id;->drag_layer:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragLayer;

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    .line 1298
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    sget v2, Lcom/android/launcher/R$id;->workspace:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Workspace;

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 1302
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mLauncherView:Landroid/view/View;

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1303
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher/R$drawable;->workspace_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspaceBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1304
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mBlackBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1307
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher2/DragLayer;->setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V

    .line 1310
    sget v1, Lcom/android/launcher/R$id;->hotseat:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Hotseat;

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    .line 1311
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v1, :cond_0

    .line 1312
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/Hotseat;->setup(Lcom/android/launcher2/Launcher;)V

    .line 1315
    :cond_0
    invoke-static {}, Lcom/android/launcher2/MyWorkspace;->GetInstance()Lcom/android/launcher2/MyWorkspace;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher2/MyWorkspace;->setupViews(Lcom/android/launcher2/Launcher;)V

    .line 1318
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 1319
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1320
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Workspace;->setup(Lcom/android/launcher2/DragController;)V

    .line 1321
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->addDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    .line 1324
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    sget v2, Lcom/android/launcher/R$id;->qsb_bar:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/SearchDropTargetBar;

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    .line 1327
    sget v1, Lcom/android/launcher/R$id;->apps_customize_pane:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppsCustomizeTabHost;

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    .line 1329
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    sget v2, Lcom/android/launcher/R$id;->apps_customize_pane_content:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppsCustomizePagedView;

    .line 1328
    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    .line 1330
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V

    .line 1333
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->setDragScoller(Lcom/android/launcher2/DragScroller;)V

    .line 1334
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->setScrollView(Landroid/view/View;)V

    .line 1335
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->setMoveTarget(Landroid/view/View;)V

    .line 1336
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 1337
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz v1, :cond_1

    .line 1338
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V

    .line 1340
    :cond_1
    return-void
.end method

.method private shrinkAndFadeInFolderIcon(Lcom/android/launcher2/FolderIcon;)V
    .locals 10
    .param p1, "fi"    # Lcom/android/launcher2/FolderIcon;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2627
    if-nez p1, :cond_0

    .line 2652
    :goto_0
    return-void

    .line 2628
    :cond_0
    const-string v5, "alpha"

    new-array v6, v8, [F

    aput v9, v6, v7

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 2629
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const-string v5, "scaleX"

    new-array v6, v8, [F

    aput v9, v6, v7

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 2630
    .local v3, "scaleX":Landroid/animation/PropertyValuesHolder;
    const-string v5, "scaleY"

    new-array v6, v8, [F

    aput v9, v6, v7

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 2632
    .local v4, "scaleY":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 2635
    .local v1, "cl":Lcom/android/launcher2/CellLayout;
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/DragLayer;->removeView(Landroid/view/View;)V

    .line 2636
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->copyFolderIconToImage(Lcom/android/launcher2/FolderIcon;)V

    .line 2637
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v7

    .line 2638
    aput-object v3, v6, v8

    const/4 v7, 0x2

    aput-object v4, v6, v7

    .line 2637
    invoke-static {v5, v6}, Lcom/android/launcher2/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2639
    .local v2, "oa":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/launcher/R$integer;->config_folderAnimDuration:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2640
    new-instance v5, Lcom/android/launcher2/Launcher$11;

    invoke-direct {v5, p0, v1, p1}, Lcom/android/launcher2/Launcher$11;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/FolderIcon;)V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2651
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private skipCustomClingIfNoAccounts()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 4635
    sget v5, Lcom/android/launcher/R$id;->workspace_cling:I

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Cling;

    .line 4636
    .local v2, "cling":Lcom/android/launcher2/Cling;
    invoke-virtual {v2}, Lcom/android/launcher2/Cling;->getDrawIdentifier()Ljava/lang/String;

    move-result-object v5

    const-string v6, "workspace_custom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 4637
    .local v3, "customCling":Z
    if-eqz v3, :cond_0

    .line 4638
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 4639
    .local v1, "am":Landroid/accounts/AccountManager;
    const-string v5, "com.google"

    invoke-virtual {v1, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 4640
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v5, v0

    if-nez v5, :cond_0

    const/4 v4, 0x1

    .line 4642
    .end local v0    # "accounts":[Landroid/accounts/Account;
    .end local v1    # "am":Landroid/accounts/AccountManager;
    :cond_0
    return v4
.end method

.method private startWallpaper()V
    .locals 3

    .prologue
    .line 2229
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 2230
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2232
    .local v1, "pickWallpaper":Landroid/content/Intent;
    sget v2, Lcom/android/launcher/R$string;->chooser_wallpaper:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2231
    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 2244
    .local v0, "chooser":Landroid/content/Intent;
    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2245
    return-void
.end method

.method private updateAppMarketIcon()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3983
    sget v4, Lcom/android/launcher/R$id;->market_button:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3984
    .local v3, "marketButton":Landroid/view/View;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.APP_MARKET"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 3987
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 3988
    .local v0, "activityName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 3989
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getCurrentOrientationIndexForGlobalIcons()I

    move-result v1

    .line 3990
    .local v1, "coi":I
    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    .line 3991
    sget-object v4, Lcom/android/launcher2/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 3992
    sget v5, Lcom/android/launcher/R$id;->market_button:I

    sget v6, Lcom/android/launcher/R$drawable;->ic_launcher_market_holo:I

    .line 3993
    const-string v7, "com.android.launcher.toolbar_icon"

    .line 3991
    invoke-direct {p0, v5, v0, v6, v7}, Lcom/android/launcher2/Launcher;->updateTextButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;ILjava/lang/String;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    aput-object v5, v4, v1

    .line 3994
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4001
    .end local v1    # "coi":I
    :goto_0
    return-void

    .line 3998
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3999
    invoke-virtual {v3, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateAppMarketIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 6
    .param p1, "d"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .prologue
    const/4 v5, 0x0

    .line 4005
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 4006
    .local v2, "r":Landroid/content/res/Resources;
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4007
    .local v1, "marketIconDrawable":Landroid/graphics/drawable/Drawable;
    sget v4, Lcom/android/launcher/R$dimen;->toolbar_external_icon_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 4008
    .local v3, "w":I
    sget v4, Lcom/android/launcher/R$dimen;->toolbar_external_icon_height:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4009
    .local v0, "h":I
    invoke-virtual {v1, v5, v5, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4011
    sget v4, Lcom/android/launcher/R$id;->market_button:I

    invoke-direct {p0, v4, v1}, Lcom/android/launcher2/Launcher;->updateTextButtonWithDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 4012
    return-void
.end method

.method private updateButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 2
    .param p1, "buttonId"    # I
    .param p2, "d"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .prologue
    .line 3858
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3859
    .local v0, "button":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3860
    return-void
.end method

.method private updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;ILjava/lang/String;)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3
    .param p1, "buttonId"    # I
    .param p2, "activityName"    # Landroid/content/ComponentName;
    .param p3, "fallbackDrawableId"    # I
    .param p4, "toolbarResourceName"    # Ljava/lang/String;

    .prologue
    .line 3835
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3836
    .local v0, "button":Landroid/widget/ImageView;
    invoke-direct {p0, p2, p4}, Lcom/android/launcher2/Launcher;->getExternalPackageToolbarIcon(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3838
    .local v1, "toolbarIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 3841
    if-nez v1, :cond_1

    .line 3842
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3848
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    :goto_1
    return-object v2

    .line 3844
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3848
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateGlobalIcons()V
    .locals 4

    .prologue
    .line 767
    const/4 v1, 0x0

    .line 768
    .local v1, "searchVisible":Z
    const/4 v2, 0x0

    .line 770
    .local v2, "voiceVisible":Z
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getCurrentOrientationIndexForGlobalIcons()I

    move-result v0

    .line 771
    .local v0, "coi":I
    sget-object v3, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 772
    sget-object v3, Lcom/android/launcher2/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    .line 773
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateAppMarketIcon()V

    .line 774
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateGlobalSearchIcon()Z

    move-result v1

    .line 775
    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->updateVoiceSearchIcon(Z)Z

    move-result v2

    .line 777
    :cond_1
    sget-object v3, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    .line 778
    sget-object v3, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v3, v3, v0

    invoke-direct {p0, v3}, Lcom/android/launcher2/Launcher;->updateGlobalSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 779
    const/4 v1, 0x1

    .line 781
    :cond_2
    sget-object v3, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    .line 782
    sget-object v3, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v3, v3, v0

    invoke-direct {p0, v3}, Lcom/android/launcher2/Launcher;->updateVoiceSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 783
    const/4 v2, 0x1

    .line 785
    :cond_3
    sget-object v3, Lcom/android/launcher2/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v3, v3, v0

    if-eqz v3, :cond_4

    .line 786
    sget-object v3, Lcom/android/launcher2/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v3, v3, v0

    invoke-direct {p0, v3}, Lcom/android/launcher2/Launcher;->updateAppMarketIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 788
    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz v3, :cond_5

    .line 789
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v3, v1, v2}, Lcom/android/launcher2/SearchDropTargetBar;->onSearchPackagesChanged(ZZ)V

    .line 791
    :cond_5
    return-void
.end method

.method private updateGlobalSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .prologue
    .line 3913
    sget v2, Lcom/android/launcher/R$id;->search_button_container:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3914
    .local v1, "searchButtonContainer":Landroid/view/View;
    sget v2, Lcom/android/launcher/R$id;->search_button:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3915
    .local v0, "searchButton":Landroid/view/View;
    sget v2, Lcom/android/launcher/R$id;->search_button:I

    invoke-direct {p0, v2, p1}, Lcom/android/launcher2/Launcher;->updateButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V

    .line 3916
    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/Launcher;->invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V

    .line 3917
    return-void
.end method

.method private updateGlobalSearchIcon()Z
    .locals 1

    .prologue
    .line 3874
    const/4 v0, 0x0

    return v0
.end method

.method private updateRunning()V
    .locals 11

    .prologue
    const-wide/16 v1, 0x4e20

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1676
    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v3

    .line 1677
    .local v0, "autoAdvanceRunning":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceRunning:Z

    if-eq v0, v5, :cond_0

    .line 1678
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceRunning:Z

    .line 1679
    if-eqz v0, :cond_3

    .line 1680
    iget-wide v3, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceTimeLeft:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 1681
    .local v1, "delay":J
    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/Launcher;->sendAdvanceMessage(J)V

    .line 1691
    .end local v1    # "delay":J
    :cond_0
    :goto_2
    return-void

    .end local v0    # "autoAdvanceRunning":Z
    :cond_1
    move v0, v4

    .line 1676
    goto :goto_0

    .line 1680
    .restart local v0    # "autoAdvanceRunning":Z
    :cond_2
    iget-wide v1, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceTimeLeft:J

    goto :goto_1

    .line 1683
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1684
    const-wide/16 v5, 0x0

    .line 1685
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceSentTime:J

    sub-long/2addr v7, v9

    sub-long v7, v1, v7

    .line 1684
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceTimeLeft:J

    .line 1687
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1688
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2
.end method

.method private updateTextButtonWithDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "buttonId"    # I
    .param p2, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 3853
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3854
    .local v0, "button":Landroid/widget/TextView;
    invoke-virtual {v0, p2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3855
    return-void
.end method

.method private updateTextButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;ILjava/lang/String;)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 8
    .param p1, "buttonId"    # I
    .param p2, "activityName"    # Landroid/content/ComponentName;
    .param p3, "fallbackDrawableId"    # I
    .param p4, "toolbarResourceName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 3808
    invoke-direct {p0, p2, p4}, Lcom/android/launcher2/Launcher;->getExternalPackageToolbarIcon(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3809
    .local v3, "toolbarIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3810
    .local v2, "r":Landroid/content/res/Resources;
    sget v6, Lcom/android/launcher/R$dimen;->toolbar_external_icon_width:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 3811
    .local v4, "w":I
    sget v6, Lcom/android/launcher/R$dimen;->toolbar_external_icon_height:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3813
    .local v1, "h":I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3815
    .local v0, "button":Landroid/widget/TextView;
    if-nez v3, :cond_1

    .line 3816
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3817
    invoke-virtual {v3, v7, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3818
    if-eqz v0, :cond_0

    .line 3819
    invoke-virtual {v0, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3827
    :cond_0
    :goto_0
    return-object v5

    .line 3823
    :cond_1
    invoke-virtual {v3, v7, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3824
    if-eqz v0, :cond_2

    .line 3825
    invoke-virtual {v0, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3827
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    goto :goto_0
.end method

.method private updateVoiceSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .prologue
    .line 3973
    sget v2, Lcom/android/launcher/R$id;->voice_button_container:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3974
    .local v1, "voiceButtonContainer":Landroid/view/View;
    sget v2, Lcom/android/launcher/R$id;->voice_button:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3975
    .local v0, "voiceButton":Landroid/view/View;
    sget v2, Lcom/android/launcher/R$id;->voice_button:I

    invoke-direct {p0, v2, p1}, Lcom/android/launcher2/Launcher;->updateButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V

    .line 3976
    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/Launcher;->invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V

    .line 3977
    return-void
.end method

.method private updateVoiceSearchIcon(Z)Z
    .locals 1
    .param p1, "searchVisible"    # Z

    .prologue
    .line 3921
    const/4 v0, 0x0

    return v0
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configuration"    # Lcom/android/launcher2/Launcher$LocaleConfiguration;

    .prologue
    .line 871
    const/4 v1, 0x0

    .line 873
    .local v1, "out":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    const-string v3, "launcher.preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 874
    .end local v1    # "out":Ljava/io/DataOutputStream;
    .local v2, "out":Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 875
    iget v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 876
    iget v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 877
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 884
    if-eqz v2, :cond_2

    .line 886
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v1, v2

    .line 892
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "out":Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 878
    :catch_0
    move-exception v3

    .line 884
    :goto_1
    if-eqz v1, :cond_0

    .line 886
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 887
    :catch_1
    move-exception v3

    goto :goto_0

    .line 880
    :catch_2
    move-exception v0

    .line 882
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v3, "launcher.preferences"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 884
    if-eqz v1, :cond_0

    .line 886
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 887
    :catch_3
    move-exception v3

    goto :goto_0

    .line 883
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 884
    :goto_3
    if-eqz v1, :cond_1

    .line 886
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 891
    :cond_1
    :goto_4
    throw v3

    .line 887
    .end local v1    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "out":Ljava/io/DataOutputStream;
    goto :goto_0

    :catch_5
    move-exception v4

    goto :goto_4

    .line 883
    .end local v1    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "out":Ljava/io/DataOutputStream;
    goto :goto_3

    .line 880
    .end local v1    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "out":Ljava/io/DataOutputStream;
    goto :goto_2

    .line 878
    .end local v1    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "out":Ljava/io/DataOutputStream;
    goto :goto_1

    .end local v1    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "out":Ljava/io/DataOutputStream;
    goto :goto_0
.end method


# virtual methods
.method addAppWidgetFromDrop(Lcom/android/launcher2/PendingAddWidgetInfo;JI[I[I[I)V
    .locals 7
    .param p1, "info"    # Lcom/android/launcher2/PendingAddWidgetInfo;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "cell"    # [I
    .param p6, "span"    # [I
    .param p7, "loc"    # [I

    .prologue
    .line 2135
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    .line 2136
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput-wide p2, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->container:J

    iput-wide p2, v5, Lcom/android/launcher2/ItemInfo;->container:J

    .line 2137
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput p4, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->screen:I

    iput p4, v5, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 2138
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput-object p7, v5, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    .line 2139
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v6, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->minSpanX:I

    iput v6, v5, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    .line 2140
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v6, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->minSpanY:I

    iput v6, v5, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    .line 2142
    if-eqz p5, :cond_0

    .line 2143
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 v6, 0x0

    aget v6, p5, v6

    iput v6, v5, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 2144
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 v6, 0x1

    aget v6, p5, v6

    iput v6, v5, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 2146
    :cond_0
    if-eqz p6, :cond_1

    .line 2147
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 v6, 0x0

    aget v6, p6, v6

    iput v6, v5, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 2148
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 v6, 0x1

    aget v6, p6, v6

    iput v6, v5, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 2151
    :cond_1
    iget-object v1, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 2153
    .local v1, "hostView":Landroid/appwidget/AppWidgetHostView;
    if-eqz v1, :cond_2

    .line 2154
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v0

    .line 2155
    .local v0, "appWidgetId":I
    iget-object v5, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p0, v0, p1, v1, v5}, Lcom/android/launcher2/Launcher;->addAppWidgetImpl(ILcom/android/launcher2/ItemInfo;Landroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 2182
    :goto_0
    return-void

    .line 2159
    .end local v0    # "appWidgetId":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 2160
    .restart local v0    # "appWidgetId":I
    iget-object v3, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    .line 2162
    .local v3, "options":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 2163
    .local v4, "success":Z
    if-eqz v3, :cond_3

    .line 2164
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 2165
    iget-object v6, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 2164
    invoke-virtual {v5, v0, v6, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v4

    .line 2170
    :goto_1
    if-eqz v4, :cond_4

    .line 2171
    const/4 v5, 0x0

    iget-object v6, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p0, v0, p1, v5, v6}, Lcom/android/launcher2/Launcher;->addAppWidgetImpl(ILcom/android/launcher2/ItemInfo;Landroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_0

    .line 2167
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 2168
    iget-object v6, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 2167
    invoke-virtual {v5, v0, v6}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v4

    goto :goto_1

    .line 2173
    :cond_4
    iget-object v5, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v5, p0, Lcom/android/launcher2/Launcher;->mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2174
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2175
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "appWidgetId"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2176
    const-string v5, "appWidgetProvider"

    iget-object v6, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2179
    const/16 v5, 0xb

    invoke-virtual {p0, v2, v5}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method addAppWidgetImpl(ILcom/android/launcher2/ItemInfo;Landroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 8
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Lcom/android/launcher2/ItemInfo;
    .param p3, "boundWidget"    # Landroid/appwidget/AppWidgetHostView;
    .param p4, "appWidgetInfo"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 2083
    iget-object v0, p4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 2084
    iput-object p4, p0, Lcom/android/launcher2/Launcher;->mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2087
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2088
    .local v7, "intent":Landroid/content/Intent;
    iget-object v0, p4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2089
    const-string v0, "appWidgetId"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2090
    const/4 v0, 0x5

    invoke-virtual {p0, v7, v0}, Lcom/android/launcher2/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 2098
    .end local v7    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 2093
    :cond_0
    iget-wide v2, p2, Lcom/android/launcher2/ItemInfo;->container:J

    iget v4, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    move-object v0, p0

    move v1, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Launcher;->completeAddAppWidget(IJILandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 2096
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragModeDelayed(ZZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method addExternalItemToScreen(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;)V
    .locals 1
    .param p1, "itemInfo"    # Lcom/android/launcher2/ItemInfo;
    .param p2, "layout"    # Lcom/android/launcher2/CellLayout;

    .prologue
    .line 3763
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Workspace;->addExternalItemToScreen(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3764
    invoke-virtual {p0, p2}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage(Z)V

    .line 3766
    :cond_0
    return-void
.end method

.method addFolder(Lcom/android/launcher2/CellLayout;JIII)Lcom/android/launcher2/FolderIcon;
    .locals 12
    .param p1, "layout"    # Lcom/android/launcher2/CellLayout;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "cellX"    # I
    .param p6, "cellY"    # I

    .prologue
    .line 2208
    new-instance v1, Lcom/android/launcher2/FolderInfo;

    invoke-direct {v1}, Lcom/android/launcher2/FolderInfo;-><init>()V

    .line 2209
    .local v1, "folderInfo":Lcom/android/launcher2/FolderInfo;
    sget v0, Lcom/android/launcher/R$string;->folder_name:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 2213
    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 2212
    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZ)V

    .line 2214
    sget-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    iget-wide v4, v1, Lcom/android/launcher2/FolderInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2218
    sget v0, Lcom/android/launcher/R$layout;->folder_icon:I

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-static {v0, p0, p1, v1, v2}, Lcom/android/launcher2/FolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/FolderInfo;Lcom/android/launcher2/IconCache;)Lcom/android/launcher2/FolderIcon;

    move-result-object v3

    .line 2219
    .local v3, "newFolder":Lcom/android/launcher2/FolderIcon;
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 2220
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v11

    move-wide v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 2219
    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 2221
    return-object v3
.end method

.method addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 3
    .param p1, "hostView"    # Landroid/view/View;
    .param p2, "appWidgetInfo"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 1716
    if-eqz p2, :cond_0

    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1723
    :cond_0
    :goto_0
    return-void

    .line 1717
    :cond_1
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1718
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/Advanceable;

    if-eqz v1, :cond_0

    .line 1719
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1720
    check-cast v0, Landroid/widget/Advanceable;

    .end local v0    # "v":Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/Advanceable;->fyiWillBeAdvancedByHostKThx()V

    .line 1721
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    goto :goto_0
.end method

.method public bindAllApplications(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4381
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    new-instance v1, Lcom/android/launcher2/Launcher$25;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/Launcher$25;-><init>(Lcom/android/launcher2/Launcher;Ljava/util/ArrayList;)V

    .line 4400
    .local v1, "setAllAppsRunnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    .line 4401
    sget v3, Lcom/android/launcher/R$id;->apps_customize_progress_bar:I

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4402
    .local v0, "progressBar":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 4403
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4408
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->post(Ljava/lang/Runnable;)Z

    .line 4414
    :goto_0
    return-void

    .line 4412
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public bindAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V
    .locals 14
    .param p1, "item"    # Lcom/android/launcher2/LauncherAppWidgetInfo;

    .prologue
    const/4 v9, 0x0

    .line 4189
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 4191
    const-string v1, "hdd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Launcher bindAppWidget appWidgetId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher2/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4192
    const-wide/16 v12, 0x0

    .line 4196
    .local v12, "start":J
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 4198
    .local v0, "workspace":Lcom/android/launcher2/Workspace;
    iget v10, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    .line 4199
    .local v10, "appWidgetId":I
    const/4 v1, -0x1

    if-ne v10, v1, :cond_0

    .line 4200
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/launcher/R$layout;->firstownview:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/DefaultWorkspace;->myfirstview:Landroid/view/View;

    .line 4201
    sget-object v1, Lcom/android/launcher2/DefaultWorkspace;->myfirstview:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4203
    sget-object v1, Lcom/android/launcher2/DefaultWorkspace;->myfirstview:Landroid/view/View;

    iget-wide v2, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->container:J

    iget v4, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->screen:I

    iget v5, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellX:I

    .line 4204
    iget v6, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellY:I

    iget v7, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    iget v8, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    .line 4203
    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 4226
    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->requestLayout()V

    .line 4232
    return-void

    .line 4207
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, v10}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v11

    .line 4212
    .local v11, "appWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v1, p0, v10, v11}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 4215
    const-string v1, "hdd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bindAppWidget item.cellX = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "---item.cellY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4216
    iget v3, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "---item.spanX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "---item.spanY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4215
    invoke-static {v1, v2}, Lcom/android/launcher2/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4218
    iget-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 4219
    invoke-virtual {p1, p0}, Lcom/android/launcher2/LauncherAppWidgetInfo;->onBindAppWidget(Lcom/android/launcher2/Launcher;)V

    .line 4221
    iget-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-wide v2, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->container:J

    iget v4, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->screen:I

    iget v5, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellX:I

    .line 4222
    iget v6, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellY:I

    iget v7, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    iget v8, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    .line 4221
    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 4223
    iget-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v1, v11}, Lcom/android/launcher2/Launcher;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_0
.end method

.method public bindAppsAdded(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4422
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 4424
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v1, :cond_0

    .line 4425
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->addApps(Ljava/util/ArrayList;)V

    .line 4427
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher/R$bool;->need_get_applist:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 4428
    .local v0, "need_get_applist":Z
    if-eqz v0, :cond_0

    .line 4429
    const-string v1, "hdd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bindAppsAdded apps.size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v3}, Lcom/android/launcher2/AppsCustomizePagedView;->getApps()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4430
    const-string v1, "hdd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bindAppsAdded apps.size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v3}, Lcom/android/launcher2/AppsCustomizePagedView;->getApps()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher2/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4431
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getApps()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/launcher2/FirstView;->setList(Ljava/util/ArrayList;Z)V

    .line 4432
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getApps()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/MyWorkspace;->setList(Ljava/util/ArrayList;)V

    .line 4436
    .end local v0    # "need_get_applist":Z
    :cond_0
    return-void
.end method

.method public bindAppsRemoved(Ljava/util/ArrayList;Z)V
    .locals 4
    .param p2, "permanent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 4468
    .local p1, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 4469
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/ArrayList;)V

    .line 4472
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v1, :cond_1

    .line 4473
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->removeApps(Ljava/util/ArrayList;)V

    .line 4477
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v1, p1, p0}, Lcom/android/launcher2/DragController;->onAppsRemoved(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 4480
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher/R$bool;->need_get_applist:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 4481
    .local v0, "need_get_applist":Z
    if-eqz v0, :cond_2

    .line 4482
    const-string v1, "hdd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bindAppsRemoved apps.size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4483
    const-string v1, "hdd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bindAppsRemoved apps.size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher2/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4484
    invoke-static {p1}, Lcom/android/launcher2/FirstView;->setRemovePackage(Ljava/util/ArrayList;)V

    .line 4485
    invoke-static {p1}, Lcom/android/launcher2/MyWorkspace;->setRemovePackage(Ljava/util/ArrayList;)V

    .line 4487
    :cond_2
    return-void
.end method

.method public bindAppsUpdated(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4444
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 4445
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_0

    .line 4446
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/Workspace;->updateShortcuts(Ljava/util/ArrayList;)V

    .line 4449
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v1, :cond_1

    .line 4450
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->updateApps(Ljava/util/ArrayList;)V

    .line 4453
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher/R$bool;->need_get_applist:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 4454
    .local v0, "need_get_applist":Z
    if-eqz v0, :cond_2

    .line 4455
    const-string v1, "hdd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bindAppsUpdated apps.size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4456
    const-string v1, "hdd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bindAppsUpdated apps.size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher2/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4457
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getApps()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/launcher2/FirstView;->setList(Ljava/util/ArrayList;Z)V

    .line 4458
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getApps()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/MyWorkspace;->setList(Ljava/util/ArrayList;)V

    .line 4460
    :cond_2
    return-void
.end method

.method public bindFolders(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4178
    .local p1, "folders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 4179
    sget-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4180
    sget-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 4181
    return-void
.end method

.method public bindItems(Ljava/util/ArrayList;II)V
    .locals 19
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 4120
    .local p1, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 4123
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 4124
    .local v17, "newApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v5, "apps.new.list"

    move-object/from16 v0, v17

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v17

    .line 4126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 4127
    .local v1, "workspace":Lcom/android/launcher2/Workspace;
    move/from16 v14, p2

    .local v14, "i":I
    :goto_0
    move/from16 v0, p3

    if-lt v14, v0, :cond_0

    .line 4171
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->requestLayout()V

    .line 4172
    return-void

    .line 4128
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/ItemInfo;

    .line 4131
    .local v16, "item":Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, v16

    iget-wide v5, v0, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v7, -0x65

    cmp-long v3, v5, v7

    if-nez v3, :cond_2

    .line 4132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-nez v3, :cond_2

    .line 4127
    :cond_1
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 4136
    :cond_2
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move-object/from16 v15, v16

    .line 4139
    check-cast v15, Lcom/android/launcher2/ShortcutInfo;

    .line 4140
    .local v15, "info":Lcom/android/launcher2/ShortcutInfo;
    iget-object v3, v15, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    .line 4141
    .local v18, "uri":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher2/Launcher;->createShortcut(Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v2

    .line 4142
    .local v2, "shortcut":Landroid/view/View;
    move-object/from16 v0, v16

    iget-wide v3, v0, Lcom/android/launcher2/ItemInfo;->container:J

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/launcher2/ItemInfo;->screen:I

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 4143
    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/launcher2/ItemInfo;->cellY:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 4142
    invoke-virtual/range {v1 .. v10}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 4144
    const/4 v13, 0x0

    .line 4145
    .local v13, "animateIconUp":Z
    monitor-enter v17

    .line 4146
    :try_start_0
    invoke-interface/range {v17 .. v18}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4147
    invoke-interface/range {v17 .. v18}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v13

    .line 4145
    :cond_3
    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4150
    if-eqz v13, :cond_1

    .line 4152
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 4153
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 4154
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 4155
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/launcher2/ItemInfo;->screen:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimatePage:I

    .line 4156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4145
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 4162
    .end local v2    # "shortcut":Landroid/view/View;
    .end local v13    # "animateIconUp":Z
    .end local v15    # "info":Lcom/android/launcher2/ShortcutInfo;
    .end local v18    # "uri":Ljava/lang/String;
    :pswitch_1
    sget v6, Lcom/android/launcher/R$layout;->folder_icon:I

    .line 4163
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v5, v16

    .line 4164
    check-cast v5, Lcom/android/launcher2/FolderInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 4162
    move-object/from16 v0, p0

    invoke-static {v6, v0, v3, v5, v7}, Lcom/android/launcher2/FolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/FolderInfo;Lcom/android/launcher2/IconCache;)Lcom/android/launcher2/FolderIcon;

    move-result-object v4

    .line 4165
    .local v4, "newFolder":Lcom/android/launcher2/FolderIcon;
    move-object/from16 v0, v16

    iget-wide v5, v0, Lcom/android/launcher2/ItemInfo;->container:J

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/launcher2/ItemInfo;->screen:I

    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 4166
    move-object/from16 v0, v16

    iget v9, v0, Lcom/android/launcher2/ItemInfo;->cellY:I

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v3, v1

    .line 4165
    invoke-virtual/range {v3 .. v12}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    goto/16 :goto_1

    .line 4136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bindPackagesUpdated()V
    .locals 1

    .prologue
    .line 4493
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_0

    .line 4494
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->onPackagesUpdated()V

    .line 4496
    :cond_0
    return-void
.end method

.method public bindSearchablesChanged()V
    .locals 3

    .prologue
    .line 4368
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateGlobalSearchIcon()Z

    move-result v0

    .line 4369
    .local v0, "searchVisible":Z
    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->updateVoiceSearchIcon(Z)Z

    move-result v1

    .line 4370
    .local v1, "voiceVisible":Z
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz v2, :cond_0

    .line 4371
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/SearchDropTargetBar;->onSearchPackagesChanged(ZZ)V

    .line 4373
    :cond_0
    return-void
.end method

.method public changeAllApp(I)V
    .locals 1
    .param p1, "illState"    # I

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/Launcher;->changeBackground(Landroid/view/View;I)V

    .line 527
    return-void
.end method

.method public changeBackground(Landroid/view/View;I)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "illState"    # I

    .prologue
    const/4 v10, 0x1

    .line 534
    :try_start_0
    const-class v7, Landroid/view/View;

    const-string v8, "mBackgroundResource"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 535
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 536
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 537
    .local v0, "background":I
    const-string v7, "hdd"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "changeBackground background = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    if-eqz v0, :cond_5

    .line 539
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    .line 540
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 542
    const-string v7, "_night"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez p2, :cond_2

    .line 543
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    const-string v10, "_night"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "drawable"

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 544
    .local v5, "newId":I
    if-lez v5, :cond_0

    .line 545
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 547
    :cond_0
    const-string v7, "hdd"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u591c\u53d8\u767d newId ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    .end local v0    # "background":I
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "newId":I
    :cond_1
    :goto_0
    return-void

    .line 549
    .restart local v0    # "background":I
    .restart local v3    # "field":Ljava/lang/reflect/Field;
    .restart local v4    # "name":Ljava/lang/String;
    :cond_2
    const-string v7, "_night"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    if-ne p2, v10, :cond_1

    .line 550
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    instance-of v7, v7, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v7, :cond_4

    .line 551
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mViewCache:Ljava/util/WeakHashMap;

    invoke-virtual {v7, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 552
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_3

    .line 553
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/android/launcher2/Launcher;->createThemeDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    .line 555
    :cond_3
    if-eqz v1, :cond_4

    .line 556
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 557
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mViewCache:Ljava/util/WeakHashMap;

    invoke-virtual {v7, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "_night"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "drawable"

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 561
    .restart local v5    # "newId":I
    const-string v7, "hdd"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u767d\u53d8\u9ed1 newId ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "--newId ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    if-lez v5, :cond_1

    .line 563
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 596
    .end local v0    # "background":I
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "newId":I
    :catch_0
    move-exception v2

    .line 598
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 570
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "background":I
    .restart local v3    # "field":Ljava/lang/reflect/Field;
    :cond_5
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    instance-of v7, v7, Lcom/android/launcher2/ThemeStateListDrawable;

    if-eqz v7, :cond_1

    .line 572
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/ThemeStateListDrawable;

    .line 573
    .local v6, "oldbg":Lcom/android/launcher2/ThemeStateListDrawable;
    invoke-virtual {v6}, Lcom/android/launcher2/ThemeStateListDrawable;->getmOriginalBgId()I

    move-result v0

    .line 575
    const-string v7, "hdd"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "changeBackground2 background = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    if-eqz v0, :cond_1

    .line 577
    if-ne p2, v10, :cond_8

    .line 578
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mViewCache:Ljava/util/WeakHashMap;

    invoke-virtual {v7, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 579
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_6

    .line 580
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/android/launcher2/Launcher;->createThemeDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    .line 582
    :cond_6
    if-eqz v1, :cond_7

    .line 583
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 584
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mViewCache:Ljava/util/WeakHashMap;

    invoke-virtual {v7, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    :cond_7
    const-string v7, "hdd"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u767d\u53d8\u9ed12 newId ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 591
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 592
    const-string v7, "hdd"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u9ed1\u53d8\u767d2 newId ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public closeFolder()V
    .locals 2

    .prologue
    .line 2681
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 2682
    .local v0, "folder":Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 2683
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2684
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->dismissEditingName()V

    .line 2686
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)V

    .line 2689
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->dismissFolderCling(Landroid/view/View;)V

    .line 2691
    :cond_1
    return-void
.end method

.method closeFolder(Lcom/android/launcher2/Folder;)V
    .locals 4
    .param p1, "folder"    # Lcom/android/launcher2/Folder;

    .prologue
    .line 2694
    invoke-virtual {p1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/launcher2/FolderInfo;->opened:Z

    .line 2696
    invoke-virtual {p1}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2697
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 2698
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, p1, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIcon;

    .line 2699
    .local v0, "fi":Lcom/android/launcher2/FolderIcon;
    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->shrinkAndFadeInFolderIcon(Lcom/android/launcher2/FolderIcon;)V

    .line 2701
    .end local v0    # "fi":Lcom/android/launcher2/FolderIcon;
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher2/Folder;->animateClosed()V

    .line 2702
    return-void
.end method

.method closeSystemDialogs()V
    .locals 1

    .prologue
    .line 1751
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 1754
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 1755
    return-void
.end method

.method completeAddApplication(Landroid/content/Intent;JIII)V
    .locals 15
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "cellX"    # I
    .param p6, "cellY"    # I

    .prologue
    .line 1377
    iget-object v14, p0, Lcom/android/launcher2/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 1378
    .local v14, "cellXY":[I
    move-wide/from16 v0, p2

    move/from16 v2, p4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v5

    .line 1381
    .local v5, "layout":Lcom/android/launcher2/CellLayout;
    if-ltz p5, :cond_1

    if-ltz p6, :cond_1

    .line 1382
    const/4 v3, 0x0

    aput p5, v14, v3

    .line 1383
    const/4 v3, 0x1

    aput p6, v14, v3

    .line 1389
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v3, v6, v0, p0}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v4

    .line 1391
    .local v4, "info":Lcom/android/launcher2/ShortcutInfo;
    if-eqz v4, :cond_2

    .line 1392
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/high16 v6, 0x10200000

    invoke-virtual {v4, v3, v6}, Lcom/android/launcher2/ShortcutInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 1394
    const-wide/16 v6, -0x1

    iput-wide v6, v4, Lcom/android/launcher2/ShortcutInfo;->container:J

    .line 1395
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v6, 0x0

    aget v9, v14, v6

    const/4 v6, 0x1

    aget v10, v14, v6

    .line 1396
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v11

    move-wide/from16 v6, p2

    move/from16 v8, p4

    move/from16 v12, p5

    move/from16 v13, p6

    .line 1395
    invoke-virtual/range {v3 .. v13}, Lcom/android/launcher2/Workspace;->addApplicationShortcut(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/CellLayout;JIIIZII)V

    .line 1400
    .end local v4    # "info":Lcom/android/launcher2/ShortcutInfo;
    :goto_0
    return-void

    .line 1384
    :cond_1
    const/4 v3, 0x1

    const/4 v6, 0x1

    invoke-virtual {v5, v14, v3, v6}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1385
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage(Z)V

    goto :goto_0

    .line 1398
    .restart local v4    # "info":Lcom/android/launcher2/ShortcutInfo;
    :cond_2
    const-string v3, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Couldn\'t find ActivityInfo for selected application: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;
    .locals 3
    .param p1, "layoutResId"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "info"    # Lcom/android/launcher2/ShortcutInfo;

    .prologue
    .line 1364
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BubbleTextView;

    .line 1365
    .local v0, "favorite":Lcom/android/launcher2/BubbleTextView;
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v0, p3, v1}, Lcom/android/launcher2/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/IconCache;)V

    .line 1366
    invoke-virtual {v0, p0}, Lcom/android/launcher2/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1367
    return-object v0
.end method

.method createShortcut(Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;
    .locals 3
    .param p1, "info"    # Lcom/android/launcher2/ShortcutInfo;

    .prologue
    .line 1350
    sget v1, Lcom/android/launcher/R$layout;->application:I

    .line 1351
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1350
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/launcher2/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method disableWallpaperIfInAllApps()V
    .locals 1

    .prologue
    .line 2793
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2794
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    if-eqz v0, :cond_0

    .line 2795
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->isTransitioning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2797
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    .line 2801
    :cond_0
    return-void
.end method

.method public dismissAllAppsCling(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4700
    sget v1, Lcom/android/launcher/R$id;->all_apps_cling:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Cling;

    .line 4701
    .local v0, "cling":Lcom/android/launcher2/Cling;
    const-string v1, "cling.allapps.dismissed"

    const/16 v2, 0xfa

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;I)V

    .line 4702
    return-void
.end method

.method public dismissFolderCling(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4704
    sget v1, Lcom/android/launcher/R$id;->folder_cling:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Cling;

    .line 4705
    .local v0, "cling":Lcom/android/launcher2/Cling;
    const-string v1, "cling.folder.dismissed"

    const/16 v2, 0xfa

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;I)V

    .line 4706
    return-void
.end method

.method public dismissWorkspaceCling(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4696
    sget v1, Lcom/android/launcher/R$id;->workspace_cling:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Cling;

    .line 4697
    .local v0, "cling":Lcom/android/launcher2/Cling;
    const-string v1, "cling.workspace.dismissed"

    const/16 v2, 0xfa

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;I)V

    .line 4698
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 2259
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 2260
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2277
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    :pswitch_0
    :sswitch_0
    return v0

    .line 2264
    :sswitch_1
    const-string v1, "launcher_dump_state"

    invoke-static {v1}, Lcom/android/launcher2/Launcher;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2265
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->dumpState()V

    goto :goto_1

    .line 2270
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 2271
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2260
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x19 -> :sswitch_1
    .end sparse-switch

    .line 2271
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 4016
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 4017
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    .line 4018
    .local v1, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4020
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v3, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v2, v3, :cond_0

    .line 4021
    sget v2, Lcom/android/launcher/R$string;->all_apps_button_label:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4025
    :goto_0
    return v0

    .line 4023
    :cond_0
    sget v2, Lcom/android/launcher/R$string;->all_apps_home_button_label:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 4729
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4730
    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4731
    const-string v1, "Debug logs: "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4732
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/launcher2/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 4735
    return-void

    .line 4733
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher2/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4732
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 4712
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BEGIN launcher2 dump state for launcher "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4713
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSavedState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4714
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mWorkspaceLoading="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4715
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mRestoring="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4716
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mWaitingForResult="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4717
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSavedInstanceState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4718
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sFolders.size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4719
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->dumpState()V

    .line 4721
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_0

    .line 4722
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->dumpState()V

    .line 4724
    :cond_0
    const-string v0, "Launcher"

    const-string v1, "END launcher2 dump state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4725
    return-void
.end method

.method enterSpringLoadedDragMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3635
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3636
    sget-object v0, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/android/launcher2/Launcher;->hideAppsCustomizeHelper(Lcom/android/launcher2/Launcher$State;ZZLjava/lang/Runnable;)V

    .line 3637
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->hideDockDivider()V

    .line 3638
    sget-object v0, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 3640
    :cond_0
    return-void
.end method

.method exitSpringLoadedDragMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3665
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v3, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    if-ne v2, v3, :cond_0

    .line 3666
    const/4 v0, 0x1

    .line 3667
    .local v0, "animated":Z
    const/4 v1, 0x1

    .line 3668
    .local v1, "springLoaded":Z
    invoke-virtual {p0, v4, v4}, Lcom/android/launcher2/Launcher;->showAppsCustomizeHelper(ZZ)V

    .line 3669
    sget-object v2, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 3672
    .end local v0    # "animated":Z
    .end local v1    # "springLoaded":Z
    :cond_0
    return-void
.end method

.method exitSpringLoadedDragModeDelayed(ZZLjava/lang/Runnable;)V
    .locals 5
    .param p1, "successfulDrop"    # Z
    .param p2, "extendedDelay"    # Z
    .param p3, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 3644
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    if-eq v0, v1, :cond_0

    .line 3662
    :goto_0
    return-void

    .line 3646
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher2/Launcher$20;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/launcher2/Launcher$20;-><init>(Lcom/android/launcher2/Launcher;ZLjava/lang/Runnable;)V

    .line 3659
    if-eqz p2, :cond_1

    .line 3660
    const/16 v0, 0x258

    .line 3659
    :goto_1
    int-to-long v3, v0

    .line 3646
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3661
    :cond_1
    const/16 v0, 0x12c

    goto :goto_1
.end method

.method public finishBindingItems()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 4244
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 4246
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 4247
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4248
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 4250
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 4253
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->restoreInstanceStateForRemainingPages()V

    .line 4257
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_4

    .line 4260
    sget-object v3, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 4264
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateAppMarketIcon()V

    .line 4267
    iget-boolean v3, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    if-eqz v3, :cond_3

    .line 4268
    :cond_2
    new-instance v1, Lcom/android/launcher2/Launcher$21;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$21;-><init>(Lcom/android/launcher2/Launcher;)V

    .line 4275
    .local v1, "newAppsRunnable":Ljava/lang/Runnable;
    iget v3, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimatePage:I

    const/4 v5, -0x1

    if-le v3, v5, :cond_5

    .line 4276
    iget v3, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimatePage:I

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v5

    if-eq v3, v5, :cond_5

    .line 4275
    const/4 v2, 0x1

    .line 4277
    .local v2, "willSnapPage":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->canRunNewAppsAnimation()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4280
    if-eqz v2, :cond_6

    .line 4281
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v5, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimatePage:I

    invoke-virtual {v3, v5, v1}, Lcom/android/launcher2/Workspace;->snapToPage(ILjava/lang/Runnable;)V

    .line 4292
    .end local v1    # "newAppsRunnable":Ljava/lang/Runnable;
    .end local v2    # "willSnapPage":Z
    :cond_3
    :goto_2
    iput-boolean v4, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    .line 4293
    return-void

    .line 4258
    :cond_4
    sget-object v3, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher$PendingAddArguments;

    invoke-direct {p0, v3}, Lcom/android/launcher2/Launcher;->completeAdd(Lcom/android/launcher2/Launcher$PendingAddArguments;)Z

    .line 4257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .restart local v1    # "newAppsRunnable":Ljava/lang/Runnable;
    :cond_5
    move v2, v4

    .line 4275
    goto :goto_1

    .line 4283
    .restart local v2    # "willSnapPage":Z
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/launcher2/Launcher;->runNewAppsAnimation(Z)V

    goto :goto_2

    .line 4288
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->runNewAppsAnimation(Z)V

    goto :goto_2
.end method

.method public getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-object v0
.end method

.method public getAppsCustomizeTabHost()Lcom/android/launcher2/AppsCustomizeTabHost;
    .locals 1

    .prologue
    .line 2897
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    return-object v0
.end method

.method public getAttrResource(Landroid/content/Context;Landroid/util/AttributeSet;I)I
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "resourceName"    # I

    .prologue
    .line 482
    const/4 v7, 0x0

    .line 484
    .local v7, "resource":I
    const/4 v1, 0x0

    .line 485
    .local v1, "Styleable":[I
    const/4 v4, 0x0

    .line 487
    .local v4, "attrName":I
    :try_start_0
    const-string v10, "com.android.internal.R$styleable"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 488
    .local v5, "clasz":Ljava/lang/Class;
    const/4 v9, 0x0

    .line 489
    .local v9, "widgetField":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .line 491
    .local v3, "attrField":Ljava/lang/reflect/Field;
    packed-switch p3, :pswitch_data_0

    .line 506
    :goto_0
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 507
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, [I

    move-object v1, v0

    .line 509
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 510
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 515
    .end local v3    # "attrField":Ljava/lang/reflect/Field;
    .end local v5    # "clasz":Ljava/lang/Class;
    .end local v9    # "widgetField":Ljava/lang/reflect/Field;
    :goto_1
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 516
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 517
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 518
    .local v8, "value":Landroid/util/TypedValue;
    invoke-virtual {v2, v4, v8}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 519
    iget v7, v8, Landroid/util/TypedValue;->resourceId:I

    .line 521
    .end local v8    # "value":Landroid/util/TypedValue;
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 522
    return v7

    .line 493
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .restart local v3    # "attrField":Ljava/lang/reflect/Field;
    .restart local v5    # "clasz":Ljava/lang/Class;
    .restart local v9    # "widgetField":Ljava/lang/reflect/Field;
    :pswitch_0
    :try_start_1
    const-string v10, "ImageView"

    invoke-virtual {v5, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 494
    const-string v10, "ImageView_src"

    invoke-virtual {v5, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 495
    goto :goto_0

    .line 497
    :pswitch_1
    const-string v10, "View"

    invoke-virtual {v5, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 498
    const-string v10, "View_background"

    invoke-virtual {v5, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 499
    goto :goto_0

    .line 501
    :pswitch_2
    const-string v10, "TextView"

    invoke-virtual {v5, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 502
    const-string v10, "TextView_drawableLeft"

    invoke-virtual {v5, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0

    .line 511
    .end local v3    # "attrField":Ljava/lang/reflect/Field;
    .end local v5    # "clasz":Ljava/lang/Class;
    .end local v9    # "widgetField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v6

    .line 512
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 491
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method getCellLayout(JI)Lcom/android/launcher2/CellLayout;
    .locals 2
    .param p1, "container"    # J
    .param p3, "screen"    # I

    .prologue
    .line 2755
    const-wide/16 v0, -0x65

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 2756
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    .line 2757
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 2762
    :goto_0
    return-object v0

    .line 2759
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2762
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    goto :goto_0
.end method

.method public getCurrentWorkspaceScreen()I
    .locals 1

    .prologue
    .line 4081
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    .line 4082
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    .line 4084
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/launcher2/Launcher;->SCREEN_COUNT:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public getDragController()Lcom/android/launcher2/DragController;
    .locals 1

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    return-object v0
.end method

.method public getDragLayer()Lcom/android/launcher2/DragLayer;
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    return-object v0
.end method

.method getHotseat()Lcom/android/launcher2/Hotseat;
    .locals 1

    .prologue
    .line 2745
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    return-object v0
.end method

.method public getModel()Lcom/android/launcher2/LauncherModel;
    .locals 1

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method getSearchBar()Lcom/android/launcher2/SearchDropTargetBar;
    .locals 1

    .prologue
    .line 2748
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    return-object v0
.end method

.method getWorkspace()Lcom/android/launcher2/Workspace;
    .locals 1

    .prologue
    .line 2767
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method hideDockDivider()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 3675
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mQsbDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDockDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3676
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mQsbDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3677
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDockDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3679
    :cond_0
    return-void
.end method

.method hideHotseat(Z)V
    .locals 4
    .param p1, "animated"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3743
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3744
    if-eqz p1, :cond_2

    .line 3745
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher2/Hotseat;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 3746
    const/4 v0, 0x0

    .line 3747
    .local v0, "duration":I
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz v1, :cond_0

    .line 3748
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v1}, Lcom/android/launcher2/SearchDropTargetBar;->getTransitionOutDuration()I

    move-result v0

    .line 3750
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 3756
    .end local v0    # "duration":I
    :cond_1
    :goto_0
    return-void

    .line 3753
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Hotseat;->setAlpha(F)V

    goto :goto_0
.end method

.method public isAllAppsButtonRank(I)Z
    .locals 1
    .param p1, "rank"    # I

    .prologue
    .line 2778
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Hotseat;->isAllAppsButtonRank(I)Z

    move-result v0

    return v0
.end method

.method public isAllAppsVisible()Z
    .locals 2

    .prologue
    .line 2773
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isDraggingEnabled()Z
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->isLoadingWorkspace()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFolderClingVisible()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4689
    sget v2, Lcom/android/launcher/R$id;->folder_cling:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Cling;

    .line 4690
    .local v0, "cling":Lcom/android/launcher2/Cling;
    if-eqz v0, :cond_0

    .line 4691
    invoke-virtual {v0}, Lcom/android/launcher2/Cling;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 4693
    :cond_0
    return v1
.end method

.method isHotseatLayout(Landroid/view/View;)Z
    .locals 1
    .param p1, "layout"    # Landroid/view/View;

    .prologue
    .line 2741
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2742
    instance-of v0, p1, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2741
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRotationEnabled()Z
    .locals 3

    .prologue
    .line 4531
    sget-boolean v1, Lcom/android/launcher2/Launcher;->sForceEnableRotation:Z

    if-nez v1, :cond_0

    .line 4532
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher/R$bool;->allow_rotation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4531
    const/4 v0, 0x0

    .line 4533
    .local v0, "enableRotation":Z
    :goto_0
    return v0

    .line 4531
    .end local v0    # "enableRotation":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .prologue
    .line 2069
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method lockAllApps()V
    .locals 0

    .prologue
    .line 3707
    return-void
.end method

.method public lockScreenOrientation()V
    .locals 1

    .prologue
    .line 4536
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4537
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4538
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 4537
    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->mapConfigurationOriActivityInfoOri(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    .line 4540
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 954
    const/16 v7, 0xb

    if-ne p1, v7, :cond_3

    .line 955
    if-eqz p3, :cond_1

    .line 956
    const-string v5, "appWidgetId"

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 957
    .local v0, "appWidgetId":I
    :goto_0
    if-nez p2, :cond_2

    .line 958
    invoke-direct {p0, v4, v0}, Lcom/android/launcher2/Launcher;->completeTwoStageWidgetDrop(II)V

    .line 1006
    .end local v0    # "appWidgetId":I
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v6

    .line 956
    goto :goto_0

    .line 959
    .restart local v0    # "appWidgetId":I
    :cond_2
    if-ne p2, v6, :cond_0

    .line 960
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p0, v0, v4, v10, v5}, Lcom/android/launcher2/Launcher;->addAppWidgetImpl(ILcom/android/launcher2/ItemInfo;Landroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_1

    .line 964
    .end local v0    # "appWidgetId":I
    :cond_3
    const/4 v2, 0x0

    .line 965
    .local v2, "delayExitSpringLoadedMode":Z
    const/16 v7, 0x9

    if-eq p1, v7, :cond_4

    .line 966
    const/4 v7, 0x5

    if-eq p1, v7, :cond_4

    move v3, v4

    .line 967
    .local v3, "isWidgetDrop":Z
    :goto_2
    iput-boolean v4, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 970
    if-eqz v3, :cond_7

    .line 971
    if-eqz p3, :cond_5

    .line 972
    const-string v5, "appWidgetId"

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 973
    .restart local v0    # "appWidgetId":I
    :goto_3
    if-gez v0, :cond_6

    .line 974
    const-string v5, "Launcher"

    const-string v6, "Error: appWidgetId (EXTRA_APPWIDGET_ID) was not returned from the \\widget configuration activity."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    invoke-direct {p0, v4, v0}, Lcom/android/launcher2/Launcher;->completeTwoStageWidgetDrop(II)V

    goto :goto_1

    .end local v0    # "appWidgetId":I
    .end local v3    # "isWidgetDrop":Z
    :cond_4
    move v3, v5

    .line 965
    goto :goto_2

    .restart local v3    # "isWidgetDrop":Z
    :cond_5
    move v0, v6

    .line 972
    goto :goto_3

    .line 978
    .restart local v0    # "appWidgetId":I
    :cond_6
    invoke-direct {p0, p2, v0}, Lcom/android/launcher2/Launcher;->completeTwoStageWidgetDrop(II)V

    goto :goto_1

    .line 988
    .end local v0    # "appWidgetId":I
    :cond_7
    if-ne p2, v6, :cond_8

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-wide v6, v6, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_8

    .line 989
    new-instance v1, Lcom/android/launcher2/Launcher$PendingAddArguments;

    invoke-direct {v1, v10}, Lcom/android/launcher2/Launcher$PendingAddArguments;-><init>(Lcom/android/launcher2/Launcher$PendingAddArguments;)V

    .line 990
    .local v1, "args":Lcom/android/launcher2/Launcher$PendingAddArguments;
    iput p1, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->requestCode:I

    .line 991
    iput-object p3, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    .line 992
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-wide v6, v6, Lcom/android/launcher2/ItemInfo;->container:J

    iput-wide v6, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->container:J

    .line 993
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v6, v6, Lcom/android/launcher2/ItemInfo;->screen:I

    iput v6, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->screen:I

    .line 994
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v6, v6, Lcom/android/launcher2/ItemInfo;->cellX:I

    iput v6, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellX:I

    .line 995
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v6, v6, Lcom/android/launcher2/ItemInfo;->cellY:I

    iput v6, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellY:I

    .line 996
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 997
    sget-object v6, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1002
    .end local v1    # "args":Lcom/android/launcher2/Launcher$PendingAddArguments;
    :cond_8
    :goto_4
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v6}, Lcom/android/launcher2/DragLayer;->clearAnimatedView()V

    .line 1004
    if-eqz p2, :cond_a

    :goto_5
    invoke-virtual {p0, v5, v2, v10}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragModeDelayed(ZZLjava/lang/Runnable;)V

    goto :goto_1

    .line 999
    .restart local v1    # "args":Lcom/android/launcher2/Launcher$PendingAddArguments;
    :cond_9
    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->completeAdd(Lcom/android/launcher2/Launcher$PendingAddArguments;)Z

    move-result v2

    goto :goto_4

    .end local v1    # "args":Lcom/android/launcher2/Launcher$PendingAddArguments;
    :cond_a
    move v5, v4

    .line 1004
    goto :goto_5
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1606
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 1609
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1610
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1611
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1612
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1614
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 1615
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    .line 1616
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 2283
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->launcherListener:Lcom/android/launcher2/Launcher$LauncherListener;

    if-eqz v1, :cond_0

    .line 2284
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->launcherListener:Lcom/android/launcher2/Launcher$LauncherListener;

    invoke-interface {v1}, Lcom/android/launcher2/Launcher$LauncherListener;->onLauncherBackPressed()V

    .line 2286
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2287
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 2301
    :goto_0
    return-void

    .line 2288
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2289
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 2290
    .local v0, "openFolder":Lcom/android/launcher2/Folder;
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2291
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->dismissEditingName()V

    goto :goto_0

    .line 2293
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    goto :goto_0

    .line 2296
    .end local v0    # "openFolder":Lcom/android/launcher2/Folder;
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 2299
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->showOutlinesTemporarily()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 2334
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_1

    .line 2369
    .end local p1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 2338
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->isFinishedSwitchingState()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2342
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 2343
    .local v4, "tag":Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v5, :cond_2

    move-object v5, v4

    .line 2345
    check-cast v5, Lcom/android/launcher2/ShortcutInfo;

    iget-object v1, v5, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 2346
    .local v1, "intent":Landroid/content/Intent;
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 2347
    .local v2, "pos":[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2348
    new-instance v5, Landroid/graphics/Rect;

    aget v6, v2, v8

    aget v7, v2, v11

    .line 2349
    aget v8, v2, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget v9, v2, v11

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2348
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 2351
    invoke-virtual {p0, p1, v1, v4}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v3

    .line 2353
    .local v3, "success":Z
    if-eqz v3, :cond_0

    instance-of v5, p1, Lcom/android/launcher2/BubbleTextView;

    if-eqz v5, :cond_0

    .line 2354
    check-cast p1, Lcom/android/launcher2/BubbleTextView;

    .end local p1    # "v":Landroid/view/View;
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

    .line 2355
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

    invoke-virtual {v5, v11}, Lcom/android/launcher2/BubbleTextView;->setStayPressed(Z)V

    goto :goto_0

    .line 2357
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pos":[I
    .end local v3    # "success":Z
    .restart local p1    # "v":Landroid/view/View;
    :cond_2
    instance-of v5, v4, Lcom/android/launcher2/FolderInfo;

    if-eqz v5, :cond_3

    .line 2358
    instance-of v5, p1, Lcom/android/launcher2/FolderIcon;

    if-eqz v5, :cond_0

    move-object v0, p1

    .line 2359
    check-cast v0, Lcom/android/launcher2/FolderIcon;

    .line 2360
    .local v0, "fi":Lcom/android/launcher2/FolderIcon;
    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->handleFolderClick(Lcom/android/launcher2/FolderIcon;)V

    goto :goto_0

    .line 2362
    .end local v0    # "fi":Lcom/android/launcher2/FolderIcon;
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mAllAppsButton:Landroid/view/View;

    if-ne p1, v5, :cond_0

    .line 2363
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2364
    invoke-virtual {p0, v11}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    goto :goto_0

    .line 2366
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->onClickAllAppsButton(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClickAllAppsButton(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2423
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showAllApps(Z)V

    .line 2424
    return-void
.end method

.method public onClickAppMarketButton(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2432
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 2433
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    const-string v1, "app market"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 2437
    :goto_0
    return-void

    .line 2435
    :cond_0
    const-string v0, "Launcher"

    const-string v1, "Invalid app market intent."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClickSearchButton(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2386
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 2388
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    .line 2389
    return-void
.end method

.method public onClickVoiceButton(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x10000000

    .line 2397
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 2401
    :try_start_0
    const-string v4, "search"

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    .line 2402
    .local v3, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {v3}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 2403
    .local v0, "activityName":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.speech.action.WEB_SEARCH"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2404
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2405
    if-eqz v0, :cond_0

    .line 2406
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2408
    :cond_0
    const/4 v4, 0x0

    const-string v5, "onClickVoiceButton"

    invoke-virtual {p0, v4, v2, v5}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2414
    .end local v0    # "activityName":Landroid/content/ComponentName;
    .end local v3    # "searchManager":Landroid/app/SearchManager;
    :goto_0
    return-void

    .line 2409
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 2410
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.speech.action.WEB_SEARCH"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2411
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2412
    const-string v4, "onClickVoiceButton"

    invoke-virtual {p0, v7, v2, v4}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 363
    const-string v0, "###"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConfigurationChanged###"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 386
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 636
    const-string v7, "###"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "onCreate###"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 654
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherApplication;

    .line 655
    .local v1, "app":Lcom/android/launcher2/LauncherApplication;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v10}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 657
    invoke-virtual {v1, p0}, Lcom/android/launcher2/LauncherApplication;->setLauncher(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    .line 658
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 659
    new-instance v7, Lcom/android/launcher2/DragController;

    invoke-direct {v7, p0}, Lcom/android/launcher2/DragController;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v7, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    .line 660
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/Launcher;->mInflater:Landroid/view/LayoutInflater;

    .line 662
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 663
    new-instance v7, Lcom/android/launcher2/LauncherAppWidgetHost;

    const/16 v8, 0x400

    invoke-direct {v7, p0, v8}, Lcom/android/launcher2/LauncherAppWidgetHost;-><init>(Lcom/android/launcher2/Launcher;I)V

    iput-object v7, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 664
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    .line 669
    iput-boolean v10, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 676
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->checkForLocaleChange()V

    .line 677
    sget v7, Lcom/android/launcher/R$layout;->launcher:I

    invoke-virtual {p0, v7}, Lcom/android/launcher2/Launcher;->setContentView(I)V

    .line 693
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-lt v7, v8, :cond_1

    .line 695
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/high16 v8, 0x4000000

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 697
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/high16 v8, 0x8000000

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 699
    const v7, 0x1020002

    invoke-virtual {p0, v7}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 700
    .local v4, "contentView":Landroid/view/ViewGroup;
    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 701
    .local v3, "childAt":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 702
    invoke-virtual {v3, v11}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 705
    :cond_0
    new-instance v6, Landroid/view/View;

    invoke-direct {v6, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 706
    .local v6, "view":Landroid/view/View;
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {p0}, Lcom/android/launcher2/Launcher;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v8

    invoke-direct {v7, v12, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 707
    const-string v7, "#80000000"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 708
    .local v0, "MemDnColor":I
    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 709
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 712
    .end local v0    # "MemDnColor":I
    .end local v3    # "childAt":Landroid/view/View;
    .end local v4    # "contentView":Landroid/view/ViewGroup;
    .end local v6    # "view":Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setupViews()V

    .line 713
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showFirstRunWorkspaceCling()V

    .line 715
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->registerContentObservers()V

    .line 717
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->lockAllApps()V

    .line 719
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 720
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-direct {p0, v7}, Lcom/android/launcher2/Launcher;->restoreState(Landroid/os/Bundle;)V

    .line 723
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v7, :cond_2

    .line 724
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v7}, Lcom/android/launcher2/AppsCustomizePagedView;->onPackagesUpdated()V

    .line 731
    :cond_2
    iget-boolean v7, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v7, :cond_3

    .line 732
    sget-boolean v7, Lcom/android/launcher2/Launcher;->sPausedFromUserAction:Z

    if-eqz v7, :cond_5

    .line 735
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v7, v11, v12}, Lcom/android/launcher2/LauncherModel;->startLoader(ZI)V

    .line 743
    :cond_3
    :goto_0
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherModel;->isAllAppsLoaded()Z

    move-result v7

    if-nez v7, :cond_4

    .line 744
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v7}, Lcom/android/launcher2/AppsCustomizePagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 745
    .local v2, "appsCustomizeContentParent":Landroid/view/ViewGroup;
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mInflater:Landroid/view/LayoutInflater;

    sget v8, Lcom/android/launcher/R$layout;->apps_customize_progressbar:I

    invoke-virtual {v7, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 749
    .end local v2    # "appsCustomizeContentParent":Landroid/view/ViewGroup;
    :cond_4
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v7, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 750
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v7, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 752
    new-instance v5, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v5, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 753
    .local v5, "filter":Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v5}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 755
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateGlobalIcons()V

    .line 758
    invoke-virtual {p0, v11}, Lcom/android/launcher2/Launcher;->unlockScreenOrientation(Z)V

    .line 759
    return-void

    .line 739
    .end local v5    # "filter":Landroid/content/IntentFilter;
    :cond_5
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v8

    invoke-virtual {v7, v11, v8}, Lcom/android/launcher2/LauncherModel;->startLoader(ZI)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/high16 v8, 0x10800000

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2000
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2034
    :goto_0
    return v4

    .line 2004
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2006
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2007
    .local v2, "manageApps":Landroid/content/Intent;
    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2009
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.settings.SETTINGS"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2010
    .local v3, "settings":Landroid/content/Intent;
    const/high16 v6, 0x10200000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2012
    sget v6, Lcom/android/launcher/R$string;->help_url:I

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2013
    .local v1, "helpUrl":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2014
    .local v0, "help":Landroid/content/Intent;
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2017
    const/4 v6, 0x2

    sget v7, Lcom/android/launcher/R$string;->menu_wallpaper:I

    invoke-interface {p1, v5, v6, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    .line 2018
    const v7, 0x108003f

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2019
    const/16 v7, 0x57

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2020
    const/4 v6, 0x3

    sget v7, Lcom/android/launcher/R$string;->menu_manage_apps:I

    invoke-interface {p1, v4, v6, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    .line 2021
    const v7, 0x1080042

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2022
    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v6

    .line 2023
    const/16 v7, 0x4d

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2024
    const/4 v6, 0x4

    sget v7, Lcom/android/launcher/R$string;->menu_settings:I

    invoke-interface {p1, v4, v6, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    .line 2025
    const v7, 0x1080049

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2026
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v6

    .line 2027
    const/16 v7, 0x50

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2028
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2029
    const/4 v6, 0x5

    sget v7, Lcom/android/launcher/R$string;->menu_help:I

    invoke-interface {p1, v4, v6, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    .line 2030
    const v6, 0x1080040

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2031
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v4

    .line 2032
    const/16 v6, 0x48

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    :cond_1
    move v4, v5

    .line 2034
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1880
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1883
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1884
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1885
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1888
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 1889
    .local v0, "app":Lcom/android/launcher2/LauncherApplication;
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherModel;->stopLoader()V

    .line 1890
    invoke-virtual {v0, v4}, Lcom/android/launcher2/LauncherApplication;->setLauncher(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;

    .line 1893
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1897
    :goto_0
    iput-object v4, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 1899
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1901
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/method/TextKeyListener;->release()V

    .line 1905
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    if-eqz v2, :cond_0

    .line 1906
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherModel;->unbindItemInfosAndClearQueuedBindRunnables()V

    .line 1909
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1910
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1912
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v2}, Lcom/android/launcher2/DragLayer;->clearAllResizeFrames()V

    .line 1913
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1914
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->removeAllViews()V

    .line 1915
    iput-object v4, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 1916
    iput-object v4, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    .line 1918
    invoke-static {}, Lcom/android/launcher2/LauncherAnimUtils;->onDestroyActivity()V

    .line 1919
    return-void

    .line 1894
    :catch_0
    move-exception v1

    .line 1895
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v2, "Launcher"

    const-string v3, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1620
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 1621
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    .line 1623
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-eqz v0, :cond_0

    .line 1624
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1625
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 1627
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 1628
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    .line 1168
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    .line 1169
    .local v3, "uniChar":I
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 1170
    .local v1, "handled":Z
    if-lez v3, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v4

    .line 1171
    .local v2, "isKeyNotWhitespace":Z
    :goto_0
    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->acceptFilter()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    .line 1172
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v6, v7, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1174
    .local v0, "gotKey":Z
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 1181
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    move-result v1

    .line 1190
    .end local v0    # "gotKey":Z
    .end local v1    # "handled":Z
    :cond_0
    :goto_1
    return v1

    .line 1170
    .end local v2    # "isKeyNotWhitespace":Z
    .restart local v1    # "handled":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1186
    .restart local v2    # "isKeyNotWhitespace":Z
    :cond_2
    const/16 v5, 0x52

    if-ne p1, v5, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    .line 1187
    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2705
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isDraggingEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2737
    :cond_0
    :goto_0
    return v3

    .line 2706
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2707
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v6, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-ne v5, v6, :cond_0

    .line 2709
    instance-of v5, p1, Lcom/android/launcher2/CellLayout;

    if-nez v5, :cond_2

    .line 2710
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1    # "v":Landroid/view/View;
    check-cast p1, Landroid/view/View;

    .line 2713
    .restart local p1    # "v":Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    .line 2714
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$CellInfo;

    .line 2716
    .local v2, "longClickCellInfo":Lcom/android/launcher2/CellLayout$CellInfo;
    if-nez v2, :cond_3

    move v3, v4

    .line 2717
    goto :goto_0

    .line 2722
    :cond_3
    iget-object v1, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2723
    .local v1, "itemUnderLongClick":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->allowLongPress()Z

    move-result v5

    if-nez v5, :cond_6

    move v0, v3

    .line 2724
    .local v0, "allowLongPress":Z
    :goto_1
    if-eqz v0, :cond_5

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v5}, Lcom/android/launcher2/DragController;->isDragging()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2725
    if-eqz v1, :cond_4

    instance-of v5, v1, Lcom/android/launcher2/FirstView;

    if-eqz v5, :cond_7

    .line 2727
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v3, v4}, Lcom/android/launcher2/Workspace;->performHapticFeedback(II)Z

    .line 2729
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->startWallpaper()V

    :cond_5
    :goto_2
    move v3, v4

    .line 2737
    goto :goto_0

    .end local v0    # "allowLongPress":Z
    :cond_6
    move v0, v4

    .line 2723
    goto :goto_1

    .line 2731
    .restart local v0    # "allowLongPress":Z
    :cond_7
    instance-of v3, v1, Lcom/android/launcher2/Folder;

    if-nez v3, :cond_5

    .line 2733
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/Workspace;->startDrag(Lcom/android/launcher2/CellLayout$CellInfo;)V

    goto :goto_2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v4, 0x400000

    .line 1759
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1762
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1764
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeSystemDialogs()V

    .line 1767
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_1

    const/4 v0, 0x1

    .line 1770
    .local v0, "alreadyOnHome":Z
    :goto_0
    new-instance v1, Lcom/android/launcher2/Launcher$10;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/Launcher$10;-><init>(Lcom/android/launcher2/Launcher;Z)V

    .line 1818
    .local v1, "processIntent":Ljava/lang/Runnable;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->hasWindowFocus()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1821
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const-wide/16 v3, 0x15e

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/launcher2/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1828
    .end local v0    # "alreadyOnHome":Z
    .end local v1    # "processIntent":Ljava/lang/Runnable;
    :cond_0
    :goto_1
    return-void

    .line 1767
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1824
    .restart local v0    # "alreadyOnHome":Z
    .restart local v1    # "processIntent":Ljava/lang/Runnable;
    :cond_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2052
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2058
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 2054
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->startWallpaper()V

    .line 2055
    const/4 v0, 0x1

    goto :goto_0

    .line 2052
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPageBoundSynchronously(I)V
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 4235
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4236
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1121
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    .line 1123
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1124
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 1125
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    .line 1126
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->resetLastGestureUpTime()V

    .line 1127
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2039
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2041
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v3}, Lcom/android/launcher2/AppsCustomizeTabHost;->isTransitioning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2047
    :goto_0
    return v1

    .line 2044
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v3}, Lcom/android/launcher2/AppsCustomizeTabHost;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    move v0, v2

    .line 2045
    .local v0, "allAppsVisible":Z
    :goto_1
    if-eqz v0, :cond_2

    :goto_2
    invoke-interface {p1, v2, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    move v1, v2

    .line 2047
    goto :goto_0

    .end local v0    # "allAppsVisible":Z
    :cond_1
    move v0, v1

    .line 2044
    goto :goto_1

    .restart local v0    # "allAppsVisible":Z
    :cond_2
    move v1, v2

    .line 2045
    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 1832
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1833
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1836
    return-void

    .line 1833
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1834
    .local v0, "page":I
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Workspace;->restoreInstanceStateForChild(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1056
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1059
    sget v0, Lcom/android/launcher2/LauncherProvider;->isBoot:I

    .line 1060
    .local v0, "getboot":I
    if-ne v0, v2, :cond_0

    .line 1061
    sput v3, Lcom/android/launcher2/LauncherProvider;->isBoot:I

    .line 1068
    :cond_0
    sget-object v1, Lcom/android/launcher2/DefaultWorkspace;->mOnResumeAllapp:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1069
    sget-object v1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    .line 1070
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/DefaultWorkspace;->mOnResumeAllapp:Ljava/lang/Boolean;

    .line 1072
    :cond_1
    const-string v1, "###"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onResume###"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    sget-object v4, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-ne v1, v4, :cond_7

    .line 1074
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 1078
    :cond_2
    :goto_0
    sget-object v1, Lcom/android/launcher2/Launcher$State;->NONE:Lcom/android/launcher2/Launcher$State;

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    .line 1081
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v4, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-ne v1, v4, :cond_8

    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->setWorkspaceBackground(Z)V

    .line 1084
    invoke-static {p0}, Lcom/android/launcher2/InstallShortcutReceiver;->flushInstallQueue(Landroid/content/Context;)V

    .line 1086
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 1087
    sput-boolean v3, Lcom/android/launcher2/Launcher;->sPausedFromUserAction:Z

    .line 1088
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v1, :cond_4

    .line 1089
    :cond_3
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    .line 1090
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Lcom/android/launcher2/LauncherModel;->startLoader(ZI)V

    .line 1091
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    .line 1092
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    .line 1097
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

    if-eqz v1, :cond_5

    .line 1099
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/BubbleTextView;->setStayPressed(Z)V

    .line 1101
    :cond_5
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v1, :cond_6

    .line 1103
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->resetDrawableState()V

    .line 1109
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->reinflateWidgetsIfNecessary()V

    .line 1113
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateGlobalIcons()V

    .line 1114
    return-void

    .line 1075
    :cond_7
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    sget-object v4, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v1, v4, :cond_2

    .line 1076
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->showAllApps(Z)V

    goto :goto_0

    :cond_8
    move v1, v3

    .line 1081
    goto :goto_1
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->stopLoader()V

    .line 1133
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->surrender()V

    .line 1136
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1840
    const-string v2, "launcher.current_screen"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getNextPage()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1841
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1843
    const-string v2, "hdd"

    const-string v3, "onSaveInstanceState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    const-string v2, "launcher.state"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher$State;->ordinal()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1847
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 1849
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v2, v2, Lcom/android/launcher2/ItemInfo;->screen:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 1850
    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    if-eqz v2, :cond_0

    .line 1851
    const-string v2, "launcher.add_container"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-wide v3, v3, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1852
    const-string v2, "launcher.add_screen"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v3, v3, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1853
    const-string v2, "launcher.add_cell_x"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v3, v3, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1854
    const-string v2, "launcher.add_cell_y"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v3, v3, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1855
    const-string v2, "launcher.add_span_x"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v3, v3, Lcom/android/launcher2/ItemInfo;->spanX:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1856
    const-string v2, "launcher.add_span_y"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v3, v3, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1857
    const-string v2, "launcher.add_widget_info"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1860
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    if-eqz v2, :cond_1

    .line 1861
    const-string v2, "launcher.rename_folder"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1862
    const-string v2, "launcher.rename_folder_id"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    iget-wide v3, v3, Lcom/android/launcher2/FolderInfo;->id:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1866
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    if-eqz v2, :cond_3

    .line 1867
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 1868
    .local v1, "currentTabTag":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1869
    const-string v2, "hdd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "currentTabTag = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    const-string v2, "apps_customize_currentTab"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppsCustomizePagedView;->getSaveInstanceStateIndex()I

    move-result v0

    .line 1873
    .local v0, "currentIndex":I
    const-string v2, "apps_customize_currentIndex"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1874
    const-string v2, "hdd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "currentIndex = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    .end local v0    # "currentIndex":I
    .end local v1    # "currentTabTag":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2063
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/android/launcher2/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 2065
    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2374
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 2375
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchDownAllAppsButton(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2428
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 2429
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 3509
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    .line 3510
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 3511
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->onTrimMemory()V

    .line 3513
    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 762
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 763
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/Launcher;->sPausedFromUserAction:Z

    .line 764
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    .line 3517
    if-nez p1, :cond_0

    .line 3520
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    .line 3530
    :goto_0
    return-void

    .line 3523
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v1, Lcom/android/launcher2/Launcher$19;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$19;-><init>(Lcom/android/launcher2/Launcher;)V

    .line 3528
    const-wide/16 v2, 0x1f4

    .line 3523
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 1631
    if-nez p1, :cond_3

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    .line 1632
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 1636
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    if-eqz v1, :cond_2

    .line 1638
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    if-eqz v1, :cond_0

    .line 1639
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->onWindowVisible()V

    .line 1641
    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    if-nez v1, :cond_1

    .line 1642
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1647
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/android/launcher2/Launcher$9;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/Launcher$9;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1663
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateAppMarketIcon()V

    .line 1664
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->clearTypedText()V

    .line 1666
    :cond_2
    return-void

    .line 1631
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openFolder(Lcom/android/launcher2/FolderIcon;)V
    .locals 5
    .param p1, "folderIcon"    # Lcom/android/launcher2/FolderIcon;

    .prologue
    .line 2662
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 2663
    .local v0, "folder":Lcom/android/launcher2/Folder;
    iget-object v1, v0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    .line 2665
    .local v1, "info":Lcom/android/launcher2/FolderInfo;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/launcher2/FolderInfo;->opened:Z

    .line 2669
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2670
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/DragLayer;->addView(Landroid/view/View;)V

    .line 2671
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 2676
    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->animateOpen()V

    .line 2677
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->growAndFadeOutFolderIcon(Lcom/android/launcher2/FolderIcon;)V

    .line 2678
    return-void

    .line 2673
    :cond_0
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Opening folder ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") which already has a parent ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2674
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2673
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method processShortcut(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2186
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/launcher/R$string;->group_applications:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2187
    .local v0, "applicationName":Ljava/lang/String;
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2189
    .local v3, "shortcutName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2190
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2191
    .local v1, "mainIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2193
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2194
    .local v2, "pickIntent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2195
    const-string v4, "android.intent.extra.TITLE"

    sget v5, Lcom/android/launcher/R$string;->title_select_application:I

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 2196
    const/4 v4, 0x6

    invoke-virtual {p0, v2, v4}, Lcom/android/launcher2/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 2200
    .end local v1    # "mainIntent":Landroid/content/Intent;
    .end local v2    # "pickIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 2198
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Lcom/android/launcher2/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method processShortcutFromDrop(Landroid/content/ComponentName;JI[I[I)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "cell"    # [I
    .param p6, "loc"    # [I

    .prologue
    .line 2110
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    .line 2111
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput-wide p2, v1, Lcom/android/launcher2/ItemInfo;->container:J

    .line 2112
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput p4, v1, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 2113
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput-object p6, v1, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    .line 2115
    if-eqz p5, :cond_0

    .line 2116
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 v2, 0x0

    aget v2, p5, v2

    iput v2, v1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 2117
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 v2, 0x1

    aget v2, p5, v2

    iput v2, v1, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 2120
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2121
    .local v0, "createShortcutIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2122
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->processShortcut(Landroid/content/Intent;)V

    .line 2123
    return-void
.end method

.method processWallpaper(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2203
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2204
    return-void
.end method

.method public removeAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V
    .locals 1
    .param p1, "launcherInfo"    # Lcom/android/launcher2/LauncherAppWidgetInfo;

    .prologue
    .line 1733
    iget-object v0, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->removeWidgetToAutoAdvance(Landroid/view/View;)V

    .line 1734
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1735
    return-void
.end method

.method removeFolder(Lcom/android/launcher2/FolderInfo;)V
    .locals 3
    .param p1, "folder"    # Lcom/android/launcher2/FolderInfo;

    .prologue
    .line 2225
    sget-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/android/launcher2/FolderInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2226
    return-void
.end method

.method removeWidgetToAutoAdvance(Landroid/view/View;)V
    .locals 1
    .param p1, "hostView"    # Landroid/view/View;

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1727
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1728
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 1730
    :cond_0
    return-void
.end method

.method public setAppsCustomizeTabHost(F)V
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 2901
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppsCustomizeTabHost;->setY(F)V

    .line 2902
    return-void
.end method

.method public setAppsCustomizeTabHostHide(I)V
    .locals 2
    .param p1, "Height"    # I

    .prologue
    .line 2910
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->setVisibility(I)V

    .line 2911
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->setTranslationY(F)V

    .line 2912
    return-void
.end method

.method public setAppsCustomizeTabHostShow()V
    .locals 2

    .prologue
    .line 2905
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->setVisibility(I)V

    .line 2906
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->setTranslationY(F)V

    .line 2907
    return-void
.end method

.method public setListener(Lcom/android/launcher2/Launcher$LauncherListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher2/Launcher$LauncherListener;

    .prologue
    .line 2314
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->launcherListener:Lcom/android/launcher2/Launcher$LauncherListener;

    .line 2315
    return-void
.end method

.method public setLoadOnResume()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4067
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    if-eqz v1, :cond_0

    .line 4068
    const-string v1, "Launcher"

    const-string v2, "setLoadOnResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4069
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    .line 4072
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setResumeState(Lcom/android/launcher2/Launcher$State;)V
    .locals 0
    .param p1, "i"    # Lcom/android/launcher2/Launcher$State;

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    .line 1052
    return-void
.end method

.method showAllApps(Z)V
    .locals 3
    .param p1, "animated"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3612
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-eq v0, v1, :cond_0

    .line 3632
    :goto_0
    return-void

    .line 3614
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/android/launcher2/Launcher;->showAppsCustomizeHelper(ZZ)V

    .line 3616
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->requestFocus()Z

    .line 3622
    sget-object v0, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 3625
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    .line 3626
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 3627
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 3630
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 3631
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public showAppsCustomizeHelper(ZZ)V
    .locals 23
    .param p1, "animated"    # Z
    .param p2, "springLoaded"    # Z

    .prologue
    .line 2926
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 2927
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2928
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 2930
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 2932
    .local v19, "res":Landroid/content/res/Resources;
    sget v2, Lcom/android/launcher/R$integer;->config_appsCustomizeZoomInTime:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    .line 2933
    .local v16, "duration":I
    sget v2, Lcom/android/launcher/R$integer;->config_appsCustomizeFadeInTime:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    .line 2934
    .local v17, "fadeDuration":I
    sget v2, Lcom/android/launcher/R$integer;->config_appsCustomizeZoomScaleFactor:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v10, v2

    .line 2935
    .local v10, "scale":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 2936
    .local v5, "fromView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    .line 2938
    .local v4, "toView":Lcom/android/launcher2/AppsCustomizeTabHost;
    sget v2, Lcom/android/launcher/R$integer;->config_workspaceAppsCustomizeAnimationStagger:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v21

    .line 2940
    .local v21, "startDelay":I
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/android/launcher2/Launcher;->setPivotsForZoom(Landroid/view/View;F)V

    .line 2944
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    move/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher2/Workspace;->getChangeStateAnimation(Lcom/android/launcher2/Workspace$State;Z)Landroid/animation/Animator;

    move-result-object v22

    .line 2946
    .local v22, "workspaceAnim":Landroid/animation/Animator;
    if-eqz p1, :cond_5

    .line 2947
    invoke-virtual {v4, v10}, Lcom/android/launcher2/AppsCustomizeTabHost;->setScaleX(F)V

    .line 2948
    invoke-virtual {v4, v10}, Lcom/android/launcher2/AppsCustomizeTabHost;->setScaleY(F)V

    .line 2949
    new-instance v20, Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lcom/android/launcher2/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 2951
    .local v20, "scaleAnim":Lcom/android/launcher2/LauncherViewPropertyAnimator;
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v2

    .line 2952
    move/from16 v0, v16

    int-to-long v11, v0

    invoke-virtual {v2, v11, v12}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 2953
    new-instance v3, Lcom/android/launcher2/Workspace$ZoomOutInterpolator;

    invoke-direct {v3}, Lcom/android/launcher2/Workspace$ZoomOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2955
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setVisibility(I)V

    .line 2956
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setAlpha(F)V

    .line 2958
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v4, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2959
    move/from16 v0, v17

    int-to-long v11, v0

    invoke-virtual {v2, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 2960
    .local v13, "alphaAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v13, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2961
    new-instance v2, Lcom/android/launcher2/Launcher$12;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5, v4}, Lcom/android/launcher2/Launcher$12;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;Lcom/android/launcher2/AppsCustomizeTabHost;)V

    invoke-virtual {v13, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2986
    invoke-static {}, Lcom/android/launcher2/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 2987
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    move/from16 v0, v21

    int-to-long v11, v0

    invoke-virtual {v2, v11, v12}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 2988
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    move/from16 v0, v21

    int-to-long v11, v0

    invoke-virtual {v2, v11, v12}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 2990
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/launcher2/Launcher$13;

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/Launcher$13;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/AppsCustomizeTabHost;Landroid/view/View;ZZ)V

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3030
    if-eqz v22, :cond_1

    .line 3031
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 3034
    :cond_1
    const/4 v14, 0x0

    .line 3037
    .local v14, "delayAnim":Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 3038
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 3042
    invoke-interface {v4}, Lcom/android/launcher2/LauncherTransitionable;->getContent()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-eqz v2, :cond_2

    .line 3043
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getMeasuredWidth()I

    move-result v2

    if-eqz v2, :cond_2

    .line 3044
    invoke-virtual {v4}, Lcom/android/launcher2/AppsCustomizeTabHost;->getMeasuredWidth()I

    move-result v2

    if-nez v2, :cond_3

    .line 3045
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v18

    .line 3046
    .local v18, "observer":Landroid/view/ViewTreeObserver;
    const/4 v14, 0x1

    .line 3051
    :goto_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 3052
    .local v8, "stateAnimation":Landroid/animation/AnimatorSet;
    new-instance v6, Lcom/android/launcher2/Launcher$14;

    move-object/from16 v7, p0

    move-object v9, v4

    move-object v11, v5

    move/from16 v12, p1

    invoke-direct/range {v6 .. v12}, Lcom/android/launcher2/Launcher$14;-><init>(Lcom/android/launcher2/Launcher;Landroid/animation/AnimatorSet;Lcom/android/launcher2/AppsCustomizeTabHost;FLandroid/view/View;Z)V

    .line 3072
    .local v6, "startAnimRunnable":Ljava/lang/Runnable;
    if-eqz v14, :cond_4

    .line 3073
    new-instance v15, Lcom/android/launcher2/Launcher$15;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v4, v6, v1}, Lcom/android/launcher2/Launcher$15;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/AppsCustomizeTabHost;Ljava/lang/Runnable;Landroid/view/ViewTreeObserver;)V

    .line 3079
    .local v15, "delayedStart":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3116
    .end local v6    # "startAnimRunnable":Ljava/lang/Runnable;
    .end local v8    # "stateAnimation":Landroid/animation/AnimatorSet;
    .end local v13    # "alphaAnim":Landroid/animation/ObjectAnimator;
    .end local v14    # "delayAnim":Z
    .end local v15    # "delayedStart":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .end local v18    # "observer":Landroid/view/ViewTreeObserver;
    .end local v20    # "scaleAnim":Lcom/android/launcher2/LauncherViewPropertyAnimator;
    :goto_1
    return-void

    .line 3048
    .restart local v13    # "alphaAnim":Landroid/animation/ObjectAnimator;
    .restart local v14    # "delayAnim":Z
    .restart local v20    # "scaleAnim":Lcom/android/launcher2/LauncherViewPropertyAnimator;
    :cond_3
    const/16 v18, 0x0

    .restart local v18    # "observer":Landroid/view/ViewTreeObserver;
    goto :goto_0

    .line 3081
    .restart local v6    # "startAnimRunnable":Ljava/lang/Runnable;
    .restart local v8    # "stateAnimation":Landroid/animation/AnimatorSet;
    :cond_4
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 3087
    .end local v6    # "startAnimRunnable":Ljava/lang/Runnable;
    .end local v8    # "stateAnimation":Landroid/animation/AnimatorSet;
    .end local v13    # "alphaAnim":Landroid/animation/ObjectAnimator;
    .end local v14    # "delayAnim":Z
    .end local v18    # "observer":Landroid/view/ViewTreeObserver;
    .end local v20    # "scaleAnim":Lcom/android/launcher2/LauncherViewPropertyAnimator;
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setTranslationX(F)V

    .line 3088
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setTranslationY(F)V

    .line 3089
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v4, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setScaleX(F)V

    .line 3090
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v4, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setScaleY(F)V

    .line 3091
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v4, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setAlpha(F)V

    .line 3092
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setVisibility(I)V

    .line 3093
    invoke-virtual {v4}, Lcom/android/launcher2/AppsCustomizeTabHost;->bringToFront()V

    .line 3095
    if-nez p2, :cond_6

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3097
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->hideScrollingIndicator(Z)V

    .line 3098
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->hideDockDivider()V

    .line 3101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz v2, :cond_6

    .line 3102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/SearchDropTargetBar;->hideSearchBar(Z)V

    .line 3105
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 3106
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 3107
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 3108
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 3109
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 3110
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 3113
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    goto :goto_1

    .line 2958
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method showDockDivider(Z)V
    .locals 9
    .param p1, "animated"    # Z

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 3682
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mQsbDivider:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDockDivider:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 3683
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mQsbDivider:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3684
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDockDivider:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3685
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 3686
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3687
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mQsbDivider:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 3688
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDockDivider:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 3689
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    .line 3691
    :cond_0
    if-eqz p1, :cond_2

    .line 3692
    invoke-static {}, Lcom/android/launcher2/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    .line 3693
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mQsbDivider:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v8, [F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    .line 3694
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDockDivider:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v8, [F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    .line 3693
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3695
    const/4 v0, 0x0

    .line 3696
    .local v0, "duration":I
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz v1, :cond_1

    .line 3697
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v1}, Lcom/android/launcher2/SearchDropTargetBar;->getTransitionInDuration()I

    move-result v0

    .line 3699
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3700
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 3703
    .end local v0    # "duration":I
    :cond_2
    return-void
.end method

.method public showFirstRunAllAppsCling([I)V
    .locals 3
    .param p1, "position"    # [I

    .prologue
    const/4 v2, 0x0

    .line 4671
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isClingsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4672
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cling.allapps.dismissed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4673
    sget v0, Lcom/android/launcher/R$id;->all_apps_cling:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/launcher2/Launcher;->initCling(I[IZI)Lcom/android/launcher2/Cling;

    .line 4677
    :goto_0
    return-void

    .line 4675
    :cond_0
    sget v0, Lcom/android/launcher/R$id;->all_apps_cling:I

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->removeCling(I)V

    goto :goto_0
.end method

.method public showFirstRunFoldersCling()Lcom/android/launcher2/Cling;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 4680
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isClingsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4681
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "cling.folder.dismissed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4682
    sget v1, Lcom/android/launcher/R$id;->folder_cling:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/launcher2/Launcher;->initCling(I[IZI)Lcom/android/launcher2/Cling;

    move-result-object v0

    .line 4685
    :goto_0
    return-object v0

    .line 4684
    :cond_0
    sget v1, Lcom/android/launcher/R$id;->folder_cling:I

    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->removeCling(I)V

    goto :goto_0
.end method

.method public showFirstRunWorkspaceCling()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4647
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isClingsEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4648
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cling.workspace.dismissed"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4649
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->skipCustomClingIfNoAccounts()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4653
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v5, "DEFAULT_WORKSPACE_RESOURCE_ID"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 4654
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/launcher/R$bool;->config_useCustomClings:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4656
    sget v4, Lcom/android/launcher/R$id;->workspace_cling:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4657
    .local v0, "cling":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 4658
    .local v2, "clingParent":Landroid/view/ViewGroup;
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 4659
    .local v1, "clingIndex":I
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 4660
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mInflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/android/launcher/R$layout;->custom_workspace_cling:I

    invoke-virtual {v4, v5, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 4661
    .local v3, "customCling":Landroid/view/View;
    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 4662
    sget v4, Lcom/android/launcher/R$id;->workspace_cling:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 4664
    .end local v0    # "cling":Landroid/view/View;
    .end local v1    # "clingIndex":I
    .end local v2    # "clingParent":Landroid/view/ViewGroup;
    .end local v3    # "customCling":Landroid/view/View;
    :cond_0
    sget v4, Lcom/android/launcher/R$id;->workspace_cling:I

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v6, v6}, Lcom/android/launcher2/Launcher;->initCling(I[IZI)Lcom/android/launcher2/Cling;

    .line 4668
    :goto_0
    return-void

    .line 4666
    :cond_1
    sget v4, Lcom/android/launcher/R$id;->workspace_cling:I

    invoke-direct {p0, v4}, Lcom/android/launcher2/Launcher;->removeCling(I)V

    goto :goto_0
.end method

.method showHotseat(Z)V
    .locals 4
    .param p1, "animated"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 3717
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3718
    if-eqz p1, :cond_2

    .line 3719
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher2/Hotseat;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 3720
    const/4 v0, 0x0

    .line 3721
    .local v0, "duration":I
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz v1, :cond_0

    .line 3722
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v1}, Lcom/android/launcher2/SearchDropTargetBar;->getTransitionInDuration()I

    move-result v0

    .line 3724
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 3730
    .end local v0    # "duration":I
    :cond_1
    :goto_0
    return-void

    .line 3727
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Hotseat;->setAlpha(F)V

    goto :goto_0
.end method

.method showHotseatSliding()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3734
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Hotseat;->setAlpha(F)V

    .line 3735
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    .line 3736
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/SearchDropTargetBar;->showSearchBar(Z)V

    .line 3737
    return-void
.end method

.method showOutOfSpaceMessage(Z)V
    .locals 3
    .param p1, "isHotseatLayout"    # Z

    .prologue
    .line 1738
    if-eqz p1, :cond_0

    sget v0, Lcom/android/launcher/R$string;->hotseat_out_of_space:I

    .line 1739
    .local v0, "strId":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1740
    return-void

    .line 1738
    .end local v0    # "strId":I
    :cond_0
    sget v0, Lcom/android/launcher/R$string;->out_of_space:I

    goto :goto_0
.end method

.method showWorkspace(Z)V
    .locals 1
    .param p1, "animated"    # Z

    .prologue
    .line 3533
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->showWorkspace(ZLjava/lang/Runnable;)V

    .line 3534
    return-void
.end method

.method showWorkspace(ZLjava/lang/Runnable;)V
    .locals 5
    .param p1, "animated"    # Z
    .param p2, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3537
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v4, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-eq v3, v4, :cond_2

    .line 3538
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v4, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    if-ne v3, v4, :cond_3

    move v0, v1

    .line 3539
    .local v0, "wasInSpringLoadedMode":Z
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    .line 3541
    sget-object v3, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    invoke-direct {p0, v3, v2, v2, p2}, Lcom/android/launcher2/Launcher;->hideAppsCustomizeHelper(Lcom/android/launcher2/Launcher$State;ZZLjava/lang/Runnable;)V

    .line 3545
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz v3, :cond_0

    .line 3546
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/SearchDropTargetBar;->showSearchBar(Z)V

    .line 3550
    :cond_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->showDockDivider(Z)V

    .line 3553
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAllAppsButton:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 3554
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAllAppsButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 3558
    .end local v0    # "wasInSpringLoadedMode":Z
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/Workspace;->flashScrollingIndicator(Z)V

    .line 3561
    sget-object v2, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 3564
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    .line 3565
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 3568
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 3569
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 3571
    return-void

    :cond_3
    move v0, v2

    .line 3538
    goto :goto_0
.end method

.method startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2467
    const/high16 v5, 0x10000000

    invoke-virtual {p2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2472
    if-eqz p1, :cond_0

    .line 2473
    :try_start_0
    const-string v5, "com.android.launcher.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v2, v4

    .line 2474
    .local v2, "useLaunchAnimation":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 2475
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2476
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 2475
    invoke-static {p1, v5, v6, v7, v8}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 2478
    .local v1, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p0, p2, v5}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .end local v1    # "opts":Landroid/app/ActivityOptions;
    :goto_1
    move v3, v4

    .line 2490
    .end local v2    # "useLaunchAnimation":Z
    :goto_2
    return v3

    :cond_0
    move v2, v3

    .line 2472
    goto :goto_0

    .line 2480
    .restart local v2    # "useLaunchAnimation":Z
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2483
    .end local v2    # "useLaunchAnimation":Z
    :catch_0
    move-exception v0

    .line 2484
    .local v0, "e":Ljava/lang/SecurityException;
    sget v4, Lcom/android/launcher/R$string;->activity_not_found:I

    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2485
    const-string v4, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Launcher does not have the permission to launch "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2486
    const-string v6, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2487
    const-string v6, "or use the exported attribute for this activity. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2488
    const-string v6, "tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2485
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 1927
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 1928
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1929
    return-void
.end method

.method startActivityForResultSafely(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 2506
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2515
    :goto_0
    return-void

    .line 2507
    :catch_0
    move-exception v0

    .line 2508
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget v1, Lcom/android/launcher/R$string;->activity_not_found:I

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2509
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 2510
    .local v0, "e":Ljava/lang/SecurityException;
    sget v1, Lcom/android/launcher/R$string;->activity_not_found:I

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2511
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Launcher does not have the permission to launch "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2512
    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2513
    const-string v3, "or use the exported attribute for this activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2511
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    .line 2494
    const/4 v1, 0x0

    .line 2496
    .local v1, "success":Z
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2501
    :goto_0
    return v1

    .line 2497
    :catch_0
    move-exception v0

    .line 2498
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget v2, Lcom/android/launcher/R$string;->activity_not_found:I

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2499
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to launch. tag="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startApplicationDetailsActivity(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 2440
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2441
    .local v1, "packageName":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 2442
    const-string v3, "package"

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2441
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2443
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10800000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2444
    const-string v2, "startApplicationDetailsActivity"

    invoke-virtual {p0, v4, v0, v2}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 2445
    return-void
.end method

.method startApplicationUninstallActivity(Lcom/android/launcher2/ApplicationInfo;)V
    .locals 6
    .param p1, "appInfo"    # Lcom/android/launcher2/ApplicationInfo;

    .prologue
    .line 2448
    iget v4, p1, Lcom/android/launcher2/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 2451
    sget v2, Lcom/android/launcher/R$string;->uninstall_system_app_text:I

    .line 2452
    .local v2, "messageId":I
    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2464
    .end local v2    # "messageId":I
    :goto_0
    return-void

    .line 2455
    :cond_0
    const-string v4, "hdd"

    const-string v5, "startApplicationUninstallActivity"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    iget-object v4, p1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2457
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 2458
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    .line 2459
    const-string v4, "android.intent.action.DELETE"

    const-string v5, "package"

    invoke-static {v5, v3, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2458
    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2460
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10800000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2462
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startBinding()V
    .locals 5

    .prologue
    .line 4097
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 4099
    .local v3, "workspace":Lcom/android/launcher2/Workspace;
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimatePage:I

    .line 4100
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4101
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->clearDropTargets()V

    .line 4102
    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 4103
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 4108
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 4109
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v4, :cond_0

    .line 4110
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v4}, Lcom/android/launcher2/Hotseat;->resetLayout()V

    .line 4112
    :cond_0
    return-void

    .line 4105
    :cond_1
    invoke-virtual {v3, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 4106
    .local v2, "layoutParent":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->removeAllViewsInLayout()V

    .line 4103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "sourceBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1964
    const-string v5, "search"

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    .line 1965
    .local v4, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {v4}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v2

    .line 1966
    .local v2, "globalSearchActivity":Landroid/content/ComponentName;
    if-nez v2, :cond_0

    .line 1967
    const-string v5, "Launcher"

    const-string v6, "No global search activity found."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    :goto_0
    return-void

    .line 1970
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1971
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1972
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1974
    if-nez p3, :cond_4

    .line 1975
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "appSearchData":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 1980
    .restart local p3    # "appSearchData":Landroid/os/Bundle;
    :goto_1
    const-string v5, "source"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1981
    const-string v5, "source"

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    :cond_1
    const-string v5, "app_data"

    invoke-virtual {v3, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1984
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1985
    const-string v5, "query"

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1987
    :cond_2
    if-eqz p2, :cond_3

    .line 1988
    const-string v5, "select_query"

    invoke-virtual {v3, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1990
    :cond_3
    invoke-virtual {v3, p4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1992
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1993
    :catch_0
    move-exception v1

    .line 1994
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Global search activity not found: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1977
    .end local v1    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local p3    # "appSearchData":Landroid/os/Bundle;
    .local v0, "appSearchData":Landroid/os/Bundle;
    move-object p3, v0

    .end local v0    # "appSearchData":Landroid/os/Bundle;
    .restart local p3    # "appSearchData":Landroid/os/Bundle;
    goto :goto_1
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 3
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "globalSearch"    # Z

    .prologue
    .line 1939
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 1941
    if-nez p1, :cond_0

    .line 1943
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    .line 1945
    :cond_0
    if-nez p3, :cond_1

    .line 1946
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "appSearchData":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 1947
    .restart local p3    # "appSearchData":Landroid/os/Bundle;
    const-string v1, "source"

    const-string v2, "launcher-search"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1950
    .local v0, "sourceBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz v1, :cond_2

    .line 1951
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v1}, Lcom/android/launcher2/SearchDropTargetBar;->getSearchBarBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1954
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher2/Launcher;->startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V

    .line 1956
    return-void
.end method

.method unlockAllApps()V
    .locals 0

    .prologue
    .line 3711
    return-void
.end method

.method public unlockScreenOrientation(Z)V
    .locals 4
    .param p1, "immediate"    # Z

    .prologue
    .line 4542
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4543
    if-eqz p1, :cond_1

    .line 4544
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    .line 4553
    :cond_0
    :goto_0
    return-void

    .line 4546
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/Launcher$26;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$26;-><init>(Lcom/android/launcher2/Launcher;)V

    .line 4550
    const-wide/16 v2, 0x1f4

    .line 4546
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method updateWallpaperVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/high16 v2, 0x100000

    .line 2811
    if-eqz p1, :cond_1

    move v1, v2

    .line 2812
    .local v1, "wpflags":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v3, v2

    .line 2814
    .local v0, "curflags":I
    if-eq v1, v0, :cond_0

    .line 2815
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 2817
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->setWorkspaceBackground(Z)V

    .line 2818
    return-void

    .line 2811
    .end local v0    # "curflags":I
    .end local v1    # "wpflags":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
