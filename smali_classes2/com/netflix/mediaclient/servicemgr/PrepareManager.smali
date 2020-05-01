.class public interface abstract Lcom/netflix/mediaclient/servicemgr/PrepareManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/servicemgr/PrepareManager$PrepareResult;,
        Lcom/netflix/mediaclient/servicemgr/PrepareManager$Application;
    }
.end annotation


# virtual methods
.method public abstract d(Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V
.end method

.method public abstract e(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Ae;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract e(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Ae;",
            ">;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/PrepareManager$Application;",
            ">;)V"
        }
    .end annotation
.end method
