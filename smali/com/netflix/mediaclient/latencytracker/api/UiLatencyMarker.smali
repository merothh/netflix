.class public interface abstract Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;,
        Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;
    }
.end annotation


# virtual methods
.method public abstract a()Lorg/json/JSONObject;
.end method

.method public abstract d(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;J)V
.end method

.method public abstract e(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;Z)V
.end method

.method public abstract e(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;)V
.end method
