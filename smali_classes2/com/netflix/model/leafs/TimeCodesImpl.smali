.class public final Lcom/netflix/model/leafs/TimeCodesImpl;
.super Lo/BlockedNumberContract;
.source ""

# interfaces
.implements Lo/DocumentsProvider;
.implements Lcom/netflix/model/leafs/VideoInfo$TimeCodes;


# static fields
.field private static final TAG:Ljava/lang/String; = "timeCodes"


# instance fields
.field public timeCodesData:Lcom/netflix/model/leafs/TimeCodesData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lo/BlockedNumberContract;-><init>()V

    return-void
.end method


# virtual methods
.method public getTimeCodesData()Lcom/netflix/model/leafs/TimeCodesData;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/netflix/model/leafs/TimeCodesImpl;->timeCodesData:Lcom/netflix/model/leafs/TimeCodesData;

    return-object v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 2

    .line 27
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 28
    const-class v0, Lcom/google/gson/Gson;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    const-class v1, Lcom/netflix/model/leafs/TimeCodesData;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/model/leafs/TimeCodesData;

    iput-object p1, p0, Lcom/netflix/model/leafs/TimeCodesImpl;->timeCodesData:Lcom/netflix/model/leafs/TimeCodesData;

    return-void
.end method
