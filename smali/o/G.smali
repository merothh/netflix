.class public final Lo/G;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/G$ActionBar;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Lorg/chromium/net/ExperimentalCronetEngine;
    .locals 2

    .line 49
    invoke-static {}, Lo/dU;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Lo/ew;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/net/NetflixCronetProvider$PreferredCronetProvider;->c:Lcom/netflix/mediaclient/net/NetflixCronetProvider$PreferredCronetProvider;

    invoke-static {v0}, Lcom/netflix/mediaclient/net/NetflixCronetProvider;->a(Lcom/netflix/mediaclient/net/NetflixCronetProvider$PreferredCronetProvider;)V

    .line 54
    :cond_1
    sget-object v0, Lo/CellularBatteryStats;->e:Lo/CellularBatteryStats;

    const-class v1, Lo/G$ActionBar;

    invoke-virtual {v0, p0, v1}, Lo/CellularBatteryStats;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/G$ActionBar;

    .line 55
    invoke-interface {v0}, Lo/G$ActionBar;->n()Lo/agc;

    move-result-object v0

    invoke-interface {v0}, Lo/agc;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    new-instance v0, Lo/T$TaskDescription;

    invoke-direct {v0, p0}, Lo/T$TaskDescription;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 58
    :cond_2
    new-instance v0, Lorg/chromium/net/ExperimentalCronetEngine$Builder;

    invoke-direct {v0, p0}, Lorg/chromium/net/ExperimentalCronetEngine$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    :goto_0
    invoke-static {p0, v0}, Lo/G;->c(Landroid/content/Context;Lorg/chromium/net/CronetEngine$Builder;)V

    const/4 p0, 0x1

    .line 68
    invoke-virtual {v0, p0}, Lorg/chromium/net/ExperimentalCronetEngine$Builder;->enableNetworkQualityEstimator(Z)Lorg/chromium/net/ExperimentalCronetEngine$Builder;

    .line 70
    invoke-virtual {v0}, Lorg/chromium/net/ExperimentalCronetEngine$Builder;->build()Lorg/chromium/net/ExperimentalCronetEngine;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;Lorg/chromium/net/CronetEngine$Builder;)V
    .locals 6

    .line 74
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "cronet"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p0, v2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, p0, v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, p0, v4

    const-string v1, "nf_cr_helper"

    const-string v5, "Set cache to %s, it exists %b, absolute path %s"

    invoke-static {v1, v5, p0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p0

    new-array v5, v3, [Ljava/lang/Object;

    .line 80
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v5, v2

    const-string p0, "Cache created %b"

    invoke-static {v1, p0, v5}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 82
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/chromium/net/CronetEngine$Builder;->setStoragePath(Ljava/lang/String;)Lorg/chromium/net/CronetEngine$Builder;

    const-wide/32 v0, 0x80000

    .line 84
    invoke-virtual {p1, v4, v0, v1}, Lorg/chromium/net/CronetEngine$Builder;->enableHttpCache(IJ)Lorg/chromium/net/CronetEngine$Builder;

    .line 87
    :cond_1
    invoke-virtual {p1, v3}, Lorg/chromium/net/CronetEngine$Builder;->enableHttp2(Z)Lorg/chromium/net/CronetEngine$Builder;

    return-void
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "connectivity"

    .line 104
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_1

    return-object v0

    .line 108
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const-string v2, "mobile"

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_7

    const/4 v4, 0x6

    if-eq v1, v4, :cond_6

    const/4 v4, 0x7

    if-eq v1, v4, :cond_5

    const/16 v4, 0x9

    if-eq v1, v4, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const-string v2, "ethernet"

    goto :goto_0

    :cond_5
    const-string v2, "bluetooth"

    goto :goto_0

    :cond_6
    const-string v2, "wimax"

    goto :goto_0

    :cond_7
    const-string v2, "wifi"

    :goto_0
    if-eqz v0, :cond_a

    .line 136
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->d(I)Lcom/netflix/mediaclient/service/net/NetworkType;

    move-result-object p0

    .line 137
    invoke-static {p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->b(Lcom/netflix/mediaclient/service/net/NetworkType;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 138
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_2g"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 139
    :cond_8
    invoke-static {p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->e(Lcom/netflix/mediaclient/service/net/NetworkType;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_3g"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 141
    :cond_9
    invoke-static {p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->c(Lcom/netflix/mediaclient/service/net/NetworkType;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 142
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_4g"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_a
    :goto_1
    return-object v2
.end method

.method static e(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".bif"

    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".webp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
