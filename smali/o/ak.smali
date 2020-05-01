.class public final Lo/ak;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ah;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ak$Activity;
    }
.end annotation


# static fields
.field public static final c:Lo/ak$Activity;


# instance fields
.field private a:Lcom/netflix/cl/model/event/session/NavigationLevel;

.field private b:Ljava/lang/Long;

.field private d:J

.field private final e:Lo/am;

.field private f:Lo/ag;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/netflix/cl/model/AppView;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/performance/api/capture/CaptureType;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/netflix/mediaclient/performance/api/capture/CaptureType;",
            "Lo/aj;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/netflix/mediaclient/performance/api/capture/CaptureType;",
            "Lo/aj;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/netflix/cl/util/SessionListener;

.field private k:Z

.field private final l:Lo/JsPromptResult;

.field private m:Z

.field private o:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ak$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ak$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/ak;->c:Lo/ak$Activity;

    return-void
.end method

.method public constructor <init>(ZZJ)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo/ak;->m:Z

    iput-boolean p2, p0, Lo/ak;->k:Z

    iput-wide p3, p0, Lo/ak;->o:J

    .line 49
    new-instance p1, Lo/am;

    invoke-direct {p1}, Lo/am;-><init>()V

    iput-object p1, p0, Lo/ak;->e:Lo/am;

    .line 51
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lo/ak;->d:J

    .line 53
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lo/ak;->h:Ljava/util/Map;

    .line 54
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lo/ak;->g:Ljava/util/Map;

    .line 56
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lo/ak;->i:Ljava/util/Map;

    .line 64
    new-instance p1, Lo/ak$ActionBar;

    invoke-direct {p1, p0}, Lo/ak$ActionBar;-><init>(Lo/ak;)V

    check-cast p1, Lcom/netflix/cl/util/SessionListener;

    iput-object p1, p0, Lo/ak;->j:Lcom/netflix/cl/util/SessionListener;

    .line 107
    new-instance p1, Lo/ak$StateListAnimator;

    invoke-direct {p1, p0}, Lo/ak$StateListAnimator;-><init>(Lo/ak;)V

    check-cast p1, Lo/JsPromptResult;

    iput-object p1, p0, Lo/ak;->l:Lo/JsPromptResult;

    .line 124
    const-class p1, Lo/am;

    .line 125
    iget-object p2, p0, Lo/ak;->e:Lo/am;

    .line 123
    invoke-static {p1, p2}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p0}, Lo/ak;->f()V

    return-void
.end method

.method public static final synthetic a(Lo/ak;Lcom/netflix/cl/model/event/session/NavigationLevel;Z)Lorg/json/JSONObject;
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lo/ak;->d(Lcom/netflix/cl/model/event/session/NavigationLevel;Z)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lo/ak;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/ak;->k()V

    return-void
.end method

.method private final d(Lcom/netflix/cl/model/event/session/NavigationLevel;Z)Lorg/json/JSONObject;
    .locals 8

    const-string v0, "PerformanceCapture"

    .line 303
    invoke-static {v0}, Lo/aeB;->e(Ljava/lang/String;)Z

    .line 305
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 308
    iget-object v2, p0, Lo/ak;->h:Ljava/util/Map;

    .line 391
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 309
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/aj;

    if-nez p2, :cond_0

    .line 313
    invoke-virtual {v3}, Lo/aj;->e()V

    .line 317
    :cond_0
    invoke-virtual {v3}, Lo/aj;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 320
    invoke-virtual {v3}, Lo/aj;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    .line 321
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    const-string v6, "perfJson.keys()"

    invoke-static {v5, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 322
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 326
    :cond_1
    invoke-virtual {v3}, Lo/aj;->j()V

    goto :goto_0

    .line 331
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/NavigationLevel;->getView()Lcom/netflix/cl/model/AppView;

    move-result-object p1

    const-string v2, "navigationLevel"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "isForeground"

    .line 332
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 333
    sget-object p1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 395
    const-class p1, Landroid/content/Context;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 333
    invoke-static {p1}, Lo/adi;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "appVersion"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 334
    :cond_3
    sget-object p1, Lo/ak;->c:Lo/ak$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 400
    sget-object p1, Lo/akj;->a:Lo/akj;

    :goto_2
    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    return-object v0
.end method

.method private final k()V
    .locals 3

    .line 349
    sget-object v0, Lo/ak;->c:Lo/ak$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 351
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/ak;->d:J

    .line 353
    iget-object v0, p0, Lo/ak;->b:Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 354
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    .line 357
    :cond_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/PerformanceTrace;

    invoke-direct {v1}, Lcom/netflix/cl/model/context/PerformanceTrace;-><init>()V

    check-cast v1, Lcom/netflix/cl/model/context/CLContext;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/ak;->b:Ljava/lang/Long;

    return-void
.end method

.method private final l()V
    .locals 5

    .line 227
    iget-boolean v0, p0, Lo/ak;->k:Z

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lo/ak;->c:Lo/ak$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 229
    iget-wide v0, p0, Lo/ak;->o:J

    .line 230
    iget-object v2, p0, Lo/ak;->i:Ljava/util/Map;

    sget-object v3, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;->b:Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    new-instance v4, Lo/ao;

    invoke-direct {v4, v0, v1}, Lo/ao;-><init>(J)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final o()V
    .locals 7

    .line 215
    sget-object v0, Lo/ak;->c:Lo/ak$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 216
    iget-object v0, p0, Lo/ak;->h:Ljava/util/Map;

    sget-object v1, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;->e:Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    new-instance v2, Lo/as;

    invoke-direct {v2}, Lo/as;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lo/ak;->h:Ljava/util/Map;

    sget-object v1, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;->a:Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    new-instance v2, Lo/ar;

    invoke-direct {v2}, Lo/ar;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lo/ak;->h:Ljava/util/Map;

    sget-object v1, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;->c:Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    new-instance v2, Lo/an;

    invoke-direct {v2}, Lo/an;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lo/ak;->h:Ljava/util/Map;

    sget-object v1, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;->b:Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    new-instance v2, Lo/ao;

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lo/ao;-><init>(JILo/amc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lo/ak;->h:Ljava/util/Map;

    sget-object v1, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;->d:Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    new-instance v2, Lo/al;

    invoke-direct {v2}, Lo/al;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 191
    iget-object v0, p0, Lo/ak;->i:Ljava/util/Map;

    .line 373
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 192
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/aj;

    invoke-virtual {v2}, Lo/aj;->d()V

    .line 193
    iget-object v2, p0, Lo/ak;->f:Lo/ag;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/aj;

    invoke-interface {v2, v1}, Lo/ag;->d(Lo/aj;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()Ljava/lang/Long;
    .locals 1

    .line 47
    iget-object v0, p0, Lo/ak;->b:Ljava/lang/Long;

    return-object v0
.end method

.method public final b(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/AppView;)V
    .locals 4

    .line 239
    iget-object v0, p0, Lo/ak;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 240
    iget-object v0, p0, Lo/ak;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/ak;->g:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p2, :cond_4

    .line 246
    iget-object p1, p0, Lo/ak;->h:Ljava/util/Map;

    .line 389
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 247
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/aj;

    invoke-virtual {v1}, Lo/aj;->a()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/ak;->g:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/aj;

    invoke-virtual {v3}, Lo/aj;->h()Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 249
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/aj;

    invoke-virtual {v1}, Lo/aj;->b()V

    .line 251
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/aj;

    invoke-virtual {v1}, Lo/aj;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lo/ak;->g:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/aj;

    invoke-virtual {v3}, Lo/aj;->h()Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_1

    .line 253
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aj;

    invoke-virtual {v0}, Lo/aj;->d()V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public b(Lcom/netflix/mediaclient/performance/api/capture/CaptureType;Lcom/netflix/cl/model/AppView;)V
    .locals 2

    const-string v0, "captureType"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lo/ak;->g:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lo/ak;->g:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_0
    iget-object v0, p0, Lo/ak;->g:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lo/ak;->m:Z

    return-void
.end method

.method public c()V
    .locals 3

    .line 205
    iget-object v0, p0, Lo/ak;->i:Ljava/util/Map;

    .line 377
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 206
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/aj;

    invoke-virtual {v2}, Lo/aj;->b()V

    .line 207
    iget-object v2, p0, Lo/ak;->f:Lo/ag;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/aj;

    invoke-interface {v2, v1}, Lo/ag;->d(Lo/aj;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Lo/ag;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iput-object p1, p0, Lo/ak;->f:Lo/ag;

    .line 154
    iget-object p1, p0, Lo/ak;->i:Ljava/util/Map;

    .line 367
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 155
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aj;

    iget-object v1, p0, Lo/ak;->f:Lo/ag;

    invoke-virtual {v0, v1}, Lo/aj;->b(Lo/ag;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    const/4 v0, 0x0

    .line 160
    check-cast v0, Lo/ag;

    iput-object v0, p0, Lo/ak;->f:Lo/ag;

    .line 161
    iget-object v1, p0, Lo/ak;->i:Ljava/util/Map;

    .line 369
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 162
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/aj;

    invoke-virtual {v2, v0}, Lo/aj;->b(Lo/ag;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Lcom/netflix/cl/model/event/session/NavigationLevel;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lo/ak;->a:Lcom/netflix/cl/model/event/session/NavigationLevel;

    return-void
.end method

.method public e()V
    .locals 2

    .line 182
    iget-boolean v0, p0, Lo/ak;->m:Z

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lo/ak;->k()V

    .line 187
    :cond_0
    iget-object v0, p0, Lo/ak;->h:Ljava/util/Map;

    .line 371
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/aj;

    invoke-virtual {v1}, Lo/aj;->d()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e(Lcom/netflix/cl/model/event/session/NavigationLevel;Z)V
    .locals 2

    .line 268
    iget-object v0, p0, Lo/ak;->e:Lo/am;

    invoke-virtual {v0}, Lo/am;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lo/ak$Application;

    invoke-direct {v1, p0, p1, p2}, Lo/ak$Application;-><init>(Lo/ak;Lcom/netflix/cl/model/event/session/NavigationLevel;Z)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final f()V
    .locals 2

    .line 135
    sget-object v0, Lo/ak;->c:Lo/ak$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 137
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 366
    const-class v0, Lo/Plugin;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Plugin;

    .line 137
    invoke-virtual {p0}, Lo/ak;->j()Lo/JsPromptResult;

    move-result-object v1

    check-cast v1, Lo/JavascriptInterface;

    invoke-interface {v0, v1}, Lo/Plugin;->b(Lo/JavascriptInterface;)Z

    .line 139
    sget-object v0, Lcom/netflix/cl/util/NavigationLevelCollector;->INSTANCE:Lcom/netflix/cl/util/NavigationLevelCollector;

    invoke-virtual {v0}, Lcom/netflix/cl/util/NavigationLevelCollector;->initListener()V

    .line 140
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p0}, Lo/ak;->h()Lcom/netflix/cl/util/SessionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addSessionListeners(Lcom/netflix/cl/util/SessionListener;)V

    .line 142
    iget-object v0, p0, Lo/ak;->a:Lcom/netflix/cl/model/event/session/NavigationLevel;

    if-nez v0, :cond_0

    .line 143
    sget-object v0, Lcom/netflix/cl/util/NavigationLevelCollector;->INSTANCE:Lcom/netflix/cl/util/NavigationLevelCollector;

    invoke-virtual {v0}, Lcom/netflix/cl/util/NavigationLevelCollector;->getCurrentNavigationLevel()Lcom/netflix/cl/model/event/session/NavigationLevel;

    move-result-object v0

    iput-object v0, p0, Lo/ak;->a:Lcom/netflix/cl/model/event/session/NavigationLevel;

    .line 146
    :cond_0
    invoke-direct {p0}, Lo/ak;->o()V

    .line 148
    invoke-direct {p0}, Lo/ak;->l()V

    return-void
.end method

.method public final g()Lcom/netflix/cl/model/event/session/NavigationLevel;
    .locals 1

    .line 50
    iget-object v0, p0, Lo/ak;->a:Lcom/netflix/cl/model/event/session/NavigationLevel;

    return-object v0
.end method

.method public h()Lcom/netflix/cl/util/SessionListener;
    .locals 1

    .line 64
    iget-object v0, p0, Lo/ak;->j:Lcom/netflix/cl/util/SessionListener;

    return-object v0
.end method

.method public final i()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lo/ak;->d:J

    return-wide v0
.end method

.method public j()Lo/JsPromptResult;
    .locals 1

    .line 107
    iget-object v0, p0, Lo/ak;->l:Lo/JsPromptResult;

    return-object v0
.end method

.method public m()V
    .locals 2

    .line 201
    iget-object v0, p0, Lo/ak;->h:Ljava/util/Map;

    .line 375
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 201
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/aj;

    invoke-virtual {v1}, Lo/aj;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final n()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lo/ak;->m:Z

    return v0
.end method
