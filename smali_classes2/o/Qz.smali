.class public final Lo/Qz;
.super Lo/Aj;
.source ""

# interfaces
.implements Lo/nK;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Qz$TaskDescription;
    }
.end annotation


# static fields
.field public static final c:Lo/Qz$TaskDescription;


# instance fields
.field private final a:Lo/nS;

.field private final b:Lo/aka;

.field private final d:Landroid/content/Context;

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/AA;",
            ">;>;"
        }
    .end annotation
.end field

.field private final i:Lcom/netflix/mediaclient/service/user/UserAgent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Qz$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Qz$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/Qz;->c:Lo/Qz$TaskDescription;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/nS;Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineAgent"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgent"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Lo/Aj;-><init>()V

    iput-object p1, p0, Lo/Qz;->d:Landroid/content/Context;

    iput-object p2, p0, Lo/Qz;->a:Lo/nS;

    iput-object p3, p0, Lo/Qz;->i:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 44
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/Qz;->e:Ljava/util/HashMap;

    .line 45
    new-instance p1, Lcom/netflix/mediaclient/ui/offline/DownloadedForYouController$profileDownloadSize$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadedForYouController$profileDownloadSize$2;-><init>(Lo/Qz;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Qz;->b:Lo/aka;

    return-void
.end method

.method private final a(Lo/BC;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 113
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 116
    :cond_0
    sget-object v0, Lo/aeN;->e:Lo/aeN;

    invoke-interface {p1}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "profile.profileGuid"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/aeN;->c(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    return-void

    .line 118
    :cond_1
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    const-string v1, "BaseNetflixApp.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    const-string v1, "BaseNetflixApp.getInstance().nfAgentProvider"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    new-instance v1, Lo/Qz$Application;

    invoke-direct {v1, p0, p1}, Lo/Qz$Application;-><init>(Lo/Qz;Lo/BC;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo/CameraPrewarmService;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public static final b(Landroid/content/Context;Lo/nS;Lcom/netflix/mediaclient/service/user/UserAgent;)Lo/nK;
    .locals 1

    sget-object v0, Lo/Qz;->c:Lo/Qz$TaskDescription;

    invoke-virtual {v0, p0, p1, p2}, Lo/Qz$TaskDescription;->a(Landroid/content/Context;Lo/nS;Lcom/netflix/mediaclient/service/user/UserAgent;)Lo/nK;

    move-result-object p0

    return-object p0
.end method

.method private final b(Ljava/lang/String;)V
    .locals 11

    .line 164
    iget-object v0, p0, Lo/Qz;->a:Lo/nS;

    invoke-interface {v0}, Lo/nS;->q()V

    .line 167
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    sget-object v0, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {v0, p1}, Lo/aeN;->c(Ljava/lang/String;)F

    move-result v0

    .line 173
    sget-object v1, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {v1}, Lo/aeN;->e()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    int-to-float v2, v1

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1

    goto/16 :goto_9

    .line 178
    :cond_1
    sget-object v2, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {v2}, Lo/aeN;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    .line 183
    move-object v3, v2

    check-cast v3, Lo/AA;

    :cond_3
    :goto_0
    move-object v4, v3

    .line 184
    :cond_4
    :goto_1
    iget-object v5, p0, Lo/Qz;->e:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v5, 0x1

    :goto_3
    if-nez v5, :cond_f

    if-nez v4, :cond_f

    .line 185
    iget-object v4, p0, Lo/Qz;->e:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_7

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/AA;

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move-object v4, v2

    :goto_4
    if-eqz v4, :cond_8

    .line 186
    invoke-interface {v4}, Lo/AA;->getVideoId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    move-object v5, v2

    :goto_5
    if-eqz v4, :cond_9

    .line 187
    invoke-interface {v4}, Lo/AA;->isOfflineAvailable()Z

    move-result v6

    goto :goto_6

    :cond_9
    const/4 v6, 0x0

    :goto_6
    if-eqz v4, :cond_e

    if-nez v5, :cond_a

    goto :goto_7

    :cond_a
    if-nez v6, :cond_b

    .line 196
    iget-object v4, p0, Lo/Qz;->e:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_3

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/AA;

    goto :goto_0

    .line 201
    :cond_b
    sget-object v6, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {v6, v5}, Lo/aeN;->h(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 202
    sget-object v4, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {v4, v5}, Lo/aeN;->b(Ljava/lang/String;)V

    .line 203
    iget-object v4, p0, Lo/Qz;->e:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_3

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/AA;

    goto :goto_0

    .line 208
    :cond_c
    invoke-static {v5}, Lo/RL;->c(Ljava/lang/String;)Lo/Bi;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 209
    iget-object v4, p0, Lo/Qz;->e:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_3

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/AA;

    goto/16 :goto_0

    .line 214
    :cond_d
    sget-object v6, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {v6, v5}, Lo/aeN;->d(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 215
    iget-object v4, p0, Lo/Qz;->e:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_3

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/AA;

    goto/16 :goto_0

    .line 191
    :cond_e
    :goto_7
    iget-object v5, p0, Lo/Qz;->e:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_f
    if-eqz v4, :cond_13

    .line 222
    invoke-interface {v4}, Lo/AA;->getVideoId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 223
    sget-object v2, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {v2, v4}, Lo/aeN;->c(Lo/AA;)F

    move-result v2

    .line 224
    invoke-direct {p0}, Lo/Qz;->h()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    if-eqz v3, :cond_10

    goto :goto_8

    :cond_10
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :goto_8
    const-string v5, "profileDownloadSize[profileGuid] ?: 0f"

    invoke-static {v3, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 227
    sget-object v5, Lo/aeN;->e:Lo/aeN;

    iget-object v7, p0, Lo/Qz;->a:Lo/nS;

    invoke-virtual {v5, v7}, Lo/aeN;->a(Lo/nS;)F

    move-result v5

    const/high16 v7, 0x40000000    # 2.0f

    add-float/2addr v7, v2

    cmpl-float v5, v5, v7

    if-lez v5, :cond_12

    add-float/2addr v3, v2

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_12

    .line 230
    iget-object v0, p0, Lo/Qz;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_11

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AA;

    .line 231
    :cond_11
    iget-object v0, p0, Lo/Qz;->a:Lo/nS;

    .line 232
    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;

    .line 234
    invoke-interface {v4}, Lo/AA;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v7

    .line 235
    invoke-direct {p0}, Lo/Qz;->j()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v8

    .line 237
    sget-object v10, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->c:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    move-object v5, v1

    move-object v9, p1

    .line 232
    invoke-direct/range {v5 .. v10}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;)V

    .line 231
    invoke-interface {v0, v1}, Lo/nS;->b(Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;)V

    goto :goto_9

    .line 241
    :cond_12
    sget-object v0, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {v0}, Lo/aeN;->i()Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 243
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_13

    .line 244
    sget-object v1, Lo/aeN;->e:Lo/aeN;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo/aeN;->i(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lo/Qz;->a:Lo/nS;

    new-instance v2, Lo/nH;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;->downloadedForYou:Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;

    invoke-direct {v2, v0, v3}, Lo/nH;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;)V

    invoke-interface {v1, v2}, Lo/nS;->c(Lo/nH;)V

    .line 246
    invoke-direct {p0, p1}, Lo/Qz;->b(Ljava/lang/String;)V

    :cond_13
    :goto_9
    return-void
.end method

.method private final c(Lo/Bi;)V
    .locals 7

    .line 253
    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/RL;->b(Ljava/lang/String;)Lo/Tf;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "OfflineUiHelper.getOffli\u2026ata.playableId) ?: return"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0}, Lo/Tf;->au()Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-virtual {v0}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, v3, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    invoke-interface {p1}, Lo/Bi;->u()Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-virtual {v0}, Lo/Tf;->S()I

    move-result v2

    invoke-virtual {v0}, Lo/Tf;->P()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 261
    sget-object v4, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {v0}, Lo/Tf;->Q()Ljava/lang/String;

    move-result-object v5

    const-string v6, "details.topLevelId"

    invoke-static {v5, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lo/aeN;->e(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v2

    .line 262
    sget-object v2, Lo/aeN;->e:Lo/aeN;

    const-string v5, "profileGuid"

    invoke-static {p1, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lo/aeN;->c(Ljava/lang/String;)F

    move-result v2

    const/4 v5, 0x2

    int-to-float v5, v5

    div-float/2addr v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/16 v5, 0xe10

    int-to-float v5, v5

    mul-float v2, v2, v5

    int-to-float v5, v4

    cmpg-float v2, v5, v2

    if-gez v2, :cond_1

    .line 264
    sget-object v2, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {v0}, Lo/Tf;->Q()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v4}, Lo/aeN;->e(Ljava/lang/String;I)V

    .line 265
    new-instance v2, Lcom/netflix/model/leafs/DownloadedForYouDetailsImpl;

    invoke-direct {v2}, Lcom/netflix/model/leafs/DownloadedForYouDetailsImpl;-><init>()V

    .line 266
    invoke-virtual {v0}, Lo/Tf;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/model/leafs/DownloadedForYouDetailsImpl;->setParentVideo(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v2, v1}, Lcom/netflix/model/leafs/DownloadedForYouDetailsImpl;->setVideo(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lo/Qz;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 270
    :cond_1
    sget-object p1, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {v0}, Lo/Tf;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v3}, Lo/aeN;->e(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static final synthetic d(Lo/Qz;)Ljava/util/HashMap;
    .locals 0

    .line 38
    invoke-direct {p0}, Lo/Qz;->f()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lo/Qz;Lo/BC;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lo/Qz;->a(Lo/BC;)V

    return-void
.end method

.method private final e(J)F
    .locals 0

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    const p2, 0x3b9aca00

    int-to-float p2, p2

    div-float/2addr p1, p2

    return p1
.end method

.method public static final synthetic e(Lo/Qz;)Ljava/util/HashMap;
    .locals 0

    .line 38
    iget-object p0, p0, Lo/Qz;->e:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic e(Lo/Qz;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lo/Qz;->b(Ljava/lang/String;)V

    return-void
.end method

.method private final f()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v1

    const-string v2, "NetflixApplication.getInstance()"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netflix/mediaclient/NetflixApplication;->x()Lo/RJ;

    move-result-object v1

    const-string v2, "NetflixApplication.getIn\u2026()\n            .offlineUi"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lo/RJ;->b()Lo/Rq;

    move-result-object v1

    const-string v2, "NetflixApplication.getIn\u2026eUi.offlinePlayableUiList"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lo/Rq;->a()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "NetflixApplication.getIn\u2026t.offlinePlayableViewData"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 346
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 347
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "it"

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lo/Bi;

    .line 88
    invoke-static {v5, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lo/Bi;->n()Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->c:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 348
    :cond_2
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 349
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Bi;

    .line 90
    invoke-static {v2, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lo/Bi;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :goto_3
    const-string v5, "list[it.profileGuidOfDownloadRequester] ?: 0f"

    invoke-static {v3, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 91
    move-object v5, v0

    check-cast v5, Ljava/util/Map;

    invoke-interface {v2}, Lo/Bi;->u()Ljava/lang/String;

    move-result-object v6

    const-string v7, "it.profileGuidOfDownloadRequester"

    invoke-static {v6, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lo/Bi;->w()J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lo/Qz;->e(J)F

    move-result v2

    add-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method private final g()V
    .locals 3

    .line 97
    sget-object v0, Lo/fo;->c:Lo/fo$ActionBar;

    iget-object v1, p0, Lo/Qz;->a:Lo/nS;

    invoke-virtual {v0, v1}, Lo/fo$ActionBar;->a(Lo/nS;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {v0}, Lo/aeN;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lo/Qz;->i:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->b()Lo/BC;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v1, Lo/Sm;

    invoke-direct {v1}, Lo/Sm;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lo/Sm;->a(Lo/BC;I)Lio/reactivex/Observable;

    :cond_0
    return-void
.end method

.method private final h()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/Qz;->b:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method private final j()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 10

    .line 285
    new-instance v9, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadedForYou_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    sget v2, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->h:I

    .line 290
    sget-object v5, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->i:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    .line 285
    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;IIILcom/netflix/mediaclient/servicemgr/PlayLocationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v9, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-object v9
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 2

    .line 66
    :try_start_0
    iget-object v0, p0, Lo/Qz;->i:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->b()Lo/BC;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/Qz;->a(Lo/BC;)V

    .line 69
    iget-object v0, p0, Lo/Qz;->i:Lcom/netflix/mediaclient/service/user/UserAgent;

    new-instance v1, Lo/Qz$ActionBar;

    invoke-direct {v1, p0}, Lo/Qz$ActionBar;-><init>(Lo/Qz;)V

    check-cast v1, Lo/ym;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->b(Lo/ym;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "DownloadedForYouController: error starting downloads for user."

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final c()Lo/nS;
    .locals 1

    .line 40
    iget-object v0, p0, Lo/Qz;->a:Lo/nS;

    return-object v0
.end method

.method public c(Ljava/lang/String;Lo/Bi;Lo/nH;)V
    .locals 3

    const-string v0, "playableId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlinePlayable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-interface {p2}, Lo/Bi;->A()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 332
    invoke-virtual {p3}, Lo/nH;->e()Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 333
    sget-object v0, Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;->downloadedForYou:Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;

    if-ne p3, v0, :cond_1

    return-void

    .line 336
    :cond_1
    invoke-interface {p2}, Lo/Bi;->u()Ljava/lang/String;

    move-result-object p3

    .line 337
    invoke-interface {p2}, Lo/Bi;->w()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lo/Qz;->e(J)F

    move-result p2

    .line 339
    sget-object v0, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {v0, p1}, Lo/aeN;->a(Ljava/lang/String;)V

    .line 341
    invoke-direct {p0}, Lo/Qz;->h()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :goto_0
    const-string v1, "profileDownloadSize[profileGuid] ?: 0f"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 342
    invoke-direct {p0}, Lo/Qz;->h()Ljava/util/HashMap;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "profileGuid"

    invoke-static {p3, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sub-float/2addr p1, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v1, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d()V
    .locals 3

    .line 147
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    sget-object v0, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {v0}, Lo/aeN;->e()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lo/Qz;->i:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->r()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    .line 351
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/BC;

    .line 154
    :try_start_0
    invoke-direct {p0, v1}, Lo/Qz;->a(Lo/BC;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v2, "DownloadedForYouController: error downloading for user."

    .line 157
    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 324
    sget-object p1, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {p1}, Lo/aeN;->g()V

    .line 325
    invoke-direct {p0}, Lo/Qz;->h()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public e()V
    .locals 2

    .line 298
    iget-object v0, p0, Lo/Qz;->a:Lo/nS;

    invoke-interface {v0}, Lo/nS;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 299
    :cond_0
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 301
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lo/Qz$Activity;

    invoke-direct {v1, p0}, Lo/Qz$Activity;-><init>(Lo/Qz;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 304
    invoke-direct {p0}, Lo/Qz;->g()V

    return-void
.end method

.method public e(Lo/Bi;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 312
    invoke-interface {p1}, Lo/Bi;->A()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 314
    :cond_0
    invoke-interface {p1}, Lo/Bi;->u()Ljava/lang/String;

    move-result-object v0

    .line 315
    sget-object v1, Lo/aeN;->e:Lo/aeN;

    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "data.playableId"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lo/aeN;->b(Ljava/lang/String;)V

    .line 316
    invoke-direct {p0}, Lo/Qz;->h()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_0
    const-string v2, "profileDownloadSize[profileGuid] ?: 0f"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 317
    invoke-interface {p1}, Lo/Bi;->w()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lo/Qz;->e(J)F

    move-result v2

    .line 318
    invoke-direct {p0}, Lo/Qz;->h()Ljava/util/HashMap;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "profileGuid"

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    invoke-direct {p0, p1}, Lo/Qz;->c(Lo/Bi;)V

    .line 320
    invoke-direct {p0, v0}, Lo/Qz;->b(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final i()Lcom/netflix/mediaclient/service/user/UserAgent;
    .locals 1

    .line 41
    iget-object v0, p0, Lo/Qz;->i:Lcom/netflix/mediaclient/service/user/UserAgent;

    return-object v0
.end method
