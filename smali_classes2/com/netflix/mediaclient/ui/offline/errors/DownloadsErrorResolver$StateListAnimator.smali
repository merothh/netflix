.class final Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StateListAnimator"
.end annotation


# instance fields
.field private b:Lio/reactivex/CompletableEmitter;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Lio/reactivex/CompletableEmitter;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;->b:Lio/reactivex/CompletableEmitter;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "playableId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;->b:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application;

    check-cast v0, Lo/MessagePdu;

    .line 259
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 260
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 261
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;->b:Lio/reactivex/CompletableEmitter;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/CompletableEmitter;->onComplete()V

    :cond_0
    return-void
.end method

.method public final e(Ljava/util/Collection;J)Lio/reactivex/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;J)",
            "Lio/reactivex/Completable;"
        }
    .end annotation

    const-string v0, "playableIds"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;->b:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application;

    check-cast v0, Lo/MessagePdu;

    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;->b:Lio/reactivex/CompletableEmitter;

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 252
    new-instance p1, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator$TaskDescription;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator$TaskDescription;-><init>(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;)V

    check-cast p1, Lio/reactivex/CompletableOnSubscribe;

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    .line 254
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v0}, Lio/reactivex/Completable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Completable;

    move-result-object p1

    const-string p2, "Completable.create {\n   \u2026s, TimeUnit.MILLISECONDS)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 247
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can only use PlayableActionTracker once.  Create a new instance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final e()V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;->b:Lio/reactivex/CompletableEmitter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/CompletableEmitter;->onComplete()V

    :cond_0
    return-void
.end method
