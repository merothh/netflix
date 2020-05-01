.class public final Lo/mB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/agH;
.implements Lo/Ar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/mB$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/agH<",
        "Lo/ahD;",
        ">;",
        "Lo/Ar;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:Lo/agI;

.field private c:Lo/mH;

.field private final d:Lo/H;

.field private e:Landroid/content/Context;

.field private f:Lo/cz;

.field private g:Lo/mN;

.field private h:Lo/agL;

.field private i:Lo/ahJ;

.field private j:Lcom/netflix/msl/msg/MslControl;

.field private final n:Lo/ahn;

.field private o:Lcom/netflix/mediaclient/service/user/UserAgent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/cz;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/H;)V
    .locals 4

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/mB;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 169
    iput-object p4, p0, Lo/mB;->d:Lo/H;

    .line 170
    new-instance p4, Lo/aij;

    invoke-direct {p4}, Lo/aij;-><init>()V

    invoke-static {p4}, Lo/aik;->c(Lo/aik$ActionBar;)V

    .line 171
    new-instance p4, Lo/mN;

    invoke-direct {p4}, Lo/mN;-><init>()V

    iput-object p4, p0, Lo/mB;->g:Lo/mN;

    .line 173
    iput-object p1, p0, Lo/mB;->e:Landroid/content/Context;

    .line 174
    new-instance p4, Lcom/netflix/msl/msg/MslControl;

    new-instance v0, Lo/ahH;

    invoke-direct {v0}, Lo/ahH;-><init>()V

    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v2

    invoke-interface {v2, p1}, Lo/bO;->i(Landroid/content/Context;)Lo/ahG;

    move-result-object v2

    invoke-direct {p4, v1, v0, v2}, Lcom/netflix/msl/msg/MslControl;-><init>(ILo/ahH;Lo/ahG;)V

    iput-object p4, p0, Lo/mB;->j:Lcom/netflix/msl/msg/MslControl;

    const/4 p4, 0x1

    new-array v0, p4, [Ljava/lang/Object;

    .line 176
    invoke-interface {p2}, Lo/cz;->e()Lo/ds;

    move-result-object v2

    invoke-interface {v2}, Lo/ds;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "nf_msl"

    const-string v3, "ESN %s"

    invoke-static {v2, v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 178
    new-instance v0, Lo/mD;

    invoke-direct {v0, p1}, Lo/mD;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/mB;->h:Lo/agL;

    .line 179
    new-instance v0, Lo/mE;

    iget-object v3, p0, Lo/mB;->g:Lo/mN;

    invoke-direct {v0, v3}, Lo/mE;-><init>(Lo/aho;)V

    iput-object v0, p0, Lo/mB;->i:Lo/ahJ;

    .line 180
    iput-object p2, p0, Lo/mB;->f:Lo/cz;

    .line 181
    new-instance v0, Lo/mF;

    iget-object v3, p0, Lo/mB;->g:Lo/mN;

    invoke-direct {v0, p1, p3, v3}, Lo/mF;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/mN;)V

    iput-object v0, p0, Lo/mB;->c:Lo/mH;

    .line 184
    invoke-interface {p2}, Lo/cz;->e()Lo/ds;

    move-result-object p1

    invoke-interface {p1}, Lo/ds;->e()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lo/mB;->h:Lo/agL;

    iget-object v0, p0, Lo/mB;->c:Lo/mH;

    invoke-direct {p0, p1, p2, v0}, Lo/mB;->d(Ljava/lang/String;Lo/ahc;Lo/aim;)Lo/agI;

    move-result-object p1

    iput-object p1, p0, Lo/mB;->b:Lo/agI;

    .line 186
    invoke-static {}, Lo/gv;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 187
    sget-object p1, Lo/ahn;->b:Lo/ahn;

    iput-object p1, p0, Lo/mB;->n:Lo/ahn;

    .line 188
    iget-object p1, p0, Lo/mB;->b:Lo/agI;

    new-instance p2, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$1;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$1;-><init>(Lo/mB;)V

    invoke-virtual {p1, p2}, Lo/agI;->c(Ljava/util/Set;)V

    goto :goto_0

    .line 190
    :cond_0
    sget-object p1, Lo/ahn;->a:Lo/ahn;

    iput-object p1, p0, Lo/mB;->n:Lo/ahn;

    .line 191
    iget-object p1, p0, Lo/mB;->b:Lo/agI;

    new-instance p2, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$2;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$2;-><init>(Lo/mB;)V

    invoke-virtual {p1, p2}, Lo/agI;->c(Ljava/util/Set;)V

    :goto_0
    new-array p1, p4, [Ljava/lang/Object;

    .line 195
    iget-object p2, p0, Lo/mB;->f:Lo/cz;

    invoke-interface {p2}, Lo/cz;->q()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "Do we need to clear MSL store (ESN migration is needed: %b): false"

    invoke-static {v2, p2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 198
    iget-object p1, p0, Lo/mB;->c:Lo/mH;

    check-cast p1, Lo/mF;

    iget-object p2, p0, Lo/mB;->b:Lo/agI;

    invoke-virtual {p1, p2, v1}, Lo/mF;->b(Lcom/netflix/msl/util/MslContext;Z)V

    .line 200
    iput-object p3, p0, Lo/mB;->o:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 201
    invoke-direct {p0}, Lo/mB;->o()V

    return-void
.end method

.method private a(Ljava/net/URL;[BLjava/util/List;)Lo/mB$ActionBar;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "[B",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/mB$ActionBar;"
        }
    .end annotation

    .line 243
    invoke-static {}, Lo/agF;->k()Lo/agF$Activity;

    move-result-object v0

    const/4 v1, 0x1

    .line 244
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/agF$Activity;->d(Ljava/lang/Boolean;)Lo/agF$Activity;

    move-result-object v0

    .line 245
    invoke-virtual {v0, p0}, Lo/agF$Activity;->b(Lo/agH;)Lo/agF$Activity;

    move-result-object v0

    .line 246
    invoke-virtual {v0, p2}, Lo/agF$Activity;->c([B)Lo/agF$Activity;

    move-result-object p2

    iget-object v0, p0, Lo/mB;->i:Lo/ahJ;

    .line 247
    invoke-virtual {p2, v0}, Lo/agF$Activity;->b(Lo/ahJ;)Lo/agF$Activity;

    move-result-object p2

    .line 248
    invoke-virtual {p2}, Lo/agF$Activity;->d()Lo/agF;

    move-result-object p2

    .line 250
    new-instance v0, Lo/mB$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/mB$ActionBar;-><init>(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$1;)V

    .line 251
    new-instance v1, Lo/mI;

    iget-object v2, p0, Lo/mB;->d:Lo/H;

    invoke-direct {v1, v2, p1, p3}, Lo/mI;-><init>(Lo/H;Ljava/net/URL;Ljava/util/List;)V

    iput-object v1, v0, Lo/mB$ActionBar;->a:Lo/mI;

    .line 252
    iget-object p1, p0, Lo/mB;->j:Lcom/netflix/msl/msg/MslControl;

    iget-object p3, p0, Lo/mB;->b:Lo/agI;

    iget-object v1, v0, Lo/mB$ActionBar;->a:Lo/mI;

    const/16 v2, 0x2710

    invoke-virtual {p1, p3, p2, v1, v2}, Lcom/netflix/msl/msg/MslControl;->b(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lo/ahu;I)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, v0, Lo/mB$ActionBar;->d:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method private b(Ljava/net/URL;Lcom/netflix/android/org/json/JSONObject;Ljava/util/List;)Lcom/netflix/android/org/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/netflix/android/org/json/JSONObject;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/netflix/android/org/json/JSONObject;"
        }
    .end annotation

    const-string v0, "UTF-8"

    const/4 v1, 0x0

    .line 710
    :try_start_0
    invoke-virtual {p2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 711
    invoke-direct {p0, p1, p2, p3}, Lo/mB;->a(Ljava/net/URL;[BLjava/util/List;)Lo/mB$ActionBar;

    move-result-object v1

    .line 712
    iget-object p2, v1, Lo/mB$ActionBar;->d:Ljava/util/concurrent/Future;

    invoke-virtual {p0, p2}, Lo/mB;->a(Ljava/util/concurrent/Future;)[B

    move-result-object p2

    .line 713
    new-instance p3, Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p3, p2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p2, "nf_msl"

    const-string v0, "AppBoot response body: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    .line 715
    invoke-static {p2, v0, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 717
    new-instance p2, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {p2, p3}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 718
    iget-object p3, p0, Lo/mB;->h:Lo/agL;

    invoke-direct {p0, p2, p3}, Lo/mB;->c(Lcom/netflix/android/org/json/JSONObject;Lo/agL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    invoke-direct {p0, v1}, Lo/mB;->e(Lo/mB$ActionBar;)V

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 722
    :try_start_1
    new-instance p3, Lcom/netflix/msl/MslInternalException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse our own url for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 724
    :goto_0
    invoke-direct {p0, v1}, Lo/mB;->e(Lo/mB$ActionBar;)V

    .line 725
    throw p1
.end method

.method private b([BLjava/lang/String;Lo/aie;Ljava/lang/Boolean;Z)Lcom/netflix/msl/msg/MessageContext;
    .locals 2

    .line 335
    instance-of v0, p3, Lo/aic;

    .line 339
    invoke-static {}, Lo/mJ;->n()Lo/mJ$Application;

    move-result-object v1

    .line 340
    invoke-virtual {v1, p3}, Lo/mJ$Application;->d(Lo/aie;)Lo/mJ$Application;

    move-result-object p3

    .line 341
    invoke-virtual {p3, p0}, Lo/mJ$Application;->b(Lo/agH;)Lo/mJ$Application;

    move-result-object p3

    .line 342
    invoke-virtual {p3, p1}, Lo/mJ$Application;->e([B)Lo/mJ$Application;

    move-result-object p1

    .line 343
    invoke-virtual {p1, p2}, Lo/mJ$Application;->b(Ljava/lang/String;)Lo/mJ$Application;

    move-result-object p1

    .line 344
    invoke-virtual {p1, p4}, Lo/mJ$Application;->c(Ljava/lang/Boolean;)Lo/mJ$Application;

    move-result-object p1

    iget-object p2, p0, Lo/mB;->i:Lo/ahJ;

    .line 345
    invoke-virtual {p1, p2}, Lo/mJ$Application;->c(Lo/ahJ;)Lo/mJ$Application;

    move-result-object p1

    .line 346
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/mJ$Application;->a(Ljava/lang/Boolean;)Lo/mJ$Application;

    move-result-object p1

    .line 347
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/mJ$Application;->b(Ljava/lang/Boolean;)Lo/mJ$Application;

    move-result-object p1

    .line 348
    invoke-virtual {p1}, Lo/mJ$Application;->e()Lo/mJ;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Lo/aie;)V
    .locals 11

    .line 855
    new-instance v6, Lo/zE$Application;

    const-string v4, "path%3D%5B%27ping%27%5D"

    const-string v1, "/android/7.54/api"

    const-string v2, "GET"

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/zE$Application;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget-object v1, v6, Lo/zE$Application;->a:Ljava/lang/String;

    iget-object v2, v6, Lo/zE$Application;->e:Ljava/lang/String;

    iget-object v3, v6, Lo/zE$Application;->c:Ljava/util/Map;

    iget-object v4, v6, Lo/zE$Application;->b:Ljava/lang/String;

    iget-object v5, v6, Lo/zE$Application;->d:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lo/mB;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 858
    iget-object v1, p0, Lo/mB;->f:Lo/cz;

    invoke-interface {v1}, Lo/cz;->c()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v1

    const-string v2, "/msl"

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 859
    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    const-string v10, "UTF-8"

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    const-string v7, "PING"

    const/4 v9, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v9}, Lo/mB;->b(Ljava/lang/String;[BLcom/netflix/msl/util/MslContext;Ljava/lang/String;Lo/aie;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/util/List;Z)[B

    move-result-object v0

    .line 861
    invoke-virtual {p0, v0}, Lo/mB;->d([B)Lo/agE;

    move-result-object v0

    .line 862
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lo/agE;->e()[B

    move-result-object v0

    invoke-direct {v1, v0, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_msl"

    const-string v2, "ping:: raw api response: %s"

    .line 863
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method private b(Ljava/lang/String;[BLcom/netflix/msl/util/MslContext;Ljava/lang/String;Lo/aie;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/util/List;Z)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/netflix/msl/util/MslContext;",
            "Ljava/lang/String;",
            "Lo/aie;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z)[B"
        }
    .end annotation

    .line 831
    invoke-direct/range {p0 .. p9}, Lo/mB;->e(Ljava/lang/String;[BLcom/netflix/msl/util/MslContext;Ljava/lang/String;Lo/aie;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/util/List;Z)Lo/mB$ActionBar;

    move-result-object p1

    .line 834
    :try_start_0
    iget-object p2, p1, Lo/mB$ActionBar;->d:Ljava/util/concurrent/Future;

    invoke-virtual {p0, p2}, Lo/mB;->a(Ljava/util/concurrent/Future;)[B

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    invoke-direct {p0, p1}, Lo/mB;->e(Lo/mB$ActionBar;)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-direct {p0, p1}, Lo/mB;->e(Lo/mB$ActionBar;)V

    .line 838
    throw p2
.end method

.method private c(Lcom/netflix/android/org/json/JSONObject;Lo/agL;)V
    .locals 5

    const-string v0, "nf_msl"

    if-nez p2, :cond_0

    const-string p1, "extractMslTrustStore:: rsaStore is null!"

    .line 739
    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "error"

    .line 743
    invoke-virtual {p1, v1}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "Error in appboot response, pass whole response to be handled"

    .line 744
    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "msltruststore"

    .line 748
    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    .line 752
    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    .line 753
    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v1, "keys"

    .line 757
    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 761
    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object p1

    .line 762
    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 764
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 765
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 766
    invoke-virtual {p1, v1}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 767
    invoke-interface {p2, v1, v2}, Lo/agL;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void

    .line 758
    :cond_3
    new-instance p2, Lcom/netflix/msl/MslException;

    sget-object v0, Lo/agA;->e:Lo/agz;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "Unable to find msltruststore keys in appboot response (%s)"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p2

    .line 754
    :cond_4
    new-instance p2, Lcom/netflix/msl/MslException;

    sget-object v0, Lo/agA;->e:Lo/agz;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Unable to get msltruststore from appboot response because of error (%s)"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p2

    .line 749
    :cond_5
    new-instance p2, Lcom/netflix/msl/MslException;

    sget-object v0, Lo/agA;->e:Lo/agz;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "Unable to find msltruststore in appboot response (%s)"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p2
.end method

.method private c(Lo/ahF;)V
    .locals 4

    .line 991
    iget-object v0, p0, Lo/mB;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 993
    :try_start_0
    iget-object v1, p0, Lo/mB;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "nf_msl"

    const-string v1, "Entity mismatch already processed, do nothing!"

    .line 994
    invoke-static {p1, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    monitor-exit v0

    return-void

    .line 998
    :cond_0
    invoke-virtual {p1}, Lo/ahF;->e()I

    move-result p1

    const v1, 0x19e2e

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    const-string p1, "nf_msl"

    const-string v1, "Message sender is not the master token entity, log user out!"

    .line 999
    invoke-static {p1, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object p1, p0, Lo/mB;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 1003
    :cond_1
    iget-object p1, p0, Lo/mB;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v2, 0x0

    .line 1005
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 1008
    invoke-direct {p0}, Lo/mB;->k()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 1005
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private d(Ljava/lang/String;Lo/ahc;Lo/aim;)Lo/agI;
    .locals 4

    .line 364
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 365
    sget-object v1, Lo/agT;->c:Lo/agT;

    new-instance v2, Lo/ahb;

    new-instance v3, Lo/mM;

    invoke-direct {v3}, Lo/mM;-><init>()V

    invoke-direct {v2, p2, v3}, Lo/ahb;-><init>(Lo/ahc;Lo/aih;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object p2, Lo/agT;->f:Lo/agT;

    new-instance v1, Lo/aha;

    new-instance v2, Lo/mC;

    iget-object v3, p0, Lo/mB;->f:Lo/cz;

    invoke-interface {v3}, Lo/cz;->e()Lo/ds;

    move-result-object v3

    invoke-direct {v2, v3}, Lo/mC;-><init>(Lo/ds;)V

    invoke-direct {v1, v2}, Lo/aha;-><init>(Lo/aih;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 370
    sget-object v1, Lo/ahy;->i:Lo/ahx;

    new-instance v2, Lo/mO;

    invoke-direct {v2}, Lo/mO;-><init>()V

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    invoke-static {}, Lo/agI;->b()Lo/agI$Application;

    move-result-object v1

    new-instance v2, Lo/agY;

    invoke-direct {v2, p1}, Lo/agY;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v1, v2}, Lo/agI$Application;->a(Lo/agQ;)Lo/agI$Application;

    move-result-object p1

    .line 374
    invoke-virtual {p1, p3}, Lo/agI$Application;->e(Lo/aim;)Lo/agI$Application;

    move-result-object p1

    .line 375
    invoke-virtual {p1, v0}, Lo/agI$Application;->e(Ljava/util/Map;)Lo/agI$Application;

    move-result-object p1

    .line 376
    invoke-virtual {p1, p2}, Lo/agI$Application;->d(Ljava/util/Map;)Lo/agI$Application;

    move-result-object p1

    iget-object p2, p0, Lo/mB;->g:Lo/mN;

    .line 377
    invoke-virtual {p1, p2}, Lo/agI$Application;->a(Lo/aho;)Lo/agI$Application;

    move-result-object p1

    new-instance p2, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$3;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$3;-><init>(Lo/mB;)V

    .line 378
    invoke-virtual {p1, p2}, Lo/agI$Application;->c(Ljava/util/Set;)Lo/agI$Application;

    move-result-object p1

    .line 379
    invoke-virtual {p1}, Lo/agI$Application;->e()Lo/agI;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/lang/String;)Lo/agE;
    .locals 7

    .line 563
    new-instance v0, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v0, p1}, Lcom/netflix/android/org/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 564
    invoke-virtual {v0, p1}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object p1

    const-string v1, "edgemsl-version"

    .line 565
    invoke-virtual {p1, v1}, Lcom/netflix/android/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 567
    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    .line 568
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "headers"

    .line 569
    invoke-virtual {v0, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 570
    invoke-static {v0, v2}, Lo/mQ;->b(Lcom/netflix/android/org/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 571
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 573
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 574
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 575
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v2, "status"

    .line 579
    invoke-virtual {v0, v2}, Lcom/netflix/android/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x208

    .line 581
    invoke-static {v2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 582
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_1
    const-string v2, "payload"

    .line 584
    invoke-virtual {v0, v2}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    const/4 v2, 0x0

    const-string v4, "data"

    .line 587
    invoke-virtual {v0, v4}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "nf_msl"

    if-eqz v5, :cond_2

    const-string v2, "unwrapApiResponse::Base64 received"

    .line 588
    invoke-static {v6, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {v0, v4}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 590
    invoke-static {v0}, Lo/aik;->b(Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_2

    :cond_2
    const-string v4, "json"

    .line 591
    invoke-virtual {v0, v4}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v2, "unwrapApiResponse::Json received"

    .line 592
    invoke-static {v6, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-virtual {v0, v4}, Lcom/netflix/android/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 594
    instance-of v2, v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    if-eqz v2, :cond_3

    .line 595
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_1
    move-object v2, v0

    goto :goto_2

    .line 596
    :cond_3
    instance-of v2, v0, Lcom/netflix/android/org/json/JSONObject;

    const/4 v5, 0x2

    if-eqz v2, :cond_4

    .line 597
    check-cast v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v0, v5}, Lcom/netflix/android/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    .line 598
    :cond_4
    instance-of v2, v0, Lcom/netflix/android/org/json/JSONArray;

    if-eqz v2, :cond_5

    .line 599
    check-cast v0, Lcom/netflix/android/org/json/JSONArray;

    invoke-virtual {v0, v5}, Lcom/netflix/android/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    .line 601
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Only String/JSONObject/JSONArray are supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const-string v0, "No payload contents in data or json"

    .line 604
    invoke-static {v6, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :goto_2
    new-instance v0, Lo/agE;

    invoke-direct {v0, p1, v1, v3, v2}, Lo/agE;-><init>(Ljava/lang/String;Ljava/util/Map;I[B)V

    return-object v0
.end method

.method private e([B)Lo/agE;
    .locals 3

    .line 615
    new-instance v0, Lo/agE;

    const/4 v1, 0x0

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v1, v2, p1}, Lo/agE;-><init>(Ljava/lang/String;Ljava/util/Map;I[B)V

    return-object v0
.end method

.method private e(Ljava/lang/String;Lo/agU;Lo/ahc;Lo/aim;Lo/ahS;)Lo/agI;
    .locals 4

    .line 399
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 400
    sget-object v1, Lo/agT;->c:Lo/agT;

    new-instance v2, Lo/ahb;

    new-instance v3, Lo/mM;

    invoke-direct {v3}, Lo/mM;-><init>()V

    invoke-direct {v2, p3, v3}, Lo/ahb;-><init>(Lo/ahc;Lo/aih;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object p3, Lo/agT;->f:Lo/agT;

    new-instance v1, Lo/aha;

    new-instance v2, Lo/mC;

    iget-object v3, p0, Lo/mB;->f:Lo/cz;

    invoke-interface {v3}, Lo/cz;->e()Lo/ds;

    move-result-object v3

    invoke-direct {v2, v3}, Lo/mC;-><init>(Lo/ds;)V

    invoke-direct {v1, v2}, Lo/aha;-><init>(Lo/aih;)V

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    new-instance p3, Lo/mC;

    new-instance v1, Lo/dq;

    invoke-direct {v1, p1}, Lo/dq;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, v1}, Lo/mC;-><init>(Lo/ds;)V

    .line 404
    sget-object p1, Lo/agX;->m:Lo/agT;

    new-instance v1, Lo/agV;

    invoke-direct {v1, p3, p5}, Lo/agV;-><init>(Lo/aih;Lo/ahS;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 408
    sget-object p3, Lo/ahy;->i:Lo/ahx;

    new-instance p5, Lo/mO;

    invoke-direct {p5}, Lo/mO;-><init>()V

    invoke-interface {p1, p3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-static {}, Lo/agI;->b()Lo/agI$Application;

    move-result-object p3

    .line 411
    invoke-virtual {p3, p2}, Lo/agI$Application;->a(Lo/agQ;)Lo/agI$Application;

    move-result-object p2

    .line 412
    invoke-virtual {p2, p4}, Lo/agI$Application;->e(Lo/aim;)Lo/agI$Application;

    move-result-object p2

    .line 413
    invoke-virtual {p2, v0}, Lo/agI$Application;->e(Ljava/util/Map;)Lo/agI$Application;

    move-result-object p2

    .line 414
    invoke-virtual {p2, p1}, Lo/agI$Application;->d(Ljava/util/Map;)Lo/agI$Application;

    move-result-object p1

    iget-object p2, p0, Lo/mB;->g:Lo/mN;

    .line 415
    invoke-virtual {p1, p2}, Lo/agI$Application;->a(Lo/aho;)Lo/agI$Application;

    move-result-object p1

    new-instance p2, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$4;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$4;-><init>(Lo/mB;)V

    .line 416
    invoke-virtual {p1, p2}, Lo/agI$Application;->c(Ljava/util/Set;)Lo/agI$Application;

    move-result-object p1

    .line 417
    invoke-virtual {p1}, Lo/agI$Application;->e()Lo/agI;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/lang/String;[BLcom/netflix/msl/util/MslContext;Ljava/lang/String;Lo/aie;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/util/List;Z)Lo/mB$ActionBar;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/netflix/msl/util/MslContext;",
            "Ljava/lang/String;",
            "Lo/aie;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lo/mB$ActionBar;"
        }
    .end annotation

    .line 312
    invoke-virtual {p0, p1, p7}, Lo/mB;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/net/URL;

    move-result-object p1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p9

    .line 313
    invoke-direct/range {v0 .. v5}, Lo/mB;->b([BLjava/lang/String;Lo/aie;Ljava/lang/Boolean;Z)Lcom/netflix/msl/msg/MessageContext;

    move-result-object p2

    .line 314
    new-instance p4, Lo/mB$ActionBar;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Lo/mB$ActionBar;-><init>(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$1;)V

    .line 315
    new-instance p5, Lo/mI;

    iget-object p6, p0, Lo/mB;->d:Lo/H;

    invoke-direct {p5, p6, p1, p8}, Lo/mI;-><init>(Lo/H;Ljava/net/URL;Ljava/util/List;)V

    iput-object p5, p4, Lo/mB$ActionBar;->a:Lo/mI;

    .line 316
    iget-object p1, p0, Lo/mB;->j:Lcom/netflix/msl/msg/MslControl;

    iget-object p5, p4, Lo/mB$ActionBar;->a:Lo/mI;

    const/16 p6, 0x2710

    invoke-virtual {p1, p3, p2, p5, p6}, Lcom/netflix/msl/msg/MslControl;->b(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lo/ahu;I)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p4, Lo/mB$ActionBar;->d:Ljava/util/concurrent/Future;

    return-object p4
.end method

.method private e(Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;Lo/aie;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/util/List;Z)Lo/mB$ActionBar;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lo/aie;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lo/mB$ActionBar;"
        }
    .end annotation

    .line 280
    invoke-virtual {p0, p1, p7}, Lo/mB;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/net/URL;

    move-result-object p1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p9

    .line 281
    invoke-direct/range {v0 .. v5}, Lo/mB;->b([BLjava/lang/String;Lo/aie;Ljava/lang/Boolean;Z)Lcom/netflix/msl/msg/MessageContext;

    move-result-object p2

    .line 282
    new-instance p4, Lo/mB$ActionBar;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Lo/mB$ActionBar;-><init>(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$1;)V

    .line 283
    new-instance p5, Lo/mI;

    iget-object p6, p0, Lo/mB;->d:Lo/H;

    invoke-direct {p5, p6, p1, p3, p8}, Lo/mI;-><init>(Lo/H;Ljava/net/URL;Ljava/util/Map;Ljava/util/List;)V

    iput-object p5, p4, Lo/mB$ActionBar;->a:Lo/mI;

    .line 284
    iget-object p1, p0, Lo/mB;->j:Lcom/netflix/msl/msg/MslControl;

    iget-object p3, p0, Lo/mB;->b:Lo/agI;

    iget-object p5, p4, Lo/mB$ActionBar;->a:Lo/mI;

    const/16 p6, 0x2710

    invoke-virtual {p1, p3, p2, p5, p6}, Lcom/netflix/msl/msg/MslControl;->b(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lo/ahu;I)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p4, Lo/mB$ActionBar;->d:Ljava/util/concurrent/Future;

    return-object p4
.end method

.method private e([BLjava/util/Map;Ljava/lang/String;Lo/aie;Ljava/lang/Boolean;ZLjava/util/List;)Lo/mB$ActionBar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lo/aie;",
            "Ljava/lang/Boolean;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/mB$ActionBar;"
        }
    .end annotation

    .line 1299
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0, p6}, Lo/mB;->c(Z)Ljava/lang/String;

    move-result-object p6

    invoke-direct {v0, p6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1301
    invoke-static {}, Lo/agF;->k()Lo/agF$Activity;

    move-result-object p6

    .line 1302
    invoke-virtual {p6, p4}, Lo/agF$Activity;->b(Lo/aie;)Lo/agF$Activity;

    move-result-object p4

    .line 1303
    invoke-virtual {p4, p0}, Lo/agF$Activity;->b(Lo/agH;)Lo/agF$Activity;

    move-result-object p4

    .line 1304
    invoke-virtual {p4, p1}, Lo/agF$Activity;->c([B)Lo/agF$Activity;

    move-result-object p1

    .line 1305
    invoke-virtual {p1, p3}, Lo/agF$Activity;->b(Ljava/lang/String;)Lo/agF$Activity;

    move-result-object p1

    .line 1306
    invoke-virtual {p1, p5}, Lo/agF$Activity;->e(Ljava/lang/Boolean;)Lo/agF$Activity;

    move-result-object p1

    iget-object p3, p0, Lo/mB;->i:Lo/ahJ;

    .line 1307
    invoke-virtual {p1, p3}, Lo/agF$Activity;->b(Lo/ahJ;)Lo/agF$Activity;

    move-result-object p1

    .line 1308
    invoke-virtual {p1}, Lo/agF$Activity;->d()Lo/agF;

    move-result-object p1

    .line 1310
    new-instance p3, Lo/mB$ActionBar;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lo/mB$ActionBar;-><init>(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$1;)V

    .line 1311
    new-instance p4, Lo/mI;

    iget-object p5, p0, Lo/mB;->d:Lo/H;

    invoke-direct {p4, p5, v0, p2, p7}, Lo/mI;-><init>(Lo/H;Ljava/net/URL;Ljava/util/Map;Ljava/util/List;)V

    iput-object p4, p3, Lo/mB$ActionBar;->a:Lo/mI;

    .line 1312
    iget-object p2, p0, Lo/mB;->j:Lcom/netflix/msl/msg/MslControl;

    iget-object p4, p0, Lo/mB;->b:Lo/agI;

    iget-object p5, p3, Lo/mB$ActionBar;->a:Lo/mI;

    const/16 p6, 0x2710

    invoke-virtual {p2, p4, p1, p5, p6}, Lcom/netflix/msl/msg/MslControl;->b(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lo/ahu;I)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p3, Lo/mB$ActionBar;->d:Ljava/util/concurrent/Future;

    return-object p3
.end method

.method private e(Lo/mB$ActionBar;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1024
    iget-object v0, p1, Lo/mB$ActionBar;->a:Lo/mI;

    if-eqz v0, :cond_0

    .line 1028
    iget-object p1, p1, Lo/mB$ActionBar;->a:Lo/mI;

    invoke-virtual {p1}, Lo/mI;->b()V

    return-void

    .line 1025
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MSL URL not known! This should NOT happen!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1021
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MSL channel and URL not known! This should NOT happen!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private j(Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 677
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/appboot/"

    .line 678
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lo/mB;->f:Lo/cz;

    invoke-interface {p1}, Lo/cz;->e()Lo/ds;

    move-result-object p1

    invoke-interface {p1}, Lo/ds;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 683
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to create URL"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private k()V
    .locals 2

    .line 1013
    invoke-direct {p0}, Lo/mB;->t()V

    .line 1014
    iget-object v0, p0, Lo/mB;->o:Lcom/netflix/mediaclient/service/user/UserAgent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->e(Z)V

    .line 1015
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "MSL entity mismatch handled."

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    return-void
.end method

.method private l()V
    .locals 17

    move-object/from16 v7, p0

    const-string v8, "migrateESN: ping() failed with error: "

    const-string v9, "nf_msl"

    .line 1043
    iget-object v0, v7, Lo/mB;->c:Lo/mH;

    invoke-virtual {v0}, Lo/mH;->e()Lo/ahS;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1046
    invoke-direct/range {p0 .. p0}, Lo/mB;->t()V

    return-void

    .line 1050
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lo/mB;->d()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "useragent_current_profile_id"

    invoke-static {v0, v2, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1

    .line 1053
    invoke-direct/range {p0 .. p0}, Lo/mB;->t()V

    return-void

    .line 1057
    :cond_1
    iget-object v0, v7, Lo/mB;->c:Lo/mH;

    invoke-virtual {v0, v10}, Lo/mH;->c(Ljava/lang/String;)Lo/ahX;

    move-result-object v14

    if-nez v14, :cond_2

    .line 1060
    invoke-direct/range {p0 .. p0}, Lo/mB;->t()V

    return-void

    .line 1064
    :cond_2
    new-instance v3, Lo/agU;

    iget-object v0, v7, Lo/mB;->b:Lo/agI;

    new-instance v2, Lo/agY;

    iget-object v4, v7, Lo/mB;->f:Lo/cz;

    .line 1068
    invoke-interface {v4}, Lo/cz;->e()Lo/ds;

    move-result-object v4

    invoke-interface {v4}, Lo/ds;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lo/agY;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v0, v6, v2, v1}, Lo/agU;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/agQ;Ljava/lang/String;)V

    .line 1073
    new-instance v15, Lo/mH;

    iget-object v0, v7, Lo/mB;->e:Landroid/content/Context;

    iget-object v1, v7, Lo/mB;->o:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v2, v7, Lo/mB;->g:Lo/mN;

    invoke-direct {v15, v0, v1, v2}, Lo/mH;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/mN;)V

    .line 1075
    iget-object v0, v7, Lo/mB;->f:Lo/cz;

    .line 1076
    invoke-interface {v0}, Lo/cz;->e()Lo/ds;

    move-result-object v0

    invoke-interface {v0}, Lo/ds;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v7, Lo/mB;->h:Lo/agL;

    move-object/from16 v1, p0

    move-object v5, v15

    .line 1075
    invoke-direct/range {v1 .. v6}, Lo/mB;->e(Ljava/lang/String;Lo/agU;Lo/ahc;Lo/aim;Lo/ahS;)Lo/agI;

    move-result-object v1

    .line 1083
    new-instance v2, Lo/aia;

    iget-object v12, v7, Lo/mB;->b:Lo/agI;

    iget-object v0, v7, Lo/mB;->c:Lo/mH;

    .line 1086
    invoke-virtual {v0}, Lo/mH;->e()Lo/ahS;

    move-result-object v13

    iget-object v0, v7, Lo/mB;->f:Lo/cz;

    .line 1088
    invoke-interface {v0}, Lo/cz;->e()Lo/ds;

    move-result-object v0

    invoke-interface {v0}, Lo/ds;->e()Ljava/lang/String;

    move-result-object v0

    const/16 v16, 0x0

    move-object v11, v2

    move-object v3, v15

    move-object v15, v0

    invoke-direct/range {v11 .. v16}, Lo/aia;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/ahX;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 1095
    :try_start_0
    invoke-direct {v7, v1, v10, v2}, Lo/mB;->b(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Lo/aie;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/mediaclient/service/msl/client/MslErrorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    new-array v0, v4, [Ljava/lang/Object;

    .line 1108
    invoke-static {v9, v1, v8, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1109
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/EsnMigrationFailedException;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/msl/client/EsnMigrationFailedException;-><init>()V

    throw v0

    :catch_1
    move-exception v0

    move-object v1, v0

    new-array v0, v4, [Ljava/lang/Object;

    .line 1105
    invoke-static {v9, v1, v8, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1106
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/EsnMigrationFailedException;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/msl/client/EsnMigrationFailedException;-><init>()V

    throw v0

    :catch_2
    move-exception v0

    move-object v5, v0

    new-array v0, v4, [Ljava/lang/Object;

    const-string v6, "migrateESN: ping() failed with error, retry"

    .line 1097
    invoke-static {v9, v5, v6, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1099
    :try_start_1
    invoke-direct {v7, v1, v10, v2}, Lo/mB;->b(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Lo/aie;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1113
    :goto_0
    iput-object v3, v7, Lo/mB;->c:Lo/mH;

    .line 1114
    iget-object v0, v7, Lo/mB;->f:Lo/cz;

    invoke-interface {v0}, Lo/cz;->e()Lo/ds;

    move-result-object v0

    invoke-interface {v0}, Lo/ds;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Lo/mB;->h:Lo/agL;

    iget-object v2, v7, Lo/mB;->c:Lo/mH;

    invoke-direct {v7, v0, v1, v2}, Lo/mB;->d(Ljava/lang/String;Lo/ahc;Lo/aim;)Lo/agI;

    move-result-object v0

    iput-object v0, v7, Lo/mB;->b:Lo/agI;

    return-void

    :catchall_0
    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "migrateESN: ping() failed second time, report"

    .line 1101
    invoke-static {v9, v5, v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1102
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/EsnMigrationFailedException;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/msl/client/EsnMigrationFailedException;-><init>()V

    throw v0
.end method

.method private m()V
    .locals 2

    const-string v0, "nf_msl"

    const-string v1, "handleEsnMigrationFailure:: force clear MSL store to log user out!"

    .line 228
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-direct {p0}, Lo/mB;->t()V

    .line 230
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "ESN migration failed!"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    return-void
.end method

.method private o()V
    .locals 4

    .line 206
    iget-object v0, p0, Lo/mB;->f:Lo/cz;

    invoke-interface {v0}, Lo/cz;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "nf_msl"

    const-string v1, "handleEsnMigration:: ESN migration required, start..."

    .line 208
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :try_start_0
    iget-object v1, p0, Lo/mB;->c:Lo/mH;

    invoke-virtual {v1}, Lo/mH;->j()V

    .line 214
    invoke-direct {p0}, Lo/mB;->l()V

    .line 217
    iget-object v1, p0, Lo/mB;->c:Lo/mH;

    invoke-virtual {v1}, Lo/mH;->l()V
    :try_end_0
    .catch Lcom/netflix/mediaclient/service/msl/client/EsnMigrationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ESN migration failed, blow MSL store and redo all..."

    .line 220
    invoke-static {v0, v1, v3, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 221
    invoke-direct {p0}, Lo/mB;->m()V

    :cond_0
    :goto_0
    return-void
.end method

.method private p()V
    .locals 1

    .line 1479
    iget-object v0, p0, Lo/mB;->c:Lo/mH;

    invoke-virtual {v0}, Lo/mH;->f()V

    return-void
.end method

.method private r()V
    .locals 1

    .line 1481
    iget-object v0, p0, Lo/mB;->c:Lo/mH;

    invoke-virtual {v0}, Lo/mH;->d()V

    return-void
.end method

.method private t()V
    .locals 2

    .line 1484
    invoke-virtual {p0}, Lo/mB;->h()V

    .line 1485
    invoke-direct {p0}, Lo/mB;->p()V

    .line 1486
    invoke-direct {p0}, Lo/mB;->r()V

    .line 1487
    iget-object v0, p0, Lo/mB;->c:Lo/mH;

    instance-of v1, v0, Lo/mF;

    if-eqz v1, :cond_0

    .line 1488
    check-cast v0, Lo/mF;

    invoke-virtual {v0}, Lo/mF;->a()V

    goto :goto_0

    :cond_0
    const-string v0, "nf_msl"

    const-string v1, "This should NOT happen!"

    .line 1490
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "MSL store is NOT AndroidMslStore and we are trying to clear cookies!"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;Ljava/lang/Long;)Lcom/netflix/android/org/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    .line 431
    invoke-virtual {p0, p1, p2, v0}, Lo/mB;->e(Ljava/lang/Long;Ljava/lang/Long;[B)Lcom/netflix/android/org/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public a()Lo/ahX;
    .locals 5

    .line 1158
    iget-object v0, p0, Lo/mB;->c:Lo/mH;

    iget-object v0, v0, Lo/mH;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1159
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "nf_msl"

    if-nez v1, :cond_0

    const-string v0, "no tokens"

    .line 1160
    invoke-static {v3, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1165
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ahX;

    .line 1166
    invoke-virtual {v1}, Lo/ahX;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "found a verified token"

    .line 1167
    invoke-static {v3, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v2, "found token %s"

    .line 1176
    invoke-static {v3, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 1496
    iget-object v0, p0, Lo/mB;->c:Lo/mH;

    invoke-virtual {v0, p1}, Lo/mH;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/util/concurrent/Future;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Lcom/netflix/msl/msg/MslControl$PendingIntent;",
            ">;)[B"
        }
    .end annotation

    const-string v0, "nf_msl"

    const/4 v1, 0x0

    .line 924
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/msl/msg/MslControl$PendingIntent;

    if-eqz p1, :cond_1

    .line 929
    iget-object p1, p1, Lcom/netflix/msl/msg/MslControl$PendingIntent;->b:Lo/ahO;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "processRequest:: check input stream for error... "

    .line 951
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-virtual {p1}, Lo/ahO;->b()Lo/ahF;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "processRequest:: response received... "

    .line 961
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x4000

    .line 962
    invoke-static {p1, v0}, Lo/aii;->c(Ljava/io/InputStream;I)[B

    move-result-object p1

    return-object p1

    .line 958
    :cond_0
    invoke-direct {p0, v1}, Lo/mB;->c(Lo/ahF;)V

    .line 959
    new-instance p1, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;

    invoke-direct {p1, v1}, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;-><init>(Lo/ahF;)V

    throw p1

    .line 926
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v2, "No MslChannel"

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Interrupted exception found "

    .line 947
    invoke-static {v0, p1, v2, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 948
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Execution exception: "

    .line 932
    invoke-static {v0, p1, v2, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 933
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 934
    instance-of v1, p1, Lcom/netflix/msl/MslException;

    if-nez v1, :cond_3

    .line 939
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    const-string v1, "Runtime exception found "

    .line 940
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 944
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    const-string v1, "MSL exception found "

    .line 935
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    check-cast p1, Lcom/netflix/msl/MslException;

    throw p1
.end method

.method public b(Ljava/lang/String;)Lo/ahX;
    .locals 1

    .line 1154
    iget-object v0, p0, Lo/mB;->c:Lo/mH;

    invoke-virtual {v0, p1}, Lo/mH;->c(Ljava/lang/String;)Lo/ahX;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V
    .locals 1

    .line 1472
    iget-object v0, p0, Lo/mB;->c:Lo/mH;

    invoke-virtual {v0, p1, p2}, Lo/mH;->b(Ljava/lang/String;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1408
    iget-object v0, p0, Lo/mB;->c:Lo/mH;

    invoke-virtual {v0, p1, p2}, Lo/mH;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1186
    iget-object v0, p0, Lo/mB;->c:Lo/mH;

    invoke-virtual {v0}, Lo/mH;->h()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;Lo/aie;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/util/List;Z)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lo/aie;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z)[B"
        }
    .end annotation

    .line 795
    invoke-direct/range {p0 .. p9}, Lo/mB;->e(Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;Lo/aie;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/util/List;Z)Lo/mB$ActionBar;

    move-result-object p1

    .line 798
    :try_start_0
    iget-object p2, p1, Lo/mB$ActionBar;->d:Ljava/util/concurrent/Future;

    invoke-virtual {p0, p2}, Lo/mB;->a(Ljava/util/concurrent/Future;)[B

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    invoke-direct {p0, p1}, Lo/mB;->e(Lo/mB$ActionBar;)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-direct {p0, p1}, Lo/mB;->e(Lo/mB$ActionBar;)V

    .line 802
    throw p2
.end method

.method public c(Ljava/lang/String;Lcom/netflix/android/org/json/JSONObject;Ljava/util/List;)Lcom/netflix/android/org/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netflix/android/org/json/JSONObject;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/netflix/android/org/json/JSONObject;"
        }
    .end annotation

    .line 670
    invoke-direct {p0, p1}, Lo/mB;->j(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lo/mB;->b(Ljava/net/URL;Lcom/netflix/android/org/json/JSONObject;Ljava/util/List;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public c()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;
    .locals 1

    .line 1123
    iget-object v0, p0, Lo/mB;->f:Lo/cz;

    invoke-interface {v0}, Lo/cz;->c()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 1328
    iget-object p1, p0, Lo/mB;->f:Lo/cz;

    invoke-interface {p1}, Lo/cz;->c()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object p1

    const-string v0, "/ichnaea/cl2"

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1330
    :cond_0
    iget-object p1, p0, Lo/mB;->f:Lo/cz;

    invoke-interface {p1}, Lo/cz;->c()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object p1

    const-string v0, "/ichnaea/log"

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lo/zE$TaskDescription;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "nf_msl"

    const-string v2, "getMslTokensAndCrypto (from MDX) with userid %s"

    .line 1413
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1415
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1416
    iget-object v0, p0, Lo/mB;->c:Lo/mH;

    invoke-virtual {v0}, Lo/mH;->e()Lo/ahS;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 1420
    :cond_0
    iget-object v2, p0, Lo/mB;->c:Lo/mH;

    invoke-virtual {v2, p1}, Lo/mH;->c(Ljava/lang/String;)Lo/ahX;

    move-result-object p1

    .line 1421
    iget-object v2, p0, Lo/mB;->c:Lo/mH;

    invoke-virtual {v2, v0}, Lo/mH;->b(Lo/ahS;)Lo/agM;

    move-result-object v2

    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    .line 1423
    new-instance v1, Lo/zE$TaskDescription;

    invoke-direct {v1, v0, p1, v2}, Lo/zE$TaskDescription;-><init>(Lo/ahS;Lo/ahX;Lo/agM;)V

    :cond_1
    return-object v1
.end method

.method public d()Landroid/content/Context;
    .locals 1

    .line 1132
    iget-object v0, p0, Lo/mB;->e:Landroid/content/Context;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;
    .locals 1

    .line 1467
    iget-object v0, p0, Lo/mB;->c:Lo/mH;

    invoke-virtual {v0, p1}, Lo/mH;->d(Ljava/lang/String;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 506
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 507
    new-instance v1, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    const-string v2, "path"

    .line 509
    invoke-virtual {v1, v2, p1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 510
    new-instance p1, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {p1}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    if-eqz p3, :cond_0

    .line 512
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 514
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 515
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 516
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    goto :goto_1

    .line 520
    :cond_1
    new-instance p4, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {p4}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    :goto_1
    const-string p3, "query"

    invoke-virtual {v1, p3, p4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string p3, "headers"

    .line 521
    invoke-virtual {v1, p3, p1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 522
    invoke-static {p5}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 524
    new-instance p1, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {p1}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    const-string p3, "payload"

    .line 525
    invoke-virtual {v1, p3, p1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string p3, "data"

    .line 526
    invoke-virtual {p1, p3, p5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 528
    :cond_2
    invoke-static {p2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "method"

    .line 529
    invoke-virtual {v1, p1, p2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 532
    :cond_3
    new-instance p1, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {p1}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 533
    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    .line 534
    invoke-virtual {p1, v1}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    .line 536
    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d([B)Lo/agE;
    .locals 4

    .line 548
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unwrapApiResponse::raw JSON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nf_msl"

    invoke-static {v2, v1}, Lo/ChooserTargetService;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :try_start_0
    invoke-direct {p0, v0}, Lo/mB;->e(Ljava/lang/String;)Lo/agE;

    move-result-object p1
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Failed to parse as standard API response, trying NQ"

    .line 555
    invoke-static {v2, v0, v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 556
    invoke-direct {p0, p1}, Lo/mB;->e([B)Lo/agE;

    move-result-object p1

    return-object p1
.end method

.method public d([BLjava/util/Map;Ljava/lang/String;Lo/aie;Ljava/util/List;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lo/aie;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .line 1348
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lo/mB;->e([BLjava/util/Map;Ljava/lang/String;Lo/aie;Ljava/lang/Boolean;ZLjava/util/List;)Lo/mB$ActionBar;

    move-result-object p1

    .line 1352
    :try_start_0
    iget-object p2, p1, Lo/mB$ActionBar;->d:Ljava/util/concurrent/Future;

    invoke-virtual {p0, p2}, Lo/mB;->a(Ljava/util/concurrent/Future;)[B

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1355
    invoke-direct {p0, p1}, Lo/mB;->e(Lo/mB$ActionBar;)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-direct {p0, p1}, Lo/mB;->e(Lo/mB$ActionBar;)V

    .line 1356
    throw p2
.end method

.method public e(Lcom/netflix/android/org/json/JSONObject;Ljava/util/List;)Lcom/netflix/android/org/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/android/org/json/JSONObject;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/netflix/android/org/json/JSONObject;"
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lo/mB;->f:Lo/cz;

    invoke-interface {v0}, Lo/cz;->c()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->a()Z

    move-result v0

    .line 632
    iget-object v1, p0, Lo/mB;->f:Lo/cz;

    invoke-interface {v1}, Lo/cz;->c()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v1

    iget-object v2, p0, Lo/mB;->f:Lo/cz;

    invoke-interface {v2}, Lo/cz;->e()Lo/ds;

    move-result-object v2

    invoke-interface {v2}, Lo/ds;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->e(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "nf_msl"

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    .line 635
    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "AppBoot server does NOT support HTTPS, execute by http only %s"

    invoke-static {v4, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 636
    invoke-direct {p0, v1, p1, p2}, Lo/mB;->b(Ljava/net/URL;Lcom/netflix/android/org/json/JSONObject;Ljava/util/List;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    .line 639
    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    const-string v5, "AppBoot server does support HTTPS, execute first by https, url %s"

    invoke-static {v4, v5, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 642
    :try_start_0
    invoke-direct {p0, v1, p1, p2}, Lo/mB;->b(Ljava/net/URL;Lcom/netflix/android/org/json/JSONObject;Ljava/util/List;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "Failed to execute appBoot using https! Trying http"

    .line 644
    invoke-static {v4, v0, v6, v5}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 647
    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^https"

    const-string v5, "http"

    .line 648
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v2, "AppBoot server execute second time by http, url %s"

    .line 650
    invoke-static {v4, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 651
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 652
    invoke-direct {p0, v1, p1, p2}, Lo/mB;->b(Ljava/net/URL;Lcom/netflix/android/org/json/JSONObject;Ljava/util/List;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/Long;Ljava/lang/Long;[B)Lcom/netflix/android/org/json/JSONObject;
    .locals 4

    .line 446
    new-instance p2, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {p2}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 447
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    const-string v1, "hash"

    if-eqz p1, :cond_0

    .line 449
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    :cond_0
    const-string v2, "msltruststore"

    .line 452
    invoke-virtual {p2, v2, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 454
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    if-eqz p1, :cond_1

    .line 456
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    :cond_1
    const-string p1, "ssltruststore"

    .line 459
    invoke-virtual {p2, p1, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const/4 p1, 0x1

    const-string v0, "retrystrategy"

    .line 462
    invoke-virtual {p2, v0, p1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;I)Lcom/netflix/android/org/json/JSONObject;

    if-eqz p3, :cond_2

    .line 465
    new-instance p1, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {p1}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 466
    invoke-static {p3}, Lo/aik;->a([B)Ljava/lang/String;

    move-result-object p3

    const-string v0, "challenge"

    invoke-virtual {p1, v0, p3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string p3, "provision"

    .line 467
    invoke-virtual {p2, p3, p1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :cond_2
    return-object p2
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 1144
    iget-object v0, p0, Lo/mB;->f:Lo/cz;

    invoke-interface {v0}, Lo/cz;->c()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v0

    const-string v1, "/msl"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/Object;)Ljava/net/URL;
    .locals 5

    .line 891
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 892
    new-instance p1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msl"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    instance-of v0, p2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "/"

    if-eqz v0, :cond_0

    .line 894
    :try_start_1
    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 896
    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    return-object v0

    :catch_0
    move-exception p1

    const-string p2, "nf_msl"

    const-string v0, "Failed to add TAG to URL"

    .line 902
    invoke-static {p2, p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 903
    iget-object p1, p0, Lo/mB;->f:Lo/cz;

    invoke-interface {p1}, Lo/cz;->c()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object p1

    const-string p2, "/msl"

    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public e([BLjava/util/Map;Ljava/lang/String;Lo/aie;Ljava/util/List;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lo/aie;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .line 1375
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lo/mB;->e([BLjava/util/Map;Ljava/lang/String;Lo/aie;Ljava/lang/Boolean;ZLjava/util/List;)Lo/mB$ActionBar;

    move-result-object p1

    .line 1379
    :try_start_0
    iget-object p2, p1, Lo/mB$ActionBar;->d:Ljava/util/concurrent/Future;

    invoke-virtual {p0, p2}, Lo/mB;->a(Ljava/util/concurrent/Future;)[B

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1382
    invoke-direct {p0, p1}, Lo/mB;->e(Lo/mB$ActionBar;)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-direct {p0, p1}, Lo/mB;->e(Lo/mB$ActionBar;)V

    .line 1383
    throw p2
.end method

.method public declared-synchronized f()V
    .locals 1

    monitor-enter p0

    .line 1194
    :try_start_0
    iget-object v0, p0, Lo/mB;->c:Lo/mH;

    invoke-virtual {v0}, Lo/mH;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1195
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()Lo/zE$Activity;
    .locals 2

    monitor-enter p0

    .line 1394
    :try_start_0
    iget-object v0, p0, Lo/mB;->c:Lo/mH;

    invoke-virtual {v0}, Lo/mH;->i()Lo/zE$Activity;

    move-result-object v0

    .line 1395
    iget-object v1, p0, Lo/mB;->c:Lo/mH;

    invoke-virtual {v1}, Lo/mH;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1396
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()V
    .locals 1

    .line 1476
    iget-object v0, p0, Lo/mB;->c:Lo/mH;

    invoke-virtual {v0}, Lo/mH;->b()V

    return-void
.end method

.method public i()Lo/ahD;
    .locals 2

    const-string v0, "nf_msl"

    const-string v1, "WidevineKeyRequestDataProvider::get:"

    .line 1219
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    invoke-static {}, Lo/dd;->c()Lo/dc;

    move-result-object v0

    invoke-interface {v0}, Lo/dc;->f()Lo/ahD;

    move-result-object v0

    return-object v0
.end method

.method public j()Lo/aho;
    .locals 1

    .line 1457
    iget-object v0, p0, Lo/mB;->g:Lo/mN;

    return-object v0
.end method

.method public synthetic n()Lo/ahz;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lo/mB;->i()Lo/ahD;

    move-result-object v0

    return-object v0
.end method
