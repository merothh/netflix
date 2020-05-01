.class public final Lo/ox;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ox$TaskDescription;
    }
.end annotation


# instance fields
.field private final a:Lo/oQ;

.field private final b:Lo/ov;

.field private final c:Lo/oL;

.field private final d:Lo/oC;


# direct methods
.method public constructor <init>(Lo/ov;Lo/oQ;Lo/oL;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lo/ox;->b:Lo/ov;

    .line 41
    iput-object p2, p0, Lo/ox;->a:Lo/oQ;

    .line 42
    iput-object p3, p0, Lo/ox;->c:Lo/oL;

    .line 43
    iget-object p1, p0, Lo/ox;->b:Lo/ov;

    invoke-interface {p1}, Lo/ov;->f()Lo/oC;

    move-result-object p1

    iput-object p1, p0, Lo/ox;->d:Lo/oC;

    return-void
.end method

.method private synthetic a(Lo/ox$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p3, p4}, Lo/ox;->b(Lo/ox$TaskDescription;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic a(Lo/ox;Lo/ox$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lo/ox;->a(Lo/ox$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic a(Lo/ox;Lo/ox$TaskDescription;Lo/sE;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lo/ox;->b(Lo/ox$TaskDescription;Lo/sE;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lo/ox;->d:Lo/oC;

    invoke-interface {v0}, Lo/oC;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Lo/ox$TaskDescription;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 118
    invoke-direct {p0}, Lo/ox;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const-string v1, "nfLicenseReplace"

    const-string v2, "onLicenseAcquireDone %s %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 119
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lo/ox;->d:Lo/oC;

    invoke-static {p2, v0}, Lo/ph;->d(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lo/oC;)V

    .line 121
    iget-object p2, p0, Lo/ox;->d:Lo/oC;

    invoke-interface {p2}, Lo/oC;->o()V

    .line 123
    :cond_0
    iget-object p2, p0, Lo/ox;->d:Lo/oC;

    invoke-interface {p1, p2, p3}, Lo/ox$TaskDescription;->a(Lo/oC;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private synthetic b(Lo/ox$TaskDescription;Lo/sE;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p5, p2}, Lo/ox;->d(Lo/ox$TaskDescription;Lcom/netflix/mediaclient/android/app/Status;Lo/sE;)V

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lo/ox;->b:Lo/ov;

    invoke-interface {v0}, Lo/ov;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Lo/ox$TaskDescription;Lcom/netflix/mediaclient/android/app/Status;Lo/sE;)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 93
    invoke-direct {p0}, Lo/ox;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v4, "nfLicenseReplace"

    const-string v5, "onLicenseReleaseDone %s %s"

    invoke-static {v4, v5, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 94
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    sget-object v5, Lcom/netflix/mediaclient/StatusCode;->bm:Lcom/netflix/mediaclient/StatusCode;

    if-ne v1, v5, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-object p3, p0, Lo/ox;->b:Lo/ov;

    invoke-interface {p3}, Lo/ov;->f()Lo/oC;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lo/ox$TaskDescription;->a(Lo/oC;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_1

    .line 97
    :cond_1
    :goto_0
    iget-object v1, p0, Lo/ox;->d:Lo/oC;

    invoke-interface {v1}, Lo/oC;->w()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->a(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array p3, v0, [Ljava/lang/Object;

    .line 98
    invoke-direct {p0}, Lo/ox;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v3

    aput-object p2, p3, v2

    const-string p2, "onLicenseReleaseDone ignoring deleted %s %s"

    invoke-static {v4, p2, p3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 99
    iget-object p2, p0, Lo/ox;->b:Lo/ov;

    invoke-interface {p2}, Lo/ov;->f()Lo/oC;

    move-result-object p2

    sget-object p3, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, p2, p3}, Lo/ox$TaskDescription;->a(Lo/oC;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    .line 104
    :cond_2
    iget-object p2, p0, Lo/ox;->c:Lo/oL;

    iget-object v0, p0, Lo/ox;->d:Lo/oC;

    .line 106
    invoke-interface {p3}, Lo/sE;->x()[B

    move-result-object v1

    .line 107
    invoke-interface {p3}, Lo/sE;->U()Lo/sA;

    move-result-object p3

    invoke-virtual {p3}, Lo/sA;->d()Lo/sx;

    move-result-object p3

    new-instance v2, Lo/oy;

    invoke-direct {v2, p0, p1}, Lo/oy;-><init>(Lo/ox;Lo/ox$TaskDescription;)V

    .line 104
    invoke-interface {p2, v0, v1, p3, v2}, Lo/oL;->a(Lo/or;[BLo/sx;Lo/oP;)V

    :goto_1
    return-void
.end method

.method private synthetic d(Lo/ox$TaskDescription;Lo/sE;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lo/ox;->e(Lo/ox$TaskDescription;Lo/sE;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private e()Lo/sx;
    .locals 1

    .line 135
    iget-object v0, p0, Lo/ox;->d:Lo/oC;

    invoke-interface {v0}, Lo/oC;->B()Lo/sx;

    move-result-object v0

    return-object v0
.end method

.method private e(Lo/ox$TaskDescription;Lo/sE;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 67
    invoke-direct {p0}, Lo/ox;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const-string v3, "nfLicenseReplace"

    const-string v4, "onManifestResponse %s %s"

    invoke-static {v3, v4, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 68
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object p2, p0, Lo/ox;->d:Lo/oC;

    invoke-interface {p1, p2, p3}, Lo/ox$TaskDescription;->a(Lo/oC;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    .line 72
    :cond_0
    iget-object p3, p0, Lo/ox;->b:Lo/ov;

    invoke-interface {p3}, Lo/ov;->f()Lo/oC;

    move-result-object p3

    invoke-static {p3}, Lo/ph;->d(Lo/oC;)[B

    move-result-object v6

    if-eqz v6, :cond_2

    .line 73
    array-length p3, v6

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    new-array p3, v1, [Ljava/lang/Object;

    .line 78
    invoke-direct {p0}, Lo/ox;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    const-string v0, "deleteLicense %s"

    invoke-static {v3, v0, p3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 79
    iget-object v4, p0, Lo/ox;->c:Lo/oL;

    iget-object v5, p0, Lo/ox;->d:Lo/oC;

    const/4 v7, 0x0

    .line 83
    invoke-direct {p0}, Lo/ox;->e()Lo/sx;

    move-result-object v8

    new-instance v9, Lo/oA;

    invoke-direct {v9, p0, p1, p2}, Lo/oA;-><init>(Lo/ox;Lo/ox$TaskDescription;Lo/sE;)V

    .line 79
    invoke-interface/range {v4 .. v9}, Lo/oL;->b(Lo/or;[BZLo/sx;Lo/oP;)V

    return-void

    .line 74
    :cond_2
    :goto_0
    iget-object p2, p0, Lo/ox;->b:Lo/ov;

    invoke-interface {p2}, Lo/ov;->f()Lo/oC;

    move-result-object p2

    sget-object p3, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, p2, p3}, Lo/ox$TaskDescription;->a(Lo/oC;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic e(Lo/ox;Lo/ox$TaskDescription;Lo/sE;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo/ox;->d(Lo/ox$TaskDescription;Lo/sE;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method


# virtual methods
.method public e(Lo/ox$TaskDescription;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 54
    invoke-direct {p0}, Lo/ox;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nfLicenseReplace"

    const-string v2, "startLicenseReplace %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 55
    iget-object v0, p0, Lo/ox;->a:Lo/oQ;

    iget-object v1, p0, Lo/ox;->d:Lo/oC;

    .line 57
    invoke-direct {p0}, Lo/ox;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lo/ow;

    invoke-direct {v3, p0, p1}, Lo/ow;-><init>(Lo/ox;Lo/ox$TaskDescription;)V

    .line 55
    invoke-interface {v0, v1, v2, v3}, Lo/oQ;->c(Lo/or;Ljava/lang/String;Lo/oR;)V

    return-void
.end method
