.class final Lo/fw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lo/bY$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "testId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/fw;->b:Ljava/lang/String;

    iput-wide p2, p0, Lo/fw;->a:J

    return-void
.end method


# virtual methods
.method public c(Lo/bY$ActionBar;)V
    .locals 5

    const-string v0, "status"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-interface {p1}, Lo/bY$ActionBar;->a()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 220
    invoke-interface {p1}, Lo/bY$ActionBar;->a()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 223
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 224
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 225
    iget-object v3, p0, Lo/fw;->b:Ljava/lang/String;

    const-string v4, "ab_test_bundle"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    invoke-interface {p1}, Lo/bY$ActionBar;->a()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 227
    iget-wide v3, p0, Lo/fw;->a:J

    invoke-static {v3, v4}, Lo/fB;->d(J)J

    move-result-wide v3

    const-string v0, "elapsed"

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 228
    invoke-interface {p1}, Lo/bY$ActionBar;->d()I

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-interface {p1}, Lo/bY$ActionBar;->d()I

    move-result p1

    const-string v0, "code"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 224
    :cond_0
    new-instance p1, Lcom/netflix/cl/model/event/discrete/DebugEvent;

    invoke-direct {p1, v2}, Lcom/netflix/cl/model/event/discrete/DebugEvent;-><init>(Lorg/json/JSONObject;)V

    check-cast p1, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;

    .line 223
    invoke-virtual {v1, p1}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    :cond_1
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "e"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 240
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 241
    iget-object v2, p0, Lo/fw;->b:Ljava/lang/String;

    const-string v3, "ab_test_bundle"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "fatal_error"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    iget-wide v2, p0, Lo/fw;->a:J

    invoke-static {v2, v3}, Lo/fB;->d(J)J

    move-result-wide v2

    const-string p1, "elapsed"

    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 240
    new-instance p1, Lcom/netflix/cl/model/event/discrete/DebugEvent;

    invoke-direct {p1, v1}, Lcom/netflix/cl/model/event/discrete/DebugEvent;-><init>(Lorg/json/JSONObject;)V

    check-cast p1, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;

    .line 239
    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 206
    check-cast p1, Lo/bY$ActionBar;

    invoke-virtual {p0, p1}, Lo/fw;->c(Lo/bY$ActionBar;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
