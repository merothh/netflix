.class public Lcom/netflix/mediaclient/NetflixApplication;
.super Landroid/support/multidex/MultiDexApplication;
.source "NetflixApplication.java"


# static fields
.field public static final LOAD_TAG:Ljava/lang/String; = "NflxLoading"

.field private static final SO_FAILED_T0_LOAD:I = 0x7d0

.field private static final SO_LOADING_CLASS_NOT_FOUND:I = 0x7d3

.field private static final SO_LOADING_GENERIC_ERROR:I = 0x7d4

.field private static final SO_LOADING_UNSATISFIED_LINK:I = 0x7d2

.field private static final SO_VERSION_MISMATCH:I = 0x7d1

.field private static final TAG:Ljava/lang/String; = "NetflixApplication"

.field private static final TAG_LOCALE:Ljava/lang/String; = "nf_locale"

.field private static final gson:Lcom/google/gson/Gson;

.field private static instance:Lcom/netflix/mediaclient/NetflixApplication;

.field private static isDebugToastEnabled:Z

.field private static sAactivityVisible:Z

.field private static sEnableSmartLock:Z


# instance fields
.field private final MAX_ACTIVITY_TRANSITION_TIME_MS:J

.field private final broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private currentActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private mActivityTransitionTimer:Ljava/util/Timer;

.field private mActivityTransitionTimerTask:Ljava/util/TimerTask;

.field private mBitmapCache:Lcom/netflix/mediaclient/util/gfx/BitmapLruCache;

.field private final mIsNetflixServiceReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mServiceLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

.field private mSignedUpOnce:Z

.field private final mUserInput:Lcom/netflix/mediaclient/android/app/UserInputManager;

.field private wasInBackground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-static {}, Lcom/netflix/mediaclient/AutoValueAdapterFactory;->create()Lcom/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/NetflixApplication;->gson:Lcom/google/gson/Gson;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/netflix/mediaclient/NetflixApplication;->sEnableSmartLock:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/NetflixApplication;->isDebugToastEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    iput-boolean v2, p0, Lcom/netflix/mediaclient/NetflixApplication;->mSignedUpOnce:Z

    new-instance v0, Lcom/netflix/mediaclient/android/app/UserInputManager;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mUserInput:Lcom/netflix/mediaclient/android/app/UserInputManager;

    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->MAX_ACTIVITY_TRANSITION_TIME_MS:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mIsNetflixServiceReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/netflix/mediaclient/NetflixApplication$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/NetflixApplication$1;-><init>(Lcom/netflix/mediaclient/NetflixApplication;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/NetflixApplication;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mIsNetflixServiceReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/NetflixApplication;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/NetflixApplication;->wasInBackground:Z

    return p1
.end method

.method public static activityPaused()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/NetflixApplication;->sAactivityVisible:Z

    return-void
.end method

.method public static activityResumed()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/netflix/mediaclient/NetflixApplication;->sAactivityVisible:Z

    return-void
.end method

.method public static createShowApplicationIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/NetflixApplication;->instance:Lcom/netflix/mediaclient/NetflixApplication;

    return-object v0
.end method

.method public static getGson()Lcom/google/gson/Gson;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/NetflixApplication;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public static isActivityVisible()Z
    .locals 1

    sget-boolean v0, Lcom/netflix/mediaclient/NetflixApplication;->sAactivityVisible:Z

    return v0
.end method

.method public static isDebugToastEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/netflix/mediaclient/NetflixApplication;->isDebugToastEnabled:Z

    return v0
.end method

.method public static isSmartlockEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/netflix/mediaclient/NetflixApplication;->sEnableSmartLock:Z

    return v0
.end method

.method private loadAndVerifyNativeLibraries()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/repository/SecurityRepository;->loadLibraries(Landroid/content/Context;)Z

    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Native libraries are missing!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "NetflixApplication"

    const-string/jumbo v2, "Failed to load JNI libraries. Report"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/NetflixApplication;->reportFailedToLoadNativeLibraries(Ljava/lang/Throwable;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    const-string/jumbo v1, "NetflixApplication"

    const-string/jumbo v2, "Crash happend, re-throw"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getLibraryVersion()I

    move-result v1

    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "NetflixApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Manifest library version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", real: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eq v1, v2, :cond_0

    const-string/jumbo v0, "NetflixApplication"

    const-string/jumbo v1, "Versions do not match!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Native library mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x7d1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/NetflixApplication;->reportFailedToLoadNativeLibraries(Ljava/lang/Throwable;I)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NetflixApplication"

    const-string/jumbo v2, "Failed to load JNI libraries. Report"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, 0x7d2

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/NetflixApplication;->reportFailedToLoadNativeLibraries(Ljava/lang/Throwable;I)V

    throw v0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "NetflixApplication"

    const-string/jumbo v2, "Failed to load JNI libraries. Report"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, 0x7d3

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/NetflixApplication;->reportFailedToLoadNativeLibraries(Ljava/lang/Throwable;I)V

    throw v0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "NetflixApplication"

    const-string/jumbo v2, "Failed to load JNI libraries. Generic error. Report"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, 0x7d4

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/NetflixApplication;->reportFailedToLoadNativeLibraries(Ljava/lang/Throwable;I)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    return-void
.end method

.method private refreshLocale(Lcom/netflix/mediaclient/util/l10n/UserLocale;)V
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo v0, "nf_locale"

    const-string/jumbo v1, "serviceLocale = null, exit"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_locale"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshLocale with language = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/NetflixApplication;->mServiceLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->updateLocale(Ljava/util/Locale;Landroid/app/Application;)V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    const-string/jumbo v0, "NetflixApplication"

    const-string/jumbo v1, "Registering application broadcast receiver"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.NETFLIX_SERVICE_INIT_COMPLETE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.NETFLIX_SERVICE_DESTROYED"

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/netflix/mediaclient/NetflixApplication;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.category.NETFLIX_SERVICE"

    invoke-static {p0, v1, v2, v0}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    return-void
.end method

.method private reportFailedToLoadNativeLibraries(Ljava/lang/Throwable;I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v0, "NetflixApplication"

    const-string/jumbo v1, "Send warning notification!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0802c1

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/NetflixApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080105

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/netflix/mediaclient/NetflixApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0802c0

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/netflix/mediaclient/NetflixApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const v4, 0x7f02014f

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string/jumbo v1, "package:com.netflix.mediaclient"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x8000000

    invoke-static {p0, v6, v2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/NetflixApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    const-string/jumbo v2, "NetflixApplication"

    const-string/jumbo v3, "Send warning notification done started..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const-string/jumbo v0, "NetflixApplication"

    const-string/jumbo v1, "Send warning notification done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "NetflixApplication"

    const-string/jumbo v1, "Can not send warning, notification manager is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setEnableDebugToast(Z)V
    .locals 0

    sput-boolean p0, Lcom/netflix/mediaclient/NetflixApplication;->isDebugToastEnabled:Z

    return-void
.end method

.method public static setEnableSmartLock(Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method public clearSignedInOnce()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mSignedUpOnce:Z

    const-string/jumbo v0, "useragent_userprofiles_data"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public getCurrentActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->currentActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method public getImageCache()Lcom/netflix/mediaclient/util/gfx/BitmapLruCache;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mBitmapCache:Lcom/netflix/mediaclient/util/gfx/BitmapLruCache;

    return-object v0
.end method

.method public getUserInput()Lcom/netflix/mediaclient/android/app/UserInputManager;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mUserInput:Lcom/netflix/mediaclient/android/app/UserInputManager;

    return-object v0
.end method

.method public hasSignedUpOnce()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mSignedUpOnce:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mIsNetflixServiceReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetflixApplication"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mServiceLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/NetflixApplication;->refreshLocale(Lcom/netflix/mediaclient/util/l10n/UserLocale;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/NetflixApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isWidgetInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetProvider;->notifyWidgetsOnConfigurationChange(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    sput-object p0, Lcom/netflix/mediaclient/NetflixApplication;->instance:Lcom/netflix/mediaclient/NetflixApplication;

    const-string/jumbo v0, "NetflixApplication"

    const-string/jumbo v1, "Application onCreate"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "NetflixApplication"

    const-string/jumbo v1, "Loading native libraries"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/NetflixApplication;->loadAndVerifyNativeLibraries()V

    invoke-static {p0}, Lio/realm/Realm;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mUserInput:Lcom/netflix/mediaclient/android/app/UserInputManager;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/NetflixApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/NetflixApplication;->registerReceiver()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->onTrimMemory(I)V

    const-string/jumbo v0, "NetflixApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrimMemory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mBitmapCache:Lcom/netflix/mediaclient/util/gfx/BitmapLruCache;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetflixApplication"

    const-string/jumbo v1, "Flushing BitmapCache"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mBitmapCache:Lcom/netflix/mediaclient/util/gfx/BitmapLruCache;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/gfx/BitmapLruCache;->evictAll()V

    :cond_0
    return-void
.end method

.method public publishEvent(Lcom/netflix/mediaclient/event/UIEvent;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "TODO: Not implemented - move this to netflixService"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public refreshLastKnownLocale()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mServiceLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/NetflixApplication;->refreshLocale(Lcom/netflix/mediaclient/util/l10n/UserLocale;)V

    return-void
.end method

.method public refreshLocale(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "nf_locale"

    const-string/jumbo v1, "serviceLocale = null, exit"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/NetflixApplication;->refreshLocale(Lcom/netflix/mediaclient/util/l10n/UserLocale;)V

    goto :goto_0
.end method

.method public releaseCurrentActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->currentActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->currentActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->currentActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    :cond_0
    return-void
.end method

.method public setCurrentActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    return-void
.end method

.method public setImageCache(Lcom/netflix/mediaclient/util/gfx/BitmapLruCache;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mBitmapCache:Lcom/netflix/mediaclient/util/gfx/BitmapLruCache;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetflixApplication"

    const-string/jumbo v1, "ImageCache is set more than once!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/NetflixApplication;->mBitmapCache:Lcom/netflix/mediaclient/util/gfx/BitmapLruCache;

    return-void
.end method

.method public setSignedInOnce()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mSignedUpOnce:Z

    return-void
.end method

.method public startActivityTransitionTimer()V
    .locals 4

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mActivityTransitionTimer:Ljava/util/Timer;

    new-instance v0, Lcom/netflix/mediaclient/NetflixApplication$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/NetflixApplication$2;-><init>(Lcom/netflix/mediaclient/NetflixApplication;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mActivityTransitionTimerTask:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mActivityTransitionTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/netflix/mediaclient/NetflixApplication;->mActivityTransitionTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public stopActivityTransitionTimer()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mActivityTransitionTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mActivityTransitionTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mActivityTransitionTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mActivityTransitionTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->wasInBackground:Z

    return-void
.end method

.method public wasInBackground()Z
    .locals 2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->wasInBackground:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netflix/mediaclient/NetflixApplication;->wasInBackground:Z

    return v0
.end method
