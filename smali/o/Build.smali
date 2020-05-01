.class public abstract Lo/Build;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Build$TaskStackBuilder;,
        Lo/Build$Context;,
        Lo/Build$Intent;,
        Lo/Build$Canvas;,
        Lo/Build$SharedElementCallback;,
        Lo/Build$ContentResolver;,
        Lo/Build$DialogInterface;,
        Lo/Build$ServiceConnection;,
        Lo/Build$AssistContent;,
        Lo/Build$CursorFactory;,
        Lo/Build$Bitmap;,
        Lo/Build$VoiceInteractor;,
        Lo/Build$DatabaseErrorHandler;,
        Lo/Build$BroadcastReceiver;,
        Lo/Build$ComponentCallbacks;,
        Lo/Build$ActionBar;,
        Lo/Build$PendingIntent;,
        Lo/Build$SharedPreferences;,
        Lo/Build$FragmentManager;,
        Lo/Build$ComponentCallbacks2;,
        Lo/Build$TypedArray;,
        Lo/Build$ComponentName;,
        Lo/Build$Theme;,
        Lo/Build$Dialog;,
        Lo/Build$ClipData;,
        Lo/Build$Application;,
        Lo/Build$PackageItemInfo;,
        Lo/Build$ColorStateList;,
        Lo/Build$SQLiteDatabase;,
        Lo/Build$Cursor;,
        Lo/Build$Resources;,
        Lo/Build$Fragment;,
        Lo/Build$TaskDescription;,
        Lo/Build$StateListAnimator;,
        Lo/Build$LoaderManager;,
        Lo/Build$Activity;,
        Lo/Build$PackageManager;,
        Lo/Build$AssetManager;,
        Lo/Build$ContextWrapper;,
        Lo/Build$IntentSender;,
        Lo/Build$IntentFilter;,
        Lo/Build$Configuration;,
        Lo/Build$ApplicationInfo;,
        Lo/Build$PictureInPictureParams;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lo/Build;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    .line 326
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javaClass.simpleName"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
