.class public interface abstract Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;
.super Ljava/lang/Object;
.source "PdsPlaySessionInterface.java"


# virtual methods
.method public abstract notifyPlayProgress(J)V
.end method

.method public abstract onManifest(Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;)V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract stop(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
.end method
