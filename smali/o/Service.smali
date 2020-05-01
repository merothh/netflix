.class public Lo/Service;
.super Ljava/util/Observable;
.source ""

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field public final a:Lo/StatusBarManager;

.field public final b:Landroid/content/Context;

.field protected final c:Lo/PictureInPictureArgs;

.field public final d:Lo/SearchDialog;

.field public final e:Lcom/bugsnag/android/Breadcrumbs;

.field final f:Landroid/content/SharedPreferences;

.field final g:Lo/UiAutomation;

.field final h:Lo/NetworkEvent;

.field public final i:Lo/DevicePolicyManagerInternal;

.field protected final j:Lo/TabActivity;

.field private final k:Landroid/view/OrientationEventListener;

.field private final l:Lo/AssistStructure;

.field final m:Landroid/os/storage/StorageManager;

.field private final o:Lo/SearchManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/SearchDialog;)V
    .locals 6

    .line 126
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 71
    new-instance v0, Lo/AssistStructure;

    invoke-direct {v0}, Lo/AssistStructure;-><init>()V

    iput-object v0, p0, Lo/Service;->l:Lo/AssistStructure;

    .line 127
    invoke-static {p1}, Lo/Service;->b(Landroid/content/Context;)V

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/Service;->b:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lo/Service;->d:Lo/SearchDialog;

    .line 130
    new-instance p1, Lo/NetworkEvent;

    iget-object v0, p0, Lo/Service;->d:Lo/SearchDialog;

    iget-object v1, p0, Lo/Service;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lo/NetworkEvent;-><init>(Lo/SearchDialog;Landroid/content/Context;Lo/VrStateCallback$TaskDescription;)V

    iput-object p1, p0, Lo/Service;->h:Lo/NetworkEvent;

    .line 131
    iget-object p1, p0, Lo/Service;->b:Landroid/content/Context;

    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lo/Service;->m:Landroid/os/storage/StorageManager;

    .line 133
    new-instance p1, Lo/ServiceStartArgs;

    iget-object v0, p0, Lo/Service;->b:Landroid/content/Context;

    new-instance v1, Lo/Service$2;

    invoke-direct {v1, p0}, Lo/Service$2;-><init>(Lo/Service;)V

    invoke-direct {p1, v0, v1}, Lo/ServiceStartArgs;-><init>(Landroid/content/Context;Lo/alA;)V

    iput-object p1, p0, Lo/Service;->o:Lo/SearchManager;

    .line 144
    invoke-virtual {p2}, Lo/SearchDialog;->u()Lo/StatsManager;

    move-result-object p1

    if-nez p1, :cond_0

    .line 145
    new-instance p1, Lo/SharedPreferencesImpl;

    iget-object v0, p0, Lo/Service;->o:Lo/SearchManager;

    invoke-direct {p1, v0}, Lo/SharedPreferencesImpl;-><init>(Lo/SearchManager;)V

    invoke-virtual {p2, p1}, Lo/SearchDialog;->a(Lo/StatsManager;)V

    .line 148
    :cond_0
    new-instance p1, Lo/DevicePolicyManagerInternal;

    iget-object v0, p0, Lo/Service;->h:Lo/NetworkEvent;

    invoke-direct {p1, p2, p0, v0}, Lo/DevicePolicyManagerInternal;-><init>(Lo/SearchDialog;Lo/Service;Lo/NetworkEvent;)V

    iput-object p1, p0, Lo/Service;->i:Lo/DevicePolicyManagerInternal;

    .line 150
    new-instance p1, Lo/UiAutomation;

    invoke-direct {p1, p0}, Lo/UiAutomation;-><init>(Lo/Service;)V

    iput-object p1, p0, Lo/Service;->g:Lo/UiAutomation;

    .line 153
    iget-object p1, p0, Lo/Service;->b:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "com.bugsnag.android"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lo/Service;->f:Landroid/content/SharedPreferences;

    .line 155
    new-instance p1, Lo/PictureInPictureArgs;

    iget-object v1, p0, Lo/Service;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lo/Service;->d:Lo/SearchDialog;

    iget-object v5, p0, Lo/Service;->i:Lo/DevicePolicyManagerInternal;

    invoke-direct {p1, v1, v3, v4, v5}, Lo/PictureInPictureArgs;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lo/SearchDialog;Lo/DevicePolicyManagerInternal;)V

    iput-object p1, p0, Lo/Service;->c:Lo/PictureInPictureArgs;

    .line 156
    iget-object p1, p0, Lo/Service;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 157
    new-instance v1, Lo/StatusBarManager;

    iget-object v3, p0, Lo/Service;->o:Lo/SearchManager;

    iget-object v4, p0, Lo/Service;->b:Landroid/content/Context;

    iget-object v5, p0, Lo/Service;->f:Landroid/content/SharedPreferences;

    invoke-direct {v1, v3, v4, p1, v5}, Lo/StatusBarManager;-><init>(Lo/SearchManager;Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V

    iput-object v1, p0, Lo/Service;->a:Lo/StatusBarManager;

    .line 160
    new-instance p1, Lcom/bugsnag/android/Breadcrumbs;

    invoke-direct {p1, p2}, Lcom/bugsnag/android/Breadcrumbs;-><init>(Lo/SearchDialog;)V

    iput-object p1, p0, Lo/Service;->e:Lcom/bugsnag/android/Breadcrumbs;

    .line 163
    iget-object p1, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {p1}, Lo/SearchDialog;->f()[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    new-array p1, p2, [Ljava/lang/String;

    .line 164
    iget-object v1, p0, Lo/Service;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Lo/Service;->c([Ljava/lang/String;)V

    .line 167
    :cond_1
    iget-object p1, p0, Lo/Service;->a:Lo/StatusBarManager;

    invoke-virtual {p1}, Lo/StatusBarManager;->e()Ljava/lang/String;

    move-result-object p1

    .line 169
    iget-object v0, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {v0}, Lo/SearchDialog;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lo/Service;->l:Lo/AssistStructure;

    iget-object v1, p0, Lo/Service;->f:Landroid/content/SharedPreferences;

    const-string v3, "user.id"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/AssistStructure;->a(Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lo/Service;->l:Lo/AssistStructure;

    iget-object v0, p0, Lo/Service;->f:Landroid/content/SharedPreferences;

    const-string v1, "user.name"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/AssistStructure;->b(Ljava/lang/String;)V

    .line 173
    iget-object p1, p0, Lo/Service;->l:Lo/AssistStructure;

    iget-object v0, p0, Lo/Service;->f:Landroid/content/SharedPreferences;

    const-string v1, "user.email"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/AssistStructure;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_2
    iget-object v0, p0, Lo/Service;->l:Lo/AssistStructure;

    invoke-virtual {v0, p1}, Lo/AssistStructure;->a(Ljava/lang/String;)V

    .line 178
    :goto_0
    iget-object p1, p0, Lo/Service;->b:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_3

    .line 179
    check-cast p1, Landroid/app/Application;

    .line 180
    iget-object v0, p0, Lo/Service;->i:Lo/DevicePolicyManagerInternal;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_1

    :cond_3
    const-string p1, "Bugsnag is unable to setup automatic activity lifecycle breadcrumbs on API Levels below 14."

    .line 182
    invoke-static {p1}, Lo/WallpaperColors;->b(Ljava/lang/String;)V

    .line 188
    :goto_1
    iget-object p1, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {p1}, Lo/SearchDialog;->h()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 191
    :try_start_0
    iget-object p1, p0, Lo/Service;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 192
    iget-object v0, p0, Lo/Service;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x80

    .line 194
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 195
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.bugsnag.android.BUILD_UUID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "Bugsnag is unable to read build UUID from manifest."

    .line 197
    invoke-static {p1}, Lo/WallpaperColors;->b(Ljava/lang/String;)V

    :goto_2
    if-eqz v2, :cond_4

    .line 200
    iget-object p1, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {p1, v2}, Lo/SearchDialog;->a(Ljava/lang/String;)V

    .line 205
    :cond_4
    new-instance p1, Lo/TabActivity;

    iget-object v0, p0, Lo/Service;->d:Lo/SearchDialog;

    iget-object v1, p0, Lo/Service;->b:Landroid/content/Context;

    new-instance v2, Lo/Service$4;

    invoke-direct {v2, p0}, Lo/Service$4;-><init>(Lo/Service;)V

    invoke-direct {p1, v0, v1, v2}, Lo/TabActivity;-><init>(Lo/SearchDialog;Landroid/content/Context;Lo/VrStateCallback$TaskDescription;)V

    iput-object p1, p0, Lo/Service;->j:Lo/TabActivity;

    .line 229
    iget-object p1, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {p1}, Lo/SearchDialog;->o()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 230
    invoke-virtual {p0}, Lo/Service;->i()V

    .line 236
    :cond_5
    :try_start_1
    new-instance p1, Lo/Service$3;

    invoke-direct {p1, p0}, Lo/Service$3;-><init>(Lo/Service;)V

    invoke-static {p1}, Lo/OnActivityPausedListener;->c(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    const-string v0, "Failed to register for automatic breadcrumb broadcasts"

    .line 243
    invoke-static {v0, p1}, Lo/WallpaperColors;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    :goto_3
    iget-object p1, p0, Lo/Service;->o:Lo/SearchManager;

    invoke-interface {p1}, Lo/SearchManager;->e()V

    .line 247
    iget-object p1, p0, Lo/Service;->c:Lo/PictureInPictureArgs;

    .line 248
    invoke-virtual {p1}, Lo/PictureInPictureArgs;->i()Ljava/lang/String;

    move-result-object p1

    const-string v0, "production"

    .line 247
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, p2

    .line 249
    invoke-static {p1}, Lo/WallpaperColors;->e(Z)V

    .line 251
    iget-object p1, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {p1, p0}, Lo/SearchDialog;->addObserver(Ljava/util/Observer;)V

    .line 252
    iget-object p1, p0, Lo/Service;->e:Lcom/bugsnag/android/Breadcrumbs;

    invoke-virtual {p1, p0}, Lcom/bugsnag/android/Breadcrumbs;->addObserver(Ljava/util/Observer;)V

    .line 253
    iget-object p1, p0, Lo/Service;->i:Lo/DevicePolicyManagerInternal;

    invoke-virtual {p1, p0}, Lo/DevicePolicyManagerInternal;->addObserver(Ljava/util/Observer;)V

    .line 254
    iget-object p1, p0, Lo/Service;->l:Lo/AssistStructure;

    invoke-virtual {p1, p0}, Lo/AssistStructure;->addObserver(Ljava/util/Observer;)V

    .line 257
    new-instance p1, Lo/Service$5;

    iget-object p2, p0, Lo/Service;->b:Landroid/content/Context;

    invoke-direct {p1, p0, p2, p0}, Lo/Service$5;-><init>(Lo/Service;Landroid/content/Context;Lo/Service;)V

    iput-object p1, p0, Lo/Service;->k:Landroid/view/OrientationEventListener;

    .line 266
    :try_start_2
    iget-object p1, p0, Lo/Service;->k:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 268
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set up orientation tracking: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/WallpaperColors;->b(Ljava/lang/String;)V

    .line 272
    :goto_4
    iget-object p1, p0, Lo/Service;->j:Lo/TabActivity;

    invoke-virtual {p1}, Lo/TabActivity;->d()V

    .line 273
    invoke-direct {p0}, Lo/Service;->o()V

    return-void
.end method

.method private a(Lo/DevicePolicyCache;)Z
    .locals 3

    .line 1442
    iget-object v0, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {v0}, Lo/SearchDialog;->t()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ProfilerInfo;

    .line 1444
    :try_start_0
    invoke-interface {v1, p1}, Lo/ProfilerInfo;->b(Lo/DevicePolicyCache;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v1

    const-string v2, "BeforeSend threw an Exception"

    .line 1448
    invoke-static {v2, v1}, Lo/WallpaperColors;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private static b(Landroid/content/Context;)V
    .locals 0

    .line 1529
    instance-of p0, p0, Landroid/app/Application;

    if-nez p0, :cond_0

    const-string p0, "Warning - Non-Application context detected! Please ensure that you are initializing Bugsnag from a custom Application class."

    .line 1530
    invoke-static {p0}, Lo/WallpaperColors;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1501
    iget-object v0, p0, Lo/Service;->b:Landroid/content/Context;

    const-string v1, "com.bugsnag.android"

    const/4 v2, 0x0

    .line 1502
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1503
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private c(Lo/UiAutomationConnection;Lo/DevicePolicyCache;)V
    .locals 1

    .line 1073
    :try_start_0
    new-instance v0, Lo/Service$9;

    invoke-direct {v0, p0, p2, p1}, Lo/Service$9;-><init>(Lo/Service;Lo/DevicePolicyCache;Lo/UiAutomationConnection;)V

    invoke-static {v0}, Lo/OnActivityPausedListener;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1080
    :catch_0
    iget-object p2, p0, Lo/Service;->j:Lo/TabActivity;

    invoke-virtual {p2, p1}, Lo/TabActivity;->b(Lo/WaitResult$ActionBar;)Ljava/lang/String;

    const-string p1, "Exceeded max queue count, saving to disk to send later"

    .line 1081
    invoke-static {p1}, Lo/WallpaperColors;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private c(Lo/UiAutomationConnection;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 926
    sget-object p2, Lcom/bugsnag/android/DeliveryStyle;->b:Lcom/bugsnag/android/DeliveryStyle;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/bugsnag/android/DeliveryStyle;->e:Lcom/bugsnag/android/DeliveryStyle;

    :goto_0
    const/4 v0, 0x0

    .line 927
    invoke-virtual {p0, p1, p2, v0}, Lo/Service;->e(Lo/UiAutomationConnection;Lcom/bugsnag/android/DeliveryStyle;Lo/RemoteInput;)V

    return-void
.end method

.method private c(Lo/UiAutomationConnection;)Z
    .locals 3

    .line 1465
    iget-object v0, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {v0}, Lo/SearchDialog;->l()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/QueuedWork;

    .line 1467
    :try_start_0
    invoke-interface {v1, p1}, Lo/QueuedWork;->c(Lo/UiAutomationConnection;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v1

    const-string v2, "BeforeNotify threw an Exception"

    .line 1471
    invoke-static {v2, v1}, Lo/WallpaperColors;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic d(Lo/Service;)V
    .locals 0

    .line 48
    invoke-virtual {p0}, Lo/Service;->setChanged()V

    return-void
.end method

.method private d(Lcom/bugsnag/android/Breadcrumb;)Z
    .locals 3

    .line 1480
    iget-object v0, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {v0}, Lo/SearchDialog;->B()Ljava/util/Collection;

    move-result-object v0

    .line 1481
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ProcessMemoryState;

    .line 1483
    :try_start_0
    invoke-interface {v1, p1}, Lo/ProcessMemoryState;->e(Lcom/bugsnag/android/Breadcrumb;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v1

    const-string v2, "BeforeRecordBreadcrumb threw an Exception"

    .line 1487
    invoke-static {v2, v1}, Lo/WallpaperColors;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private e(Lo/UiAutomationConnection;)V
    .locals 4

    .line 1087
    invoke-virtual {p1}, Lo/UiAutomationConnection;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    .line 1088
    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 1089
    iget-object v1, p0, Lo/Service;->e:Lcom/bugsnag/android/Breadcrumbs;

    new-instance v2, Lcom/bugsnag/android/Breadcrumb;

    invoke-virtual {p1}, Lo/UiAutomationConnection;->b()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/bugsnag/android/BreadcrumbType;->ERROR:Lcom/bugsnag/android/BreadcrumbType;

    invoke-direct {v2, p1, v3, v0}, Lcom/bugsnag/android/Breadcrumb;-><init>(Ljava/lang/String;Lcom/bugsnag/android/BreadcrumbType;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/bugsnag/android/Breadcrumbs;->add(Lcom/bugsnag/android/Breadcrumb;)V

    return-void
.end method

.method private o()V
    .locals 2

    .line 293
    invoke-static {p0}, Lcom/bugsnag/android/NativeInterface;->setClient(Lo/Service;)V

    .line 294
    sget-object v0, Lo/RemoteAction;->e:Lo/RemoteAction;

    .line 296
    iget-object v1, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {v1}, Lo/SearchDialog;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "com.bugsnag.android.NdkPlugin"

    .line 298
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/RemoteAction;->b(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "bugsnag-plugin-android-ndk artefact not found on classpath, NDK errors will not be captured."

    .line 300
    invoke-static {v1}, Lo/WallpaperColors;->b(Ljava/lang/String;)V

    .line 304
    :cond_0
    :goto_0
    iget-object v1, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {v1}, Lo/SearchDialog;->x()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "com.bugsnag.android.AnrPlugin"

    .line 306
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/RemoteAction;->b(Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v1, "bugsnag-plugin-android-anr artefact not found on classpath, ANR errors will not be captured."

    .line 308
    invoke-static {v1}, Lo/WallpaperColors;->b(Ljava/lang/String;)V

    .line 312
    :cond_1
    :goto_1
    invoke-virtual {v0, p0}, Lo/RemoteAction;->a(Lo/Service;)V

    return-void
.end method


# virtual methods
.method public a()Lo/DeviceAdminInfo;
    .locals 1

    .line 1326
    iget-object v0, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {v0}, Lo/SearchDialog;->n()Lo/DeviceAdminInfo;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 553
    iget-object v0, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {v0, p1}, Lo/SearchDialog;->f(Ljava/lang/String;)V

    const-string v0, "production"

    .line 554
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lo/WallpaperColors;->e(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bugsnag/android/BreadcrumbType;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bugsnag/android/BreadcrumbType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1359
    new-instance v0, Lcom/bugsnag/android/Breadcrumb;

    invoke-direct {v0, p1, p2, p3}, Lcom/bugsnag/android/Breadcrumb;-><init>(Ljava/lang/String;Lcom/bugsnag/android/BreadcrumbType;Ljava/util/Map;)V

    .line 1361
    invoke-direct {p0, v0}, Lo/Service;->d(Lcom/bugsnag/android/Breadcrumb;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1362
    iget-object p1, p0, Lo/Service;->e:Lcom/bugsnag/android/Breadcrumbs;

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Breadcrumbs;->add(Lcom/bugsnag/android/Breadcrumb;)V

    :cond_0
    return-void
.end method

.method public b()Lo/StatusBarManager;
    .locals 1

    .line 628
    iget-object v0, p0, Lo/Service;->a:Lo/StatusBarManager;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 656
    iget-object v0, p0, Lo/Service;->l:Lo/AssistStructure;

    invoke-virtual {v0, p1}, Lo/AssistStructure;->a(Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {v0}, Lo/SearchDialog;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "user.id"

    .line 659
    invoke-direct {p0, v0, p1}, Lo/Service;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1308
    iget-object v0, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {v0}, Lo/SearchDialog;->n()Lo/DeviceAdminInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lo/DeviceAdminInfo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method b(Lo/DevicePolicyCache;Lo/UiAutomationConnection;)V
    .locals 2

    .line 1402
    invoke-direct {p0, p1}, Lo/Service;->a(Lo/DevicePolicyCache;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Skipping notification - beforeSend task returned false"

    .line 1403
    invoke-static {p1}, Lo/WallpaperColors;->c(Ljava/lang/String;)V

    return-void

    .line 1407
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {v0}, Lo/SearchDialog;->u()Lo/StatsManager;

    move-result-object v0

    iget-object v1, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-interface {v0, p1, v1}, Lo/StatsManager;->a(Lo/DevicePolicyCache;Lo/SearchDialog;)V

    const-string v0, "Sent 1 new error to Bugsnag"

    .line 1408
    invoke-static {v0}, Lo/WallpaperColors;->c(Ljava/lang/String;)V

    .line 1409
    invoke-direct {p0, p2}, Lo/Service;->e(Lo/UiAutomationConnection;)V
    :try_end_0
    .catch Lcom/bugsnag/android/DeliveryFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Problem sending error to Bugsnag"

    .line 1418
    invoke-static {p2, p1}, Lo/WallpaperColors;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1411
    invoke-virtual {p1}, Lo/DevicePolicyCache;->b()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Could not send error(s) to Bugsnag, saving to disk to send later"

    .line 1412
    invoke-static {p1, v0}, Lo/WallpaperColors;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1414
    iget-object p1, p0, Lo/Service;->j:Lo/TabActivity;

    invoke-virtual {p1, p2}, Lo/TabActivity;->b(Lo/WaitResult$ActionBar;)Ljava/lang/String;

    .line 1415
    invoke-direct {p0, p2}, Lo/Service;->e(Lo/UiAutomationConnection;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lo/QueuedWork;)V
    .locals 1

    .line 746
    iget-object v0, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {v0, p1}, Lo/SearchDialog;->e(Lo/QueuedWork;)V

    return-void
.end method

.method b(Lo/UiAutomationConnection;)V
    .locals 5

    .line 1021
    iget-object v0, p0, Lo/Service;->c:Lo/PictureInPictureArgs;

    invoke-virtual {v0}, Lo/PictureInPictureArgs;->b()Ljava/util/Map;

    move-result-object v0

    .line 1022
    invoke-static {}, Lo/PictureInPictureArgs;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    iget-object v1, p0, Lo/Service;->c:Lo/PictureInPictureArgs;

    invoke-virtual {v1}, Lo/PictureInPictureArgs;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "durationInForeground"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    iget-object v1, p0, Lo/Service;->i:Lo/DevicePolicyManagerInternal;

    invoke-virtual {v1}, Lo/DevicePolicyManagerInternal;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "inForeground"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    invoke-virtual {p1, v0}, Lo/UiAutomationConnection;->d(Ljava/util/Map;)V

    .line 1027
    iget-object v0, p0, Lo/Service;->a:Lo/StatusBarManager;

    invoke-virtual {v0}, Lo/StatusBarManager;->c()Ljava/util/Map;

    move-result-object v0

    .line 1028
    iget-object v1, p0, Lo/Service;->a:Lo/StatusBarManager;

    invoke-virtual {v1}, Lo/StatusBarManager;->i()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "freeDisk"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    invoke-virtual {p1, v0}, Lo/UiAutomationConnection;->c(Ljava/util/Map;)V

    .line 1031
    invoke-virtual {p1}, Lo/UiAutomationConnection;->e()Lo/DeviceAdminInfo;

    move-result-object v0

    .line 1032
    invoke-static {}, Lo/ConnectEvent;->b()Lo/ConnectEvent;

    move-result-object v1

    .line 1033
    invoke-virtual {v1}, Lo/ConnectEvent;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BugsnagDiagnostics"

    const-string v4, "notifierName"

    invoke-virtual {v0, v3, v4, v2}, Lo/DeviceAdminInfo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1034
    invoke-virtual {v1}, Lo/ConnectEvent;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifierVersion"

    invoke-virtual {v0, v3, v2, v1}, Lo/DeviceAdminInfo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1035
    iget-object v1, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {v1}, Lo/SearchDialog;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apiKey"

    invoke-virtual {v0, v3, v2, v1}, Lo/DeviceAdminInfo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1037
    iget-object v1, p0, Lo/Service;->c:Lo/PictureInPictureArgs;

    invoke-virtual {v1}, Lo/PictureInPictureArgs;->d()Ljava/util/Map;

    move-result-object v1

    const-string v2, "packageName"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1038
    invoke-virtual {v0, v3, v2, v1}, Lo/DeviceAdminInfo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1040
    new-instance v0, Lo/DevicePolicyCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lo/DevicePolicyCache;-><init>(Ljava/lang/String;Lo/UiAutomationConnection;)V

    .line 1042
    :try_start_0
    new-instance p1, Lo/Service$1;

    invoke-direct {p1, p0, v0}, Lo/Service$1;-><init>(Lo/Service;Lo/DevicePolicyCache;)V

    invoke-static {p1}, Lo/OnActivityPausedListener;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public c()Lo/PictureInPictureArgs;
    .locals 1

    .line 622
    iget-object v0, p0, Lo/Service;->c:Lo/PictureInPictureArgs;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 429
    iget-object v0, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {v0, p1}, Lo/SearchDialog;->b(Ljava/lang/String;)V

    return-void
.end method

.method c(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;Lo/DeviceAdminInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;)V
    .locals 7

    .line 1430
    new-instance v6, Lo/UiAutomationConnection$Activity;

    iget-object v1, p0, Lo/Service;->d:Lo/SearchDialog;

    iget-object v3, p0, Lo/Service;->i:Lo/DevicePolicyManagerInternal;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v2, p1

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lo/UiAutomationConnection$Activity;-><init>(Lo/SearchDialog;Ljava/lang/Throwable;Lo/DevicePolicyManagerInternal;Ljava/lang/Thread;Z)V

    .line 1432
    invoke-virtual {v6, p2}, Lo/UiAutomationConnection$Activity;->c(Lcom/bugsnag/android/Severity;)Lo/UiAutomationConnection$Activity;

    move-result-object p1

    .line 1433
    invoke-virtual {p1, p3}, Lo/UiAutomationConnection$Activity;->e(Lo/DeviceAdminInfo;)Lo/UiAutomationConnection$Activity;

    move-result-object p1

    .line 1434
    invoke-virtual {p1, p4}, Lo/UiAutomationConnection$Activity;->b(Ljava/lang/String;)Lo/UiAutomationConnection$Activity;

    move-result-object p1

    .line 1435
    invoke-virtual {p1, p5}, Lo/UiAutomationConnection$Activity;->e(Ljava/lang/String;)Lo/UiAutomationConnection$Activity;

    move-result-object p1

    .line 1436
    invoke-virtual {p1}, Lo/UiAutomationConnection$Activity;->d()Lo/UiAutomationConnection;

    move-result-object p1

    .line 1438
    sget-object p2, Lcom/bugsnag/android/DeliveryStyle;->d:Lcom/bugsnag/android/DeliveryStyle;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lo/Service;->e(Lo/UiAutomationConnection;Lcom/bugsnag/android/DeliveryStyle;Lo/RemoteInput;)V

    return-void
.end method

.method public varargs c([Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 541
    iget-object v0, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {v0, p1}, Lo/SearchDialog;->e([Ljava/lang/String;)V

    return-void
.end method

.method public d()Lo/AssistStructure;
    .locals 1

    .line 610
    iget-object v0, p0, Lo/Service;->l:Lo/AssistStructure;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 670
    iget-object v0, p0, Lo/Service;->l:Lo/AssistStructure;

    invoke-virtual {v0, p1}, Lo/AssistStructure;->d(Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {v0}, Lo/SearchDialog;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "user.email"

    .line 673
    invoke-direct {p0, v0, p1}, Lo/Service;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lo/RemoteInput;)V
    .locals 8

    .line 812
    new-instance v7, Lo/UiAutomationConnection$Activity;

    iget-object v1, p0, Lo/Service;->d:Lo/SearchDialog;

    iget-object v5, p0, Lo/Service;->i:Lo/DevicePolicyManagerInternal;

    .line 813
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lo/UiAutomationConnection$Activity;-><init>(Lo/SearchDialog;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lo/DevicePolicyManagerInternal;Ljava/lang/Thread;)V

    const-string p1, "handledException"

    .line 814
    invoke-virtual {v7, p1}, Lo/UiAutomationConnection$Activity;->b(Ljava/lang/String;)Lo/UiAutomationConnection$Activity;

    move-result-object p1

    .line 815
    invoke-virtual {p1}, Lo/UiAutomationConnection$Activity;->d()Lo/UiAutomationConnection;

    move-result-object p1

    .line 816
    sget-object p2, Lcom/bugsnag/android/DeliveryStyle;->e:Lcom/bugsnag/android/DeliveryStyle;

    invoke-virtual {p0, p1, p2, p4}, Lo/Service;->e(Lo/UiAutomationConnection;Lcom/bugsnag/android/DeliveryStyle;Lo/RemoteInput;)V

    return-void
.end method

.method public d(Ljava/lang/Throwable;)V
    .locals 7

    .line 777
    new-instance v6, Lo/UiAutomationConnection$Activity;

    iget-object v1, p0, Lo/Service;->d:Lo/SearchDialog;

    iget-object v3, p0, Lo/Service;->i:Lo/DevicePolicyManagerInternal;

    .line 778
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lo/UiAutomationConnection$Activity;-><init>(Lo/SearchDialog;Ljava/lang/Throwable;Lo/DevicePolicyManagerInternal;Ljava/lang/Thread;Z)V

    const-string p1, "handledException"

    .line 779
    invoke-virtual {v6, p1}, Lo/UiAutomationConnection$Activity;->b(Ljava/lang/String;)Lo/UiAutomationConnection$Activity;

    move-result-object p1

    .line 780
    invoke-virtual {p1}, Lo/UiAutomationConnection$Activity;->d()Lo/UiAutomationConnection;

    move-result-object p1

    const/4 v0, 0x0

    .line 781
    invoke-direct {p0, p1, v0}, Lo/Service;->c(Lo/UiAutomationConnection;Z)V

    return-void
.end method

.method d(Lo/DeviceAdminInfo;)V
    .locals 4

    const-string v0, "BugsnagDiagnostics"

    .line 277
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 278
    iget-object v1, p0, Lo/Service;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 279
    new-instance v2, Ljava/io/File;

    const-string v3, "bugsnag-errors"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 282
    :try_start_0
    iget-object v1, p0, Lo/Service;->m:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->isCacheBehaviorTombstone(Ljava/io/File;)Z

    move-result v1

    .line 283
    iget-object v3, p0, Lo/Service;->m:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v2}, Landroid/os/storage/StorageManager;->isCacheBehaviorGroup(Ljava/io/File;)Z

    move-result v2

    const-string v3, "cacheTombstone"

    .line 284
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v1}, Lo/DeviceAdminInfo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "cacheGroup"

    .line 285
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lo/DeviceAdminInfo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to record cache behaviour, skipping diagnostics"

    .line 287
    invoke-static {v0, p1}, Lo/WallpaperColors;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 438
    iget-object v0, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {v0}, Lo/SearchDialog;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 449
    iget-object v0, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {v0, p1}, Lo/SearchDialog;->d(Ljava/lang/String;)V

    return-void
.end method

.method e(Lo/UiAutomationConnection;Lcom/bugsnag/android/DeliveryStyle;Lo/RemoteInput;)V
    .locals 4

    .line 934
    invoke-virtual {p1}, Lo/UiAutomationConnection;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 939
    :cond_0
    iget-object v0, p0, Lo/Service;->c:Lo/PictureInPictureArgs;

    invoke-virtual {v0}, Lo/PictureInPictureArgs;->d()Ljava/util/Map;

    move-result-object v0

    const-string v1, "releaseStage"

    .line 942
    invoke-static {v1, v0}, Lo/WindowConfiguration;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 944
    iget-object v2, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {v2, v1}, Lo/SearchDialog;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 949
    :cond_1
    iget-object v1, p0, Lo/Service;->a:Lo/StatusBarManager;

    invoke-virtual {v1}, Lo/StatusBarManager;->b()Ljava/util/Map;

    move-result-object v1

    .line 950
    invoke-virtual {p1, v1}, Lo/UiAutomationConnection;->c(Ljava/util/Map;)V

    .line 951
    invoke-virtual {p1}, Lo/UiAutomationConnection;->e()Lo/DeviceAdminInfo;

    move-result-object v1

    iget-object v1, v1, Lo/DeviceAdminInfo;->e:Ljava/util/Map;

    iget-object v2, p0, Lo/Service;->a:Lo/StatusBarManager;

    invoke-virtual {v2}, Lo/StatusBarManager;->d()Ljava/util/Map;

    move-result-object v2

    const-string v3, "device"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    invoke-virtual {p1, v0}, Lo/UiAutomationConnection;->d(Ljava/util/Map;)V

    .line 956
    invoke-virtual {p1}, Lo/UiAutomationConnection;->e()Lo/DeviceAdminInfo;

    move-result-object v0

    iget-object v0, v0, Lo/DeviceAdminInfo;->e:Ljava/util/Map;

    iget-object v1, p0, Lo/Service;->c:Lo/PictureInPictureArgs;

    invoke-virtual {v1}, Lo/PictureInPictureArgs;->e()Ljava/util/Map;

    move-result-object v1

    const-string v2, "app"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    iget-object v0, p0, Lo/Service;->e:Lcom/bugsnag/android/Breadcrumbs;

    invoke-virtual {p1, v0}, Lo/UiAutomationConnection;->d(Lcom/bugsnag/android/Breadcrumbs;)V

    .line 962
    iget-object v0, p0, Lo/Service;->l:Lo/AssistStructure;

    invoke-virtual {p1, v0}, Lo/UiAutomationConnection;->e(Lo/AssistStructure;)V

    .line 965
    invoke-virtual {p1}, Lo/UiAutomationConnection;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 966
    iget-object v0, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {v0}, Lo/SearchDialog;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 967
    :cond_2
    iget-object v0, p0, Lo/Service;->c:Lo/PictureInPictureArgs;

    invoke-virtual {v0}, Lo/PictureInPictureArgs;->j()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lo/UiAutomationConnection;->b(Ljava/lang/String;)V

    .line 971
    :cond_3
    invoke-direct {p0, p1}, Lo/Service;->c(Lo/UiAutomationConnection;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string p1, "Skipping notification - beforeNotify task returned false"

    .line 972
    invoke-static {p1}, Lo/WallpaperColors;->c(Ljava/lang/String;)V

    return-void

    .line 977
    :cond_4
    new-instance v0, Lo/DevicePolicyCache;

    iget-object v1, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {v1}, Lo/SearchDialog;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lo/DevicePolicyCache;-><init>(Ljava/lang/String;Lo/UiAutomationConnection;)V

    if-eqz p3, :cond_5

    .line 980
    invoke-interface {p3, v0}, Lo/RemoteInput;->c(Lo/DevicePolicyCache;)V

    .line 983
    :cond_5
    invoke-virtual {p1}, Lo/UiAutomationConnection;->h()Lo/DeviceAdminService;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 984
    invoke-virtual {p0}, Lo/Service;->setChanged()V

    .line 986
    invoke-virtual {p1}, Lo/UiAutomationConnection;->j()Lo/UserSwitchObserver;

    move-result-object p3

    invoke-virtual {p3}, Lo/UserSwitchObserver;->b()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 987
    new-instance p3, Lcom/bugsnag/android/NativeInterface$ActionBar;

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->i:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/4 v2, 0x0

    invoke-direct {p3, v1, v2}, Lcom/bugsnag/android/NativeInterface$ActionBar;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Lo/Service;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    .line 990
    :cond_6
    new-instance p3, Lcom/bugsnag/android/NativeInterface$ActionBar;

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->g:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 991
    invoke-virtual {p1}, Lo/UiAutomationConnection;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v1, v2}, Lcom/bugsnag/android/NativeInterface$ActionBar;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    .line 990
    invoke-virtual {p0, p3}, Lo/Service;->notifyObservers(Ljava/lang/Object;)V

    .line 995
    :cond_7
    :goto_1
    sget-object p3, Lo/Service$6;->d:[I

    invoke-virtual {p2}, Lcom/bugsnag/android/DeliveryStyle;->ordinal()I

    move-result p2

    aget p2, p3, p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_b

    const/4 v1, 0x2

    if-eq p2, v1, :cond_a

    const/4 p3, 0x3

    if-eq p2, p3, :cond_9

    const/4 p3, 0x4

    if-eq p2, p3, :cond_8

    goto :goto_2

    .line 1007
    :cond_8
    iget-object p2, p0, Lo/Service;->j:Lo/TabActivity;

    invoke-virtual {p2, p1}, Lo/TabActivity;->b(Lo/WaitResult$ActionBar;)Ljava/lang/String;

    .line 1008
    iget-object p1, p0, Lo/Service;->j:Lo/TabActivity;

    invoke-virtual {p1}, Lo/TabActivity;->a()V

    goto :goto_2

    .line 1004
    :cond_9
    invoke-direct {p0, p1, v0}, Lo/Service;->c(Lo/UiAutomationConnection;Lo/DevicePolicyCache;)V

    goto :goto_2

    .line 1000
    :cond_a
    invoke-virtual {v0, p3}, Lo/DevicePolicyCache;->d(Z)V

    .line 1001
    invoke-direct {p0, p1, v0}, Lo/Service;->c(Lo/UiAutomationConnection;Lo/DevicePolicyCache;)V

    goto :goto_2

    .line 997
    :cond_b
    invoke-virtual {p0, v0, p1}, Lo/Service;->b(Lo/DevicePolicyCache;Lo/UiAutomationConnection;)V

    :goto_2
    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 1545
    invoke-static {p1}, Lo/WallpaperColors;->e(Z)V

    return-void
.end method

.method public f()Lo/DevicePolicyManagerInternal;
    .locals 1

    .line 1461
    iget-object v0, p0, Lo/Service;->i:Lo/DevicePolicyManagerInternal;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 1567
    invoke-virtual {p0}, Lo/Service;->c()Lo/PictureInPictureArgs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/PictureInPictureArgs;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    .line 1517
    iget-object v0, p0, Lo/Service;->g:Lo/UiAutomation;

    if-eqz v0, :cond_0

    .line 1519
    :try_start_0
    iget-object v1, p0, Lo/Service;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Receiver not registered"

    .line 1521
    invoke-static {v0}, Lo/WallpaperColors;->b(Ljava/lang/String;)V

    .line 1525
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public g()V
    .locals 0

    .line 1398
    invoke-static {p0}, Lo/TaskStackListener;->a(Lo/Service;)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .line 1345
    new-instance v0, Lcom/bugsnag/android/Breadcrumb;

    invoke-direct {v0, p1}, Lcom/bugsnag/android/Breadcrumb;-><init>(Ljava/lang/String;)V

    .line 1347
    invoke-direct {p0, v0}, Lo/Service;->d(Lcom/bugsnag/android/Breadcrumb;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1348
    iget-object p1, p0, Lo/Service;->e:Lcom/bugsnag/android/Breadcrumbs;

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Breadcrumbs;->add(Lcom/bugsnag/android/Breadcrumb;)V

    :cond_0
    return-void
.end method

.method public h()Lo/SearchDialog;
    .locals 1

    .line 1554
    iget-object v0, p0, Lo/Service;->d:Lo/SearchDialog;

    return-object v0
.end method

.method public i()V
    .locals 0

    .line 1391
    invoke-static {p0}, Lo/TaskStackListener;->d(Lo/Service;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .line 1317
    iget-object v0, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {v0}, Lo/SearchDialog;->n()Lo/DeviceAdminInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/DeviceAdminInfo;->d(Ljava/lang/String;)V

    return-void
.end method

.method public j()Lo/TabActivity;
    .locals 1

    .line 1507
    iget-object v0, p0, Lo/Service;->j:Lo/TabActivity;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .line 684
    iget-object v0, p0, Lo/Service;->l:Lo/AssistStructure;

    invoke-virtual {v0, p1}, Lo/AssistStructure;->b(Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {v0}, Lo/SearchDialog;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "user.name"

    .line 687
    invoke-direct {p0, v0, p1}, Lo/Service;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 341
    instance-of p1, p2, Lcom/bugsnag/android/NativeInterface$ActionBar;

    if-eqz p1, :cond_0

    .line 342
    invoke-virtual {p0}, Lo/Service;->setChanged()V

    .line 343
    invoke-super {p0, p2}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
