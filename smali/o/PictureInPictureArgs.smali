.class public Lo/PictureInPictureArgs;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:J


# instance fields
.field final b:Ljava/lang/String;

.field private final c:Landroid/content/Context;

.field private final d:Lo/DevicePolicyManagerInternal;

.field private final e:Lo/SearchDialog;

.field private f:Landroid/content/pm/PackageInfo;

.field private g:Landroid/content/pm/PackageManager;

.field private h:Landroid/content/pm/ApplicationInfo;

.field private i:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lo/PictureInPictureArgs;->a:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lo/SearchDialog;Lo/DevicePolicyManagerInternal;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lo/PictureInPictureArgs;->i:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lo/PictureInPictureArgs;->c:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lo/PictureInPictureArgs;->g:Landroid/content/pm/PackageManager;

    .line 47
    iput-object p3, p0, Lo/PictureInPictureArgs;->e:Lo/SearchDialog;

    .line 48
    iput-object p4, p0, Lo/PictureInPictureArgs;->d:Lo/DevicePolicyManagerInternal;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/PictureInPictureArgs;->j:Ljava/lang/String;

    .line 54
    :try_start_0
    iput-object p2, p0, Lo/PictureInPictureArgs;->g:Landroid/content/pm/PackageManager;

    .line 55
    iget-object p1, p0, Lo/PictureInPictureArgs;->g:Landroid/content/pm/PackageManager;

    iget-object p2, p0, Lo/PictureInPictureArgs;->j:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iput-object p1, p0, Lo/PictureInPictureArgs;->f:Landroid/content/pm/PackageInfo;

    .line 56
    iget-object p1, p0, Lo/PictureInPictureArgs;->g:Landroid/content/pm/PackageManager;

    iget-object p2, p0, Lo/PictureInPictureArgs;->j:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iput-object p1, p0, Lo/PictureInPictureArgs;->h:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not retrieve package/application information for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lo/PictureInPictureArgs;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/WallpaperColors;->b(Ljava/lang/String;)V

    .line 61
    :goto_0
    invoke-direct {p0}, Lo/PictureInPictureArgs;->n()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/PictureInPictureArgs;->b:Ljava/lang/String;

    return-void
.end method

.method static a()J
    .locals 4

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lo/PictureInPictureArgs;->a:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lo/PictureInPictureArgs;->e:Lo/SearchDialog;

    invoke-virtual {v0}, Lo/SearchDialog;->y()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "android"

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lo/PictureInPictureArgs;->e:Lo/SearchDialog;

    invoke-virtual {v0}, Lo/SearchDialog;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 164
    :cond_0
    iget-object v0, p0, Lo/PictureInPictureArgs;->f:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private h()Ljava/lang/Integer;
    .locals 1

    .line 141
    iget-object v0, p0, Lo/PictureInPictureArgs;->e:Lo/SearchDialog;

    invoke-virtual {v0}, Lo/SearchDialog;->b()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 146
    :cond_0
    iget-object v0, p0, Lo/PictureInPictureArgs;->f:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_1

    .line 147
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private l()J
    .locals 5

    .line 209
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    sub-long/2addr v1, v3

    return-wide v1
.end method

.method private m()Ljava/lang/Boolean;
    .locals 2

    .line 219
    :try_start_0
    iget-object v0, p0, Lo/PictureInPictureArgs;->c:Landroid/content/Context;

    const-string v1, "activity"

    .line 220
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    .line 223
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 224
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 225
    iget-boolean v0, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "Could not check lowMemory status"

    .line 228
    invoke-static {v0}, Lo/WallpaperColors;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private n()Ljava/lang/String;
    .locals 2

    .line 197
    iget-object v0, p0, Lo/PictureInPictureArgs;->g:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/PictureInPictureArgs;->h:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    invoke-direct {p0}, Lo/PictureInPictureArgs;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p0}, Lo/PictureInPictureArgs;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "releaseStage"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-direct {p0}, Lo/PictureInPictureArgs;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-direct {p0}, Lo/PictureInPictureArgs;->h()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "versionCode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lo/PictureInPictureArgs;->e:Lo/SearchDialog;

    invoke-virtual {v1}, Lo/SearchDialog;->r()Ljava/lang/String;

    move-result-object v1

    const-string v2, "codeBundleId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method c()J
    .locals 3

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 116
    iget-object v2, p0, Lo/PictureInPictureArgs;->d:Lo/DevicePolicyManagerInternal;

    invoke-virtual {v2, v0, v1}, Lo/DevicePolicyManagerInternal;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lo/PictureInPictureArgs;->b()Ljava/util/Map;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lo/PictureInPictureArgs;->j:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v1, p0, Lo/PictureInPictureArgs;->e:Lo/SearchDialog;

    invoke-virtual {v1}, Lo/SearchDialog;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "buildUUID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {}, Lo/PictureInPictureArgs;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {p0}, Lo/PictureInPictureArgs;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "durationInForeground"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v1, p0, Lo/PictureInPictureArgs;->d:Lo/DevicePolicyManagerInternal;

    invoke-virtual {v1}, Lo/DevicePolicyManagerInternal;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "inForeground"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v1, p0, Lo/PictureInPictureArgs;->j:Ljava/lang/String;

    const-string v2, "packageName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lo/PictureInPictureArgs;->i:Ljava/lang/String;

    const-string v2, "binaryArch"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method d(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lo/PictureInPictureArgs;->i:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    iget-object v1, p0, Lo/PictureInPictureArgs;->b:Ljava/lang/String;

    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v1, p0, Lo/PictureInPictureArgs;->j:Ljava/lang/String;

    const-string v2, "packageName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-direct {p0}, Lo/PictureInPictureArgs;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "versionName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {p0}, Lo/PictureInPictureArgs;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "activeScreen"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-direct {p0}, Lo/PictureInPictureArgs;->l()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "memoryUsage"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-direct {p0}, Lo/PictureInPictureArgs;->m()Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "lowMemory"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method i()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lo/PictureInPictureArgs;->e:Lo/SearchDialog;

    invoke-virtual {v0}, Lo/SearchDialog;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 183
    :cond_0
    iget-object v0, p0, Lo/PictureInPictureArgs;->h:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    .line 184
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const-string v0, "development"

    return-object v0

    :cond_1
    const-string v0, "production"

    return-object v0
.end method

.method j()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lo/PictureInPictureArgs;->d:Lo/DevicePolicyManagerInternal;

    invoke-virtual {v0}, Lo/DevicePolicyManagerInternal;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
