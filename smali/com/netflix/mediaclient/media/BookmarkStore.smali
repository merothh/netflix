.class public interface abstract Lcom/netflix/mediaclient/media/BookmarkStore;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract createOrUpdateBookmark(Lo/Bc;Ljava/lang/String;)V
.end method

.method public abstract getBookmark(Ljava/lang/String;Ljava/lang/String;)Lo/Aa;
.end method

.method public abstract init(Landroid/content/Context;)Z
.end method

.method public abstract onPlayablesFetched(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/AK;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setBookmark(Ljava/lang/String;Lo/Aa;)V
.end method

.method public abstract updateBookmarkIfExists(Ljava/lang/String;Lcom/netflix/model/leafs/Bookmark;Ljava/lang/String;)V
.end method

.method public abstract updateValidProfiles(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/BC;",
            ">;)V"
        }
    .end annotation
.end method
