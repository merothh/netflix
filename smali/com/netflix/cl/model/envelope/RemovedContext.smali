.class public Lcom/netflix/cl/model/envelope/RemovedContext;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/cl/model/envelope/SimpleOperation;


# instance fields
.field private context:Lcom/netflix/cl/model/ContextType;


# direct methods
.method public constructor <init>(Lcom/netflix/cl/model/ContextType;)V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/cl/Platform$LocalLogger;->debug(Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/netflix/cl/model/envelope/RemovedContext;->context:Lcom/netflix/cl/model/ContextType;

    return-void
.end method


# virtual methods
.method public addItself(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/netflix/cl/model/envelope/RemovedContext;->context:Lcom/netflix/cl/model/ContextType;

    invoke-virtual {v0}, Lcom/netflix/cl/model/ContextType;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-object p1
.end method
