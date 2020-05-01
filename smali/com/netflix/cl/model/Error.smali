.class public Lcom/netflix/cl/model/Error;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/cl/model/JsonSerializer;


# instance fields
.field private cause:Lcom/netflix/cl/model/Error;

.field private code:Ljava/lang/String;

.field private debug:Lcom/netflix/cl/model/Debug;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0, v0}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/Debug;Lcom/netflix/cl/model/Error;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netflix/cl/model/Debug;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/Debug;Lcom/netflix/cl/model/Error;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netflix/cl/model/Debug;Lcom/netflix/cl/model/Error;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 34
    iput-object p1, p0, Lcom/netflix/cl/model/Error;->code:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/netflix/cl/model/Error;->debug:Lcom/netflix/cl/model/Debug;

    .line 36
    iput-object p3, p0, Lcom/netflix/cl/model/Error;->cause:Lcom/netflix/cl/model/Error;

    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Code is required for an error!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netflix/cl/model/Error;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0, p2}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/Debug;Lcom/netflix/cl/model/Error;)V

    return-void
.end method

.method public static toError(Lorg/json/JSONObject;)Lcom/netflix/cl/model/Error;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "code"

    .line 72
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "debug"

    .line 73
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "cause"

    .line 74
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 78
    :try_start_0
    invoke-static {p0}, Lcom/netflix/cl/model/Error;->toError(Lorg/json/JSONObject;)Lcom/netflix/cl/model/Error;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz v2, :cond_2

    .line 84
    new-instance v0, Lcom/netflix/cl/model/Debug;

    invoke-direct {v0, v2}, Lcom/netflix/cl/model/Debug;-><init>(Lorg/json/JSONObject;)V

    .line 87
    :cond_2
    new-instance v2, Lcom/netflix/cl/model/Error;

    invoke-direct {v2, v1, v0, p0}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/Debug;Lcom/netflix/cl/model/Error;)V

    return-object v2
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 52
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 53
    iget-object v1, p0, Lcom/netflix/cl/model/Error;->code:Ljava/lang/String;

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    iget-object v1, p0, Lcom/netflix/cl/model/Error;->cause:Lcom/netflix/cl/model/Error;

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v1}, Lcom/netflix/cl/model/Error;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "cause"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/netflix/cl/model/Error;->debug:Lcom/netflix/cl/model/Debug;

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {v1}, Lcom/netflix/cl/model/Debug;->debug()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "debug"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-object v0
.end method
