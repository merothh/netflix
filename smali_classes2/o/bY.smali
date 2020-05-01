.class public interface abstract Lo/bY;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/bY$TaskDescription;,
        Lo/bY$ActionBar;
    }
.end annotation


# virtual methods
.method public abstract b(Lo/bY$TaskDescription;)Z
.end method

.method public abstract c(Lo/bY$TaskDescription;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/bY$TaskDescription;",
            ")",
            "Lio/reactivex/Observable<",
            "Lo/bY$ActionBar;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract d(Ljava/util/Collection;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/Locale;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lo/bY$ActionBar;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d(Lo/bY$ActionBar;Landroid/app/Activity;I)V
.end method

.method public abstract d(Lo/bY$TaskDescription;)V
.end method

.method public abstract e()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
