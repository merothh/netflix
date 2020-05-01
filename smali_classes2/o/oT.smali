.class public Lo/oT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/oQ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/oT$TaskDescription;
    }
.end annotation


# instance fields
.field private final a:Lo/pM;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/oR;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/sE;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lo/jQ;

.field private final f:Lcom/netflix/mediaclient/servicemgr/IClientLogging;


# direct methods
.method public constructor <init>(Lo/pM;Landroid/os/HandlerThread;Lo/jQ;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/oT;->c:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/oT;->d:Ljava/util/Map;

    .line 66
    iput-object p1, p0, Lo/oT;->a:Lo/pM;

    .line 67
    iput-object p3, p0, Lo/oT;->e:Lo/jQ;

    .line 68
    iput-object p4, p0, Lo/oT;->f:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 69
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lo/oT;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lo/oT;)Landroid/os/Handler;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/oT;->b:Landroid/os/Handler;

    return-object p0
.end method

.method private a(Lo/or;Ljava/lang/String;)Lo/sE;
    .locals 2

    .line 268
    iget-object v0, p0, Lo/oT;->d:Ljava/util/Map;

    invoke-interface {p1}, Lo/or;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/sE;

    if-nez v0, :cond_0

    .line 270
    invoke-direct {p0, p1, p2}, Lo/oT;->d(Lo/or;Ljava/lang/String;)Lo/sE;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    invoke-interface {p1}, Lo/or;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lo/oT;->e(Ljava/lang/String;Lo/sE;)V

    :cond_0
    return-object v0
.end method

.method private a(Lcom/netflix/mediaclient/android/app/Status;Lo/or;Ljava/lang/String;ZLorg/json/JSONObject;Lo/jX;)V
    .locals 8

    .line 179
    invoke-interface {p2}, Lo/or;->a()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-interface {p2}, Lo/or;->e()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-interface {p2}, Lo/or;->c()Ljava/lang/String;

    move-result-object v3

    .line 183
    iget-object v0, p0, Lo/oT;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lo/oR;

    if-nez v6, :cond_0

    const-string p1, "nf_offlineManifestMgr"

    const-string p2, "onManifestsFetched but no callback"

    .line 185
    invoke-static {p1, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 190
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 191
    invoke-direct {p0, p5}, Lo/oT;->c(Lorg/json/JSONObject;)Lo/oT$TaskDescription;

    move-result-object p1

    .line 192
    iget-object v0, p1, Lo/oT$TaskDescription;->c:Lcom/netflix/mediaclient/android/app/Status;

    .line 193
    iget-object v7, p1, Lo/oT$TaskDescription;->e:Lo/sE;

    .line 194
    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 195
    invoke-direct {p0, p2, p3, p5}, Lo/oT;->d(Lo/or;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p5

    goto :goto_0

    :cond_1
    move-object p5, v0

    .line 197
    :goto_0
    invoke-interface {p5}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    new-instance v0, Ljava/io/File;

    invoke-static {p3, v1}, Lo/pi;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_2

    .line 201
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p3

    new-instance v0, Ljava/lang/Throwable;

    const-string v4, "handleManifestResponse manifest gone:"

    invoke-direct {v0, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/Throwable;)V

    .line 204
    :cond_2
    iget-object p3, p1, Lo/oT$TaskDescription;->e:Lo/sE;

    invoke-direct {p0, v1, p3}, Lo/oT;->e(Ljava/lang/String;Lo/sE;)V

    if-eqz p4, :cond_3

    .line 206
    iget-object v0, p0, Lo/oT;->e:Lo/jQ;

    iget-object p1, p1, Lo/oT$TaskDescription;->e:Lo/sE;

    invoke-interface {p1}, Lo/sE;->U()Lo/sA;

    move-result-object v5

    move-object v4, p6

    invoke-interface/range {v0 .. v5}, Lo/jQ;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/jX;Lo/sA;)V

    :cond_3
    move-object p1, p5

    move-object v0, v7

    .line 210
    :cond_4
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 211
    iget-object p3, p0, Lo/oT;->f:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object p3

    invoke-static {p3, p2, p1}, Lo/oS;->b(Lo/zS;Lo/or;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 213
    :cond_5
    invoke-interface {v6, v0, p1}, Lo/oR;->b(Lo/sE;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic b(Lo/oT;)Ljava/util/Map;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/oT;->d:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic c(Lo/oT;)Ljava/util/Map;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/oT;->c:Ljava/util/Map;

    return-object p0
.end method

.method private c(Lorg/json/JSONObject;)Lo/oT$TaskDescription;
    .locals 2

    .line 246
    new-instance v0, Lo/oT$TaskDescription;

    invoke-direct {v0, p0}, Lo/oT$TaskDescription;-><init>(Lo/oT;)V

    .line 247
    invoke-static {p1}, Lo/st;->e(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 248
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 249
    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iput-object v1, v0, Lo/oT$TaskDescription;->c:Lcom/netflix/mediaclient/android/app/Status;

    const/4 v1, 0x0

    .line 250
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/sE;

    iput-object p1, v0, Lo/oT$TaskDescription;->e:Lo/sE;

    goto :goto_0

    :cond_0
    const-string p1, "nf_offlineManifestMgr"

    const-string v1, "manifest parse error"

    .line 252
    invoke-static {p1, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance p1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->bE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p1, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    iput-object p1, v0, Lo/oT$TaskDescription;->c:Lcom/netflix/mediaclient/android/app/Status;

    :goto_0
    return-object v0
.end method

.method private d(Lo/or;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 5

    .line 217
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 218
    invoke-interface {p1}, Lo/or;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lo/pi;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v3, "nf_offlineManifestMgr"

    const-string v4, "filepath for manifest=%s"

    .line 219
    invoke-static {v3, v4, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 221
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    :try_start_0
    const-string v1, "UTF-8"

    .line 224
    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 225
    invoke-static {p2, v1}, Lo/adE;->b(Ljava/lang/String;[B)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "persistManifest unsupported encoding"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lo/SpinnerAdapter;->b(Ljava/lang/Throwable;)V

    :goto_0
    if-nez v2, :cond_0

    .line 231
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object p1, Lcom/netflix/mediaclient/StatusCode;->aS:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    goto :goto_1

    .line 233
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", inputLen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", fileLength="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide p2

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 234
    iget-object p3, p0, Lo/oT;->f:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lo/oS;->a(Lo/zS;Lo/or;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method private d(Lo/or;Ljava/lang/String;)Lo/sE;
    .locals 6

    .line 298
    invoke-interface {p1}, Lo/or;->a()Ljava/lang/String;

    move-result-object v0

    .line 300
    new-instance v1, Ljava/io/File;

    invoke-static {p2, v0}, Lo/pi;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    const-string v0, "nf_offlineManifestMgr"

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 302
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    new-instance v3, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oxId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/or;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " readManifestFromPersistentStore file not found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-interface {p2, v3}, Lo/SpinnerAdapter;->b(Ljava/lang/Throwable;)V

    .line 304
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readManifestFromPersistentStore file not found="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object p2, p0, Lo/oT;->f:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object p2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lo/oS;->e(Lo/zS;Lo/or;Ljava/lang/String;)V

    return-object v2

    .line 309
    :cond_0
    :try_start_0
    invoke-static {v1}, Lo/adE;->c(Ljava/io/File;)[B

    move-result-object p1

    const-string p2, "utf-8"

    .line 310
    invoke-static {p1, p2}, Lo/aev;->c([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 311
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-static {p2}, Lo/st;->e(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 313
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x0

    .line 314
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/sE;

    move-object v2, p1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "nfManifestList is null"

    goto :goto_0

    .line 316
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nfManifestList size="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 317
    :goto_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lo/SpinnerAdapter;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 320
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    new-instance v1, Ljava/lang/Throwable;

    const-string v3, "readManifestFromPersistentStore Exception:"

    invoke-direct {v1, v3, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p2, v1}, Lo/SpinnerAdapter;->b(Ljava/lang/Throwable;)V

    const-string p2, "readManifestFromPersistentStore read error"

    .line 321
    invoke-static {v0, p2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v2
.end method

.method static synthetic d(Lo/oT;Lcom/netflix/mediaclient/android/app/Status;Lo/or;Ljava/lang/String;ZLorg/json/JSONObject;Lo/jX;)V
    .locals 0

    .line 42
    invoke-direct/range {p0 .. p6}, Lo/oT;->a(Lcom/netflix/mediaclient/android/app/Status;Lo/or;Ljava/lang/String;ZLorg/json/JSONObject;Lo/jX;)V

    return-void
.end method

.method static synthetic e(Lo/oT;)Lo/pM;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/oT;->a:Lo/pM;

    return-object p0
.end method

.method private e()V
    .locals 10

    .line 338
    iget-object v0, p0, Lo/oT;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/32 v2, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 340
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 342
    :cond_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/sE;

    invoke-interface {v5}, Lo/sE;->X()J

    move-result-wide v5

    .line 343
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/sE;

    invoke-interface {v7}, Lo/sE;->X()J

    move-result-wide v7

    cmp-long v9, v7, v2

    if-gez v9, :cond_0

    .line 348
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-wide v2, v5

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 355
    iget-object v0, p0, Lo/oT;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private e(Ljava/lang/String;Lo/sE;)V
    .locals 2

    .line 328
    iget-object v0, p0, Lo/oT;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 329
    invoke-direct {p0}, Lo/oT;->e()V

    .line 331
    :cond_0
    iget-object v0, p0, Lo/oT;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lo/or;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lo/oR;)V
    .locals 10

    .line 128
    invoke-interface {p1}, Lo/or;->a()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-static {p1}, Lo/ph;->d(Lo/or;)Ljava/lang/String;

    move-result-object v5

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestOfflineManifestRefreshFromServer playableId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_offlineManifestMgr"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v9, Lo/oT$5;

    move-object v0, v9

    move-object v1, p0

    move-object v3, p5

    move-object v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lo/oT$5;-><init>(Lo/oT;Ljava/lang/String;Lo/oR;Lo/or;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v9}, Lo/oT;->c(Lo/or;Ljava/lang/String;Lo/oR;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lo/oT;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lo/oT;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Lo/or;Ljava/lang/String;Lo/oR;)V
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestOfflineManifestFromCache playableId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/or;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_offlineManifestMgr"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 79
    invoke-direct {p0, p1, p2}, Lo/oT;->a(Lo/or;Ljava/lang/String;)Lo/sE;

    move-result-object p1

    if-nez p1, :cond_0

    .line 81
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->aW:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, p2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 84
    invoke-interface {p3, p1, v0}, Lo/oR;->b(Lo/sE;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_1
    return-void
.end method

.method public c(Lo/or;Lo/jX;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lo/oR;)V
    .locals 7

    .line 94
    invoke-interface {p1}, Lo/or;->a()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {p1}, Lo/ph;->d(Lo/or;)Ljava/lang/String;

    move-result-object v4

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestOfflineManifestFromServer playableId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "nf_offlineManifestMgr"

    invoke-static {v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lo/oT;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lo/oT;->c:Ljava/util/Map;

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lo/oT;->a:Lo/pM;

    .line 103
    invoke-interface {p1}, Lo/or;->e()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-interface {p1}, Lo/or;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lo/oT$2;

    invoke-direct {v6, p0, p1, p3, p2}, Lo/oT$2;-><init>(Lo/oT;Lo/or;Ljava/lang/String;Lo/jX;)V

    move-object v5, p4

    .line 101
    invoke-virtual/range {v0 .. v6}, Lo/pM;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lo/pS;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 280
    iget-object v0, p0, Lo/oT;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v0, p0, Lo/oT;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e(I)V
    .locals 1

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 287
    iget-object p1, p0, Lo/oT;->b:Landroid/os/Handler;

    new-instance v0, Lo/oT$4;

    invoke-direct {v0, p0}, Lo/oT$4;-><init>(Lo/oT;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
