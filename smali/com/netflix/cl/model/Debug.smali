.class public final Lcom/netflix/cl/model/Debug;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/cl/model/JsonSerializer;


# instance fields
.field private debug:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/netflix/cl/model/Debug;->debug:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public debug()Lorg/json/JSONObject;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/netflix/cl/model/Debug;->debug:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/netflix/cl/model/Debug;->debug:Lorg/json/JSONObject;

    return-object v0
.end method
