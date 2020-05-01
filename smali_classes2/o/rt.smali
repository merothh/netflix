.class public Lo/rt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/rp;


# static fields
.field private static l:I


# instance fields
.field private final a:Lo/pP;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

.field private final d:Landroid/content/Context;

.field private final e:Lo/rf;

.field private final f:Lo/pq;

.field private final g:Lo/iU;

.field private final h:Ljava/lang/Long;

.field private final i:J

.field private j:I

.field private k:Lo/rn$StateListAnimator;

.field private m:[B

.field private n:Landroid/media/MediaCrypto;

.field private o:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lo/pq;Landroid/content/Context;Landroid/os/Handler;Lo/pP;Lo/iU;Lcom/netflix/mediaclient/drm/NetflixMediaDrm;Lo/rf;Ljava/lang/Long;Lo/rn$StateListAnimator;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lo/rt;->f:Lo/pq;

    .line 60
    iput-object p2, p0, Lo/rt;->d:Landroid/content/Context;

    .line 61
    iput-object p3, p0, Lo/rt;->b:Landroid/os/Handler;

    .line 62
    iput-object p4, p0, Lo/rt;->a:Lo/pP;

    .line 63
    iput-object p5, p0, Lo/rt;->g:Lo/iU;

    .line 64
    iput-object p8, p0, Lo/rt;->h:Ljava/lang/Long;

    .line 65
    iput-object p6, p0, Lo/rt;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    .line 66
    iput-object p7, p0, Lo/rt;->e:Lo/rf;

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lo/rt;->i:J

    const/4 p1, 0x2

    .line 68
    iput p1, p0, Lo/rt;->j:I

    .line 69
    iput-object p9, p0, Lo/rt;->k:Lo/rn$StateListAnimator;

    return-void
.end method

.method static synthetic a(Lo/rt;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lo/rt;->x()V

    return-void
.end method

.method static synthetic b(Lo/rt;)I
    .locals 0

    .line 38
    iget p0, p0, Lo/rt;->j:I

    return p0
.end method

.method static synthetic b(Lo/rt;I)I
    .locals 0

    .line 38
    iput p1, p0, Lo/rt;->j:I

    return p1
.end method

.method static synthetic c(Lo/rt;)Ljava/lang/Long;
    .locals 0

    .line 38
    iget-object p0, p0, Lo/rt;->h:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic d(Lo/rt;)V
    .locals 0

    invoke-direct {p0}, Lo/rt;->u()V

    return-void
.end method

.method static synthetic e(Lo/rt;)Lo/rn$StateListAnimator;
    .locals 0

    .line 38
    iget-object p0, p0, Lo/rt;->k:Lo/rn$StateListAnimator;

    return-object p0
.end method

.method static synthetic e(Lo/rt;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 38
    iput-object p1, p0, Lo/rt;->o:Lorg/json/JSONObject;

    return-object p1
.end method

.method private j()V
    .locals 9

    const-string v0, "NfPlayerDrmManager"

    .line 73
    iget v1, p0, Lo/rt;->j:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 81
    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 82
    iget-object v2, p0, Lo/rt;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    sget-object v3, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;->STREAMING:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

    invoke-interface {v2, v3}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->openSession(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;)[B

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    :try_start_1
    iget-object v2, p0, Lo/rt;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    iget-object v3, p0, Lo/rt;->e:Lo/rf;

    invoke-interface {v3}, Lo/rf;->h()[B

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x1

    move-object v3, v8

    invoke-interface/range {v2 .. v7}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm$KeyRequest;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_2

    .line 89
    :try_start_2
    iget-object v3, p0, Lo/rt;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    invoke-interface {v3, v8}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->closeSession([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception v2

    move-object v8, v1

    :goto_0
    :try_start_3
    const-string v3, "unable to open hybrid session"

    .line 85
    invoke-static {v0, v2, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v8, :cond_1

    .line 89
    :try_start_4
    iget-object v2, p0, Lo/rt;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    invoke-interface {v2, v8}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->closeSession([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    :cond_1
    move-object v2, v1

    :catchall_3
    :cond_2
    :goto_1
    const/4 v3, 0x0

    .line 97
    :try_start_5
    iget-object v4, p0, Lo/rt;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    sget-object v5, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;->OFFLINE:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

    invoke-interface {v4, v5}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->openSession(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;)[B

    move-result-object v4

    iput-object v4, p0, Lo/rt;->m:[B

    .line 101
    iget-object v4, p0, Lo/rt;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    iget-object v5, p0, Lo/rt;->m:[B

    iget-object v6, p0, Lo/rt;->e:Lo/rf;

    invoke-interface {v6}, Lo/rf;->k()[B

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->restoreKeys([B[B)V

    .line 103
    iget-object v4, p0, Lo/rt;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    instance-of v4, v4, Lcom/netflix/mediaclient/drm/InAppWidevineMediaDrm;

    if-eqz v4, :cond_3

    .line 105
    iput-object v1, p0, Lo/rt;->n:Landroid/media/MediaCrypto;

    goto :goto_2

    .line 107
    :cond_3
    new-instance v1, Landroid/media/MediaCrypto;

    sget-object v4, Lo/adU;->b:Ljava/util/UUID;

    iget-object v5, p0, Lo/rt;->m:[B

    invoke-direct {v1, v4, v5}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v1, p0, Lo/rt;->n:Landroid/media/MediaCrypto;

    .line 109
    :goto_2
    sput v3, Lo/rt;->l:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 121
    iget-object v1, p0, Lo/rt;->k:Lo/rn$StateListAnimator;

    iget-object v3, p0, Lo/rt;->h:Ljava/lang/Long;

    sget-object v4, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->d:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    invoke-interface {v1, v3, v4}, Lo/rn$StateListAnimator;->b(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/drm/LicenseType;)V

    const/4 v1, 0x4

    .line 122
    iput v1, p0, Lo/rt;->j:I

    .line 125
    iget-object v1, p0, Lo/rt;->e:Lo/rf;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lo/rf;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    .line 130
    :cond_4
    iget-object v1, p0, Lo/rt;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->j(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "could not fetch hybrid license - no internet connection"

    .line 131
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lo/rt;->k:Lo/rn$StateListAnimator;

    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->ch:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sget-object v2, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->b:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    invoke-interface {v0, v1, v2}, Lo/rn$StateListAnimator;->d(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/player/drm/LicenseType;)V

    return-void

    :cond_5
    if-nez v2, :cond_6

    const-string v1, "could not fetch hybrid license - failed to build challenge"

    .line 136
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lo/rt;->k:Lo/rn$StateListAnimator;

    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->aB:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sget-object v2, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->b:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    invoke-interface {v0, v1, v2}, Lo/rn$StateListAnimator;->d(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/player/drm/LicenseType;)V

    return-void

    .line 140
    :cond_6
    iget-object v1, p0, Lo/rt;->e:Lo/rf;

    invoke-interface {v2}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$KeyRequest;->getData()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lo/rf;->b([B)V

    const-string v1, "fetching hybrid license"

    .line 142
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lo/rt;->a:Lo/pP;

    iget-object v1, p0, Lo/rt;->e:Lo/rf;

    new-instance v2, Lo/rt$1;

    invoke-direct {v2, p0}, Lo/rt$1;-><init>(Lo/rt;)V

    invoke-interface {v0, v1, v2}, Lo/pP;->c(Lo/rf;Lo/pS;)V

    return-void

    :cond_7
    :goto_3
    const-string v1, "could not fetch hybrid license - no license link"

    .line 126
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lo/rt;->k:Lo/rn$StateListAnimator;

    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->t:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sget-object v2, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->b:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    invoke-interface {v0, v1, v2}, Lo/rn$StateListAnimator;->d(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/player/drm/LicenseType;)V

    return-void

    :catchall_4
    move-exception v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "unable to open offline DRM session"

    .line 111
    invoke-static {v0, v1, v4, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 112
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->aA:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    .line 113
    iput v3, p0, Lo/rt;->j:I

    .line 115
    invoke-direct {p0}, Lo/rt;->y()V

    .line 116
    iget-object v1, p0, Lo/rt;->k:Lo/rn$StateListAnimator;

    sget-object v2, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->d:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    invoke-interface {v1, v0, v2}, Lo/rn$StateListAnimator;->d(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/player/drm/LicenseType;)V

    return-void

    :catchall_5
    move-exception v0

    if-eqz v8, :cond_8

    .line 89
    :try_start_6
    iget-object v1, p0, Lo/rt;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    invoke-interface {v1, v8}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->closeSession([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 93
    :catchall_6
    :cond_8
    throw v0
.end method

.method private synthetic u()V
    .locals 0

    .line 242
    invoke-direct {p0}, Lo/rt;->j()V

    return-void
.end method

.method private x()V
    .locals 4

    .line 203
    iget-object v0, p0, Lo/rt;->o:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "links"

    .line 206
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 208
    iput-object v1, p0, Lo/rt;->o:Lorg/json/JSONObject;

    return-void

    :cond_1
    const-string v2, "releaseLicense"

    .line 212
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 214
    invoke-static {v0}, Lo/sx;->e(Lorg/json/JSONObject;)Lo/sx;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "NfPlayerDrmManager"

    const-string v3, "releasing hybrid license"

    .line 216
    invoke-static {v2, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v2, p0, Lo/rt;->g:Lo/iU;

    iget-object v3, p0, Lo/rt;->e:Lo/rf;

    invoke-interface {v3}, Lo/rf;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lo/pM;->a(Lo/sx;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lo/iU;->e(Ljava/lang/String;)V

    .line 219
    :cond_2
    iput-object v1, p0, Lo/rt;->o:Lorg/json/JSONObject;

    :cond_3
    return-void
.end method

.method private y()V
    .locals 3

    .line 172
    sget v0, Lo/rt;->l:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lo/rt;->l:I

    .line 173
    iget-object v0, p0, Lo/rt;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xf

    .line 176
    invoke-static {v0}, Lo/adq;->d(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 181
    sget-object v0, Lo/gK;->a:Lo/gK$Application;

    invoke-virtual {v0}, Lo/gK$Application;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lo/rt;->l:I

    sget-object v2, Lo/gK;->a:Lo/gK$Application;

    .line 182
    invoke-virtual {v2}, Lo/gK$Application;->e()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 184
    sput v1, Lo/rt;->l:I

    .line 185
    iget-object v0, p0, Lo/rt;->f:Lo/pq;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/pq;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_1
    sget-object v0, Lo/gK;->a:Lo/gK$Application;

    invoke-virtual {v0}, Lo/gK$Application;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lo/rt;->l:I

    sget-object v2, Lo/gK;->a:Lo/gK$Application;

    .line 191
    invoke-virtual {v2}, Lo/gK$Application;->a()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 193
    sput v1, Lo/rt;->l:I

    .line 194
    iget-object v0, p0, Lo/rt;->f:Lo/pq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lo/rt;->h:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/pq;->j(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 230
    iget v0, p0, Lo/rt;->j:I

    return v0
.end method

.method public b()V
    .locals 2

    .line 265
    :try_start_0
    iget-object v0, p0, Lo/rt;->m:[B

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lo/rt;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    iget-object v1, p0, Lo/rt;->m:[B

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->closeSession([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/rt;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    invoke-interface {v0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x0

    .line 277
    iput-object v0, p0, Lo/rt;->m:[B

    const/4 v0, 0x1

    .line 278
    iput v0, p0, Lo/rt;->j:I

    .line 279
    invoke-direct {p0}, Lo/rt;->x()V

    return-void
.end method

.method public b(Lo/rn$StateListAnimator;)V
    .locals 1

    const/4 v0, 0x2

    .line 240
    iput v0, p0, Lo/rt;->j:I

    .line 241
    iput-object p1, p0, Lo/rt;->k:Lo/rn$StateListAnimator;

    .line 242
    iget-object p1, p0, Lo/rt;->b:Landroid/os/Handler;

    new-instance v0, Lo/ru;

    invoke-direct {v0, p0}, Lo/ru;-><init>(Lo/rt;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b([B)V
    .locals 0

    return-void
.end method

.method public c()Lo/rf;
    .locals 1

    .line 252
    iget-object v0, p0, Lo/rt;->e:Lo/rf;

    return-object v0
.end method

.method public c(Lo/rf;)V
    .locals 0

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 38
    check-cast p1, Lo/rp;

    invoke-virtual {p0, p1}, Lo/rt;->d(Lo/rp;)I

    move-result p1

    return p1
.end method

.method public d(Lo/rp;)I
    .locals 4

    .line 364
    invoke-virtual {p0}, Lo/rt;->l()J

    move-result-wide v0

    .line 365
    invoke-interface {p1}, Lo/rp;->l()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()Ljava/lang/Exception;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 3

    .line 310
    iget-object v0, p0, Lo/rt;->k:Lo/rn$StateListAnimator;

    if-eqz v0, :cond_0

    .line 311
    iget-object v1, p0, Lo/rt;->h:Ljava/lang/Long;

    const-string v2, "acquireLicenseStart"

    invoke-interface {v0, v1, v2}, Lo/rn$StateListAnimator;->e(Ljava/lang/Long;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public h()[B
    .locals 1

    .line 297
    iget-object v0, p0, Lo/rt;->m:[B

    return-object v0
.end method

.method public i()V
    .locals 3

    .line 317
    iget-object v0, p0, Lo/rt;->k:Lo/rn$StateListAnimator;

    if-eqz v0, :cond_0

    .line 318
    iget-object v1, p0, Lo/rt;->h:Ljava/lang/Long;

    const-string v2, "acquireLicenseEnd"

    invoke-interface {v0, v1, v2}, Lo/rn$StateListAnimator;->e(Ljava/lang/Long;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public k()Z
    .locals 2

    .line 334
    iget v0, p0, Lo/rt;->j:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public l()J
    .locals 4

    .line 344
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lo/rt;->i:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public m()Z
    .locals 1

    .line 329
    iget v0, p0, Lo/rt;->j:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o()Z
    .locals 2

    .line 324
    iget v0, p0, Lo/rt;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public p()Lcom/netflix/mediaclient/drm/NetflixMediaDrm;
    .locals 1

    .line 378
    iget-object v0, p0, Lo/rt;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    return-object v0
.end method

.method public q()Landroid/media/MediaCrypto;
    .locals 1

    .line 354
    iget-object v0, p0, Lo/rt;->n:Landroid/media/MediaCrypto;

    return-object v0
.end method

.method public r()Z
    .locals 1

    .line 389
    iget-object v0, p0, Lo/rt;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    instance-of v0, v0, Lcom/netflix/mediaclient/drm/InAppWidevineMediaDrm;

    return v0
.end method

.method public s()V
    .locals 0

    return-void
.end method

.method public t()Ljava/lang/Long;
    .locals 1

    .line 349
    iget-object v0, p0, Lo/rt;->h:Ljava/lang/Long;

    return-object v0
.end method

.method public v()I
    .locals 1

    .line 384
    iget-object v0, p0, Lo/rt;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    invoke-interface {v0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->getMediaDrmType()I

    move-result v0

    return v0
.end method
