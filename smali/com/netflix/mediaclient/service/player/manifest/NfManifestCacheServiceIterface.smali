.class public interface abstract Lcom/netflix/mediaclient/service/player/manifest/NfManifestCacheServiceIterface;
.super Ljava/lang/Object;
.source "NfManifestCacheServiceIterface.java"


# virtual methods
.method public abstract clearAll()V
.end method

.method public abstract onBackgroundTrimMem()V
.end method

.method public abstract prepare(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/Triple",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Lcom/netflix/mediaclient/ui/common/PlayContext;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract release()V
.end method
