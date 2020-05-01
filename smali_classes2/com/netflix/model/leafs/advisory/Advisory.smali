.class public interface abstract Lcom/netflix/model/leafs/advisory/Advisory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;,
        Lcom/netflix/model/leafs/advisory/Advisory$Type;
    }
.end annotation


# virtual methods
.method public abstract getData(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonObject;
.end method

.method public abstract getDelay()F
.end method

.method public abstract getDuration()F
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getSecondaryMessage()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/netflix/model/leafs/advisory/Advisory$Type;
.end method
