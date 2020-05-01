.class public abstract Lo/pQ;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static l:Z

.field private static p:Z

.field private static q:Z

.field private static r:Z

.field private static s:Z

.field private static t:Z

.field private static u:Z

.field private static w:Z


# instance fields
.field protected a:[Ljava/lang/String;

.field protected final b:Lo/cz;

.field protected c:[Ljava/lang/String;

.field protected final d:Landroid/content/Context;

.field protected e:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private f:Ljava/lang/String;

.field protected g:[Ljava/lang/String;

.field private h:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

.field private i:I

.field protected j:[Ljava/lang/Boolean;

.field private k:Z

.field private m:Lo/StackView;

.field private n:Lcom/netflix/mediaclient/media/VideoResolutionRange;

.field private o:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 84
    invoke-static {}, Lo/pQ;->E()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/pZ;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lo/pQ;->d:Landroid/content/Context;

    .line 90
    iget-object p1, p2, Lo/pZ;->d:Lo/cz;

    iput-object p1, p0, Lo/pQ;->b:Lo/cz;

    .line 91
    iget-object p1, p2, Lo/pZ;->a:Lcom/netflix/mediaclient/service/user/UserAgent;

    iput-object p1, p0, Lo/pQ;->e:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 92
    iput-object p3, p0, Lo/pQ;->o:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    const/4 p1, 0x2

    .line 93
    iput p1, p0, Lo/pQ;->i:I

    .line 94
    invoke-virtual {p0}, Lo/pQ;->e()Z

    move-result p1

    iput-boolean p1, p0, Lo/pQ;->k:Z

    .line 95
    iget-object p1, p0, Lo/pQ;->b:Lo/cz;

    invoke-interface {p1}, Lo/cz;->a()Lcom/netflix/mediaclient/media/VideoResolutionRange;

    move-result-object p1

    iput-object p1, p0, Lo/pQ;->n:Lcom/netflix/mediaclient/media/VideoResolutionRange;

    .line 98
    :try_start_0
    const-class p1, Lo/StackView;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/StackView;

    iput-object p1, p0, Lo/pQ;->m:Lo/StackView;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "nf_manifest_param"

    const-string p2, "AV1 library loader not available"

    .line 100
    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private A()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private B()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Lo/pQ;->k:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lo/fa;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private C()Ljava/lang/String;
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lo/pQ;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private D()Ljava/lang/String;
    .locals 1

    const-string v0, "manifest"

    return-object v0
.end method

.method private static E()V
    .locals 1

    const/4 v0, 0x0

    .line 722
    sput-boolean v0, Lo/pQ;->l:Z

    .line 723
    sput-boolean v0, Lo/pQ;->s:Z

    .line 724
    sput-boolean v0, Lo/pQ;->r:Z

    .line 725
    sput-boolean v0, Lo/pQ;->q:Z

    .line 726
    sput-boolean v0, Lo/pQ;->t:Z

    .line 727
    sput-boolean v0, Lo/pQ;->p:Z

    .line 728
    sput-boolean v0, Lo/pQ;->u:Z

    .line 729
    sput-boolean v0, Lo/pQ;->w:Z

    return-void
.end method

.method private F()Z
    .locals 1

    .line 674
    iget-object v0, p0, Lo/pQ;->b:Lo/cz;

    invoke-interface {v0}, Lo/cz;->o()Z

    move-result v0

    return v0
.end method

.method private G()Z
    .locals 1

    .line 619
    iget-object v0, p0, Lo/pQ;->b:Lo/cz;

    invoke-interface {v0}, Lo/cz;->X()Z

    move-result v0

    return v0
.end method

.method private I()Z
    .locals 1

    .line 660
    iget-object v0, p0, Lo/pQ;->b:Lo/cz;

    invoke-interface {v0}, Lo/cz;->m()Z

    move-result v0

    return v0
.end method

.method public static a(Z)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 612
    invoke-static {}, Lo/qG;->d()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {}, Lo/qG;->e()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b(Lorg/json/JSONArray;)V
    .locals 3

    const-string v0, "nf_manifest_param"

    const-string v1, "add AVC High Proflies"

    .line 207
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "playready-h264hpl22-dash"

    .line 208
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "playready-h264hpl30-dash"

    .line 209
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 211
    iget-object v1, p0, Lo/pQ;->n:Lcom/netflix/mediaclient/media/VideoResolutionRange;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getMaxHeight()I

    move-result v1

    const/16 v2, 0x21c

    if-ge v1, v2, :cond_0

    invoke-direct {p0}, Lo/pQ;->B()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "playready-h264hpl31-dash"

    .line 212
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "add AVC High Proflies 540 & 720P"

    .line 213
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_1
    invoke-virtual {p0}, Lo/pQ;->a()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lo/pQ;->B()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "playready-h264hpl40-dash"

    .line 216
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p1, "add AVC High Proflies 1080P"

    .line 217
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private b(Lo/vh;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 394
    invoke-virtual {p1}, Lo/vh;->bz()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private d(Lorg/json/JSONArray;)V
    .locals 1

    const-string v0, "hevc-main10-L30-dash-cenc"

    .line 222
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 223
    invoke-virtual {p0}, Lo/pQ;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lo/pQ;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    :cond_0
    invoke-static {}, Lo/qG;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "hevc-main10-L31-dash-cenc"

    .line 225
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    const-string p1, "nf_manifest_param"

    const-string v0, "device supports HEVC"

    .line 227
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Z)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 651
    invoke-static {}, Lo/qG;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lo/qG;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 653
    :cond_1
    invoke-static {}, Lo/qG;->b()Z

    move-result p0

    return p0
.end method

.method private f(Lorg/json/JSONArray;)V
    .locals 2

    .line 246
    iget-object v0, p0, Lo/pQ;->o:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    sget-object v1, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->e:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/x;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "hevc-hdr-main10-L30-dash-cenc-prk"

    .line 249
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 250
    invoke-virtual {p0}, Lo/pQ;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lo/pQ;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "hevc-hdr-main10-L31-dash-cenc-prk"

    .line 251
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 253
    :cond_2
    invoke-virtual {p0}, Lo/pQ;->a()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lo/pQ;->B()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "hevc-hdr-main10-L40-dash-cenc-prk"

    .line 254
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_4
    const-string p1, "nf_manifest_param"

    const-string v0, "device supports Hdr10"

    .line 257
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private g(Lorg/json/JSONArray;)V
    .locals 1

    const-string v0, "av1-main-L20-dash-cbcs-prk"

    .line 276
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v0, "av1-main-L21-dash-cbcs-prk"

    .line 277
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 278
    invoke-virtual {p0}, Lo/pQ;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "av1-main-L30-dash-cbcs-prk"

    .line 279
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    const-string p1, "nf_manifest_param"

    const-string v0, "device supports AV1"

    .line 281
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private g(Lorg/json/JSONObject;)V
    .locals 2

    .line 401
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lo/pQ;->a:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v1, "viewableIds"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private h(Lorg/json/JSONArray;)V
    .locals 2

    .line 261
    iget-object v0, p0, Lo/pQ;->o:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    sget-object v1, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->e:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/x;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "hevc-dv5-main10-L30-dash-cenc-prk"

    .line 264
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 265
    invoke-virtual {p0}, Lo/pQ;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lo/pQ;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "hevc-dv5-main10-L31-dash-cenc-prk"

    .line 266
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 268
    :cond_2
    invoke-virtual {p0}, Lo/pQ;->a()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lo/pQ;->B()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "hevc-dv5-main10-L40-dash-cenc-prk"

    .line 269
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v0, "hevc-dv5-main10-L41-dash-cenc-prk"

    .line 270
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_4
    const-string p1, "nf_manifest_param"

    const-string v0, "device supports Dolby Vision"

    .line 272
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private i(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "android"

    const-string v1, "osName"

    .line 318
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    invoke-static {}, Lo/adk;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "osVersion"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "application"

    const-string v2, "samurai"

    .line 320
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    iget-object v1, p0, Lo/pQ;->f:Ljava/lang/String;

    const-string v2, "clientVersion"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    iget-object v1, p0, Lo/pQ;->f:Ljava/lang/String;

    const-string v2, "uiVersion"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uiPlatform"

    .line 323
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    instance-of v0, p0, Lo/pT;

    if-eqz v0, :cond_0

    const-string v0, "offline"

    goto :goto_0

    :cond_0
    const-string v0, "streaming"

    :goto_0
    const-string v1, "player"

    .line 325
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    iget-object v0, p0, Lo/pQ;->b:Lo/cz;

    invoke-interface {v0}, Lo/cz;->Z()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hardware"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private j(Lorg/json/JSONArray;)V
    .locals 2

    const-string v0, "vp9-profile0-L21-dash-cenc"

    .line 231
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v0, "vp9-profile0-L30-dash-cenc"

    .line 232
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 233
    invoke-virtual {p0}, Lo/pQ;->d()Z

    move-result v0

    const-string v1, "nf_manifest_param"

    if-nez v0, :cond_0

    invoke-direct {p0}, Lo/pQ;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lo/qG;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "vp9-profile0-L31-dash-cenc"

    .line 234
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v0, "add VP9 720P"

    .line 235
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_1
    invoke-virtual {p0}, Lo/pQ;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lo/pQ;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lo/qG;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "vp9-profile0-L40-dash-cenc"

    .line 238
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p1, "add VP9 1080P"

    .line 239
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string p1, "device supports VP9"

    .line 241
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private j(Lorg/json/JSONObject;)V
    .locals 2

    .line 405
    invoke-virtual {p0}, Lo/pQ;->n()Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x1

    .line 406
    invoke-virtual {p0, v0, v1}, Lo/pQ;->a(Lorg/json/JSONArray;Z)V

    .line 407
    invoke-virtual {p0, v0}, Lo/pQ;->a(Lorg/json/JSONArray;)V

    .line 408
    invoke-virtual {p0, v0}, Lo/pQ;->e(Lorg/json/JSONArray;)V

    const-string v1, "profiles"

    .line 409
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected a(Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;)Lo/pQ;
    .locals 0

    .line 139
    iput-object p1, p0, Lo/pQ;->h:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    return-object p0
.end method

.method protected a(Lorg/json/JSONArray;)V
    .locals 1

    const-string v0, "dfxp-ls-sdh"

    .line 303
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v0, "nflx-cmisc"

    .line 304
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method protected a(Lorg/json/JSONArray;Z)V
    .locals 1

    const-string v0, "heaac-2-dash"

    .line 285
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 287
    invoke-static {}, Lo/qE;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/pQ;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "xheaac-dash"

    .line 288
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 292
    :cond_1
    iget-object p2, p0, Lo/pQ;->b:Lo/cz;

    invoke-interface {p2}, Lo/cz;->n()Z

    move-result p2

    .line 293
    iget-object v0, p0, Lo/pQ;->b:Lo/cz;

    invoke-interface {v0}, Lo/cz;->L()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ddplus-2.0-dash"

    .line 295
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    if-eqz p2, :cond_3

    const-string p2, "ddplus-5.1-dash"

    .line 298
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 0

    .line 419
    invoke-direct {p0, p1}, Lo/pQ;->j(Lorg/json/JSONObject;)V

    .line 420
    invoke-virtual {p0, p1}, Lo/pQ;->b(Lorg/json/JSONObject;)V

    .line 421
    invoke-virtual {p0, p1}, Lo/pQ;->d(Lorg/json/JSONObject;)V

    return-void
.end method

.method public a()Z
    .locals 2

    .line 184
    iget-object v0, p0, Lo/pQ;->n:Lcom/netflix/mediaclient/media/VideoResolutionRange;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getMaxHeight()I

    move-result v0

    const/16 v1, 0x438

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lo/pQ;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract b()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;
.end method

.method protected b(Ljava/lang/String;)Lo/pQ;
    .locals 0

    .line 144
    iput-object p1, p0, Lo/pQ;->f:Ljava/lang/String;

    return-object p0
.end method

.method protected b([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Boolean;)Lo/pQ;
    .locals 0

    .line 162
    iput-object p1, p0, Lo/pQ;->c:[Ljava/lang/String;

    .line 163
    iput-object p2, p0, Lo/pQ;->g:[Ljava/lang/String;

    .line 164
    iput-object p3, p0, Lo/pQ;->j:[Ljava/lang/Boolean;

    return-object p0
.end method

.method protected b(Lorg/json/JSONObject;)V
    .locals 4

    .line 330
    invoke-direct {p0}, Lo/pQ;->D()Ljava/lang/String;

    move-result-object v0

    const-string v1, "method"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    iget-object v0, p0, Lo/pQ;->h:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flavor"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const/4 v0, 0x1

    const-string v1, "useHttpsStreams"

    .line 334
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "drmType"

    const-string v2, "widevine"

    .line 335
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "supportsWatermark"

    .line 336
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "supportsPreReleasePin"

    .line 337
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 339
    sget-object v1, Lo/tb;->e:Lo/tb;

    sget-object v2, Lcom/netflix/mediaclient/service/player/StreamProfileType;->b:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    const-string v3, "Default"

    invoke-virtual {v1, v2, v3}, Lo/tb;->b(Lcom/netflix/mediaclient/service/player/StreamProfileType;Ljava/lang/String;)Lo/vh;

    move-result-object v1

    .line 340
    invoke-virtual {p0, v1}, Lo/pQ;->d(Lo/vh;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "desiredVmaf"

    const-string v3, "phone_plus_lts"

    .line 342
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    :cond_1
    invoke-virtual {p0}, Lo/pQ;->p()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "supportsEveVP9"

    .line 346
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_2
    const-string v2, "requestEligibleABTests"

    .line 349
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    .line 351
    invoke-virtual {v1}, Lo/vh;->bb()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lo/vh;->bo()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "supportsUnequalizedDownloadables"

    .line 352
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 355
    :cond_3
    iget-object v0, p0, Lo/pQ;->o:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->a(Lorg/json/JSONObject;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)Lorg/json/JSONObject;

    .line 356
    invoke-direct {p0, p1}, Lo/pQ;->i(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected c([Ljava/lang/String;)Lo/pQ;
    .locals 2

    .line 149
    iput-object p1, p0, Lo/pQ;->a:[Ljava/lang/String;

    .line 150
    iget-boolean v0, p0, Lo/pQ;->k:Z

    const-string v1, "nf_manifest_param"

    if-eqz v0, :cond_0

    const-string v0, "HD content is enabled for device, check if we have override if InApp Widevine is used."

    .line 153
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0, p1}, Lo/pQ;->d([Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lo/pQ;->k:Z

    goto :goto_0

    :cond_0
    const-string p1, "Device is limited to SD, not need to check if InApp Widevine is used to play."

    .line 156
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method protected c(Lorg/json/JSONArray;)V
    .locals 2

    const-string v0, "none-h264mpl30-dash"

    .line 192
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v0, "playready-h264mpl30-dash"

    .line 193
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 194
    invoke-virtual {p0}, Lo/pQ;->d()Z

    move-result v0

    const-string v1, "nf_manifest_param"

    if-nez v0, :cond_0

    invoke-direct {p0}, Lo/pQ;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "playready-h264mpl31-dash"

    .line 195
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v0, "none-h264mpl31-dash"

    .line 196
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v0, "device supports 720P"

    .line 197
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_1
    invoke-virtual {p0}, Lo/pQ;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lo/pQ;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "playready-h264mpl40-dash"

    .line 200
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v0, "none-h264mpl40-dash"

    .line 201
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p1, "device supports 1080P"

    .line 202
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method protected c(Lorg/json/JSONObject;)V
    .locals 5

    .line 460
    iget v0, p0, Lo/pQ;->i:I

    const-string v1, "version"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 461
    invoke-direct {p0}, Lo/pQ;->C()Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 462
    iget-object v0, p0, Lo/pQ;->e:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->d()Z

    move-result v0

    const-string v1, "languages"

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lo/pQ;->e:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->b()Lo/BC;

    move-result-object v0

    invoke-interface {v0}, Lo/BC;->getLanguages()[Ljava/lang/String;

    move-result-object v0

    .line 464
    new-instance v2, Lorg/json/JSONArray;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 466
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lo/pQ;->e:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/user/UserAgent;->l()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 468
    :goto_0
    invoke-virtual {p0, p1}, Lo/pQ;->e(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract d(Lorg/json/JSONObject;)V
.end method

.method public d()Z
    .locals 2

    .line 180
    iget-object v0, p0, Lo/pQ;->n:Lcom/netflix/mediaclient/media/VideoResolutionRange;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getMaxHeight()I

    move-result v0

    const/16 v1, 0x2d0

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lo/pQ;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected d(Lo/vh;)Z
    .locals 3

    .line 360
    invoke-direct {p0}, Lo/pQ;->z()Z

    move-result v0

    .line 361
    iget-object v1, p0, Lo/pQ;->b:Lo/cz;

    invoke-interface {v1}, Lo/cz;->b()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/util/DeviceCategory;->b:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne v1, v2, :cond_1

    .line 362
    invoke-direct {p0, p1}, Lo/pQ;->b(Lo/vh;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lo/pQ;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected d([Ljava/lang/String;)Z
    .locals 8

    .line 118
    iget-boolean v0, p0, Lo/pQ;->k:Z

    const/4 v1, 0x0

    const-string v2, "nf_manifest_param"

    if-nez v0, :cond_0

    const-string p1, "Device is limited to SD by default."

    .line 119
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-eqz p1, :cond_4

    .line 123
    array-length v0, p1

    const/4 v3, 0x1

    if-ge v0, v3, :cond_1

    goto :goto_1

    .line 128
    :cond_1
    array-length v0, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    aget-object v5, p1, v4

    .line 129
    invoke-virtual {p0}, Lo/pQ;->b()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    move-result-object v6

    iget-object v7, p0, Lo/pQ;->b:Lo/cz;

    invoke-static {v5, v6, v7}, Lo/adU;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lo/cz;)Z

    move-result v5

    if-nez v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const-string p1, "Device is approved for HD, no overrides based on content."

    .line 134
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    :goto_1
    const-string p1, "No playables, this should NOT happen, return default."

    .line 124
    invoke-static {v2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-boolean p1, p0, Lo/pQ;->k:Z

    return p1
.end method

.method protected e(Lorg/json/JSONArray;)V
    .locals 1

    .line 308
    invoke-static {}, Lo/ady;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BIF240"

    .line 309
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v0, "BIF320"

    .line 311
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_0
    return-void
.end method

.method protected e(Lorg/json/JSONObject;)V
    .locals 2

    .line 446
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 447
    invoke-virtual {p0, v0}, Lo/pQ;->f(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "common"

    .line 448
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method protected e()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lo/pQ;->b:Lo/cz;

    invoke-static {v0}, Lo/adU;->d(Lo/cz;)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 3

    .line 472
    sget-object v0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->a:Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;

    .line 473
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->d()Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    move-result-object v0

    .line 474
    invoke-virtual {p0}, Lo/pQ;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/pQ;->m:Lo/StackView;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lo/pQ;->d:Landroid/content/Context;

    .line 475
    invoke-virtual {v1, v2}, Lo/StackView;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 476
    invoke-static {}, Lo/adq;->i()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lo/fW;->a:Lo/fW$Activity;

    .line 479
    invoke-virtual {v0}, Lo/fW$Activity;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected f(Lorg/json/JSONObject;)Z
    .locals 4

    .line 743
    const-class v0, Lo/zH;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zH;

    const/4 v1, 0x0

    const-string v2, "nf_manifest_param"

    if-nez v0, :cond_0

    const-string p1, "CAD client not found! This should NOT happen!"

    .line 745
    invoke-static {v2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 749
    :cond_0
    invoke-interface {v0}, Lo/zH;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "CAD service token is disabled by configuration or we did not received CAD ST after too many attempts."

    .line 750
    invoke-static {v2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 754
    :cond_1
    invoke-interface {v0}, Lo/zH;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p1, "CAD service token is present, no further action is needed"

    .line 755
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 759
    :cond_2
    invoke-interface {v0}, Lo/zH;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p1, "CAD request is already pending, no further action is needed"

    .line 760
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const-string v1, "CAD service token is NOT present, create a challenge and send it as part of manifest request."

    .line 764
    invoke-static {v2, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-interface {v0}, Lo/zH;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "challenge"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x1

    return p1
.end method

.method protected g()Ljava/lang/String;
    .locals 5

    .line 427
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 428
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 431
    :try_start_0
    invoke-virtual {p0, v0}, Lo/pQ;->a(Lorg/json/JSONObject;)V

    .line 432
    invoke-direct {p0, v0}, Lo/pQ;->g(Lorg/json/JSONObject;)V

    .line 433
    invoke-virtual {p0, v1}, Lo/pQ;->c(Lorg/json/JSONObject;)V

    const-string v2, "params"

    .line 434
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "nf_manifest_param"

    const-string v4, "error creating manifest params"

    .line 436
    invoke-static {v3, v0, v4, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 438
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 483
    invoke-virtual {p0}, Lo/pQ;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/pQ;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 1

    .line 491
    invoke-direct {p0}, Lo/pQ;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/pQ;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/pQ;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 1

    .line 487
    invoke-virtual {p0}, Lo/pQ;->x()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo/pQ;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/pQ;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected abstract k()Z
.end method

.method public l()Z
    .locals 1

    .line 495
    invoke-direct {p0}, Lo/pQ;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/pQ;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 1

    .line 499
    invoke-direct {p0}, Lo/pQ;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/pQ;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected n()Lorg/json/JSONArray;
    .locals 2

    .line 508
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 510
    invoke-virtual {p0}, Lo/pQ;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    invoke-direct {p0, v0}, Lo/pQ;->g(Lorg/json/JSONArray;)V

    .line 514
    :cond_0
    invoke-virtual {p0}, Lo/pQ;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    invoke-direct {p0, v0}, Lo/pQ;->j(Lorg/json/JSONArray;)V

    .line 518
    :cond_1
    invoke-virtual {p0}, Lo/pQ;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 519
    invoke-direct {p0, v0}, Lo/pQ;->b(Lorg/json/JSONArray;)V

    .line 522
    :cond_2
    invoke-virtual {p0, v0}, Lo/pQ;->c(Lorg/json/JSONArray;)V

    .line 525
    invoke-virtual {p0}, Lo/pQ;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 526
    invoke-direct {p0, v0}, Lo/pQ;->d(Lorg/json/JSONArray;)V

    .line 529
    :cond_3
    invoke-virtual {p0}, Lo/pQ;->l()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 530
    invoke-direct {p0, v0}, Lo/pQ;->f(Lorg/json/JSONArray;)V

    .line 533
    :cond_4
    invoke-virtual {p0}, Lo/pQ;->m()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 534
    invoke-direct {p0, v0}, Lo/pQ;->h(Lorg/json/JSONArray;)V

    :cond_5
    return-object v0
.end method

.method protected o()Lorg/json/JSONArray;
    .locals 2

    .line 578
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 579
    invoke-static {}, Lo/qE;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lo/pQ;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "xheaac-dash"

    .line 580
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    return-object v0
.end method

.method protected abstract p()Z
.end method

.method public q()Z
    .locals 1

    .line 627
    iget-boolean v0, p0, Lo/pQ;->k:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lo/qG;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lo/qG;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Z
    .locals 1

    .line 608
    iget-boolean v0, p0, Lo/pQ;->k:Z

    invoke-static {v0}, Lo/pQ;->a(Z)Z

    move-result v0

    return v0
.end method

.method protected abstract s()Z
.end method

.method protected abstract t()Z
.end method

.method public u()Z
    .locals 1

    .line 646
    iget-boolean v0, p0, Lo/pQ;->k:Z

    invoke-static {v0}, Lo/pQ;->e(Z)Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 1

    .line 667
    iget-boolean v0, p0, Lo/pQ;->k:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lo/qG;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract w()Z
.end method

.method protected abstract x()Z
.end method

.method public y()Z
    .locals 1

    .line 681
    iget-boolean v0, p0, Lo/pQ;->k:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lo/qG;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
