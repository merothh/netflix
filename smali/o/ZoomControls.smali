.class public final Lo/ZoomControls;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 1

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public d(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;J)V
    .locals 0

    const-string p2, "mark"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;Z)V
    .locals 0

    const-string p2, "condition"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;)V
    .locals 1

    const-string v0, "mark"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
