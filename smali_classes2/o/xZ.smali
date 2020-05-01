.class public interface abstract Lo/xZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ya;


# virtual methods
.method public abstract b(Ljava/lang/String;)Z
.end method

.method public abstract c(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/api/res/AssetType;",
            ")",
            "Lio/reactivex/Single<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;)Lio/reactivex/Completable;
.end method

.method public abstract e(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lcom/android/volley/Request$Priority;Lo/yf;)V
.end method

.method public abstract e(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lo/yf;)V
.end method

.method public abstract getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;
.end method
