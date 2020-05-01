.class final Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/CompletableSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->d()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;

.field final synthetic c:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$TaskDescription;->c:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$TaskDescription;->b:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/CompletableObserver;)V
    .locals 5

    const-string v0, "completableObserver"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;->b:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application;

    check-cast v0, Lo/MessagePdu;

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$TaskDescription;->c:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->e()Ljava/util/List;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$TaskDescription;->b:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    const-wide/32 v3, 0xafc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;->e(Ljava/util/Collection;J)Lio/reactivex/Completable;

    move-result-object v1

    .line 135
    new-instance v2, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$renewAllDownloads$disposable$2$2;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$renewAllDownloads$disposable$2$2;-><init>(Lio/reactivex/CompletableObserver;)V

    check-cast v2, Lo/alB;

    .line 138
    new-instance v3, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$renewAllDownloads$disposable$2$3;

    invoke-direct {v3, p1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$renewAllDownloads$disposable$2$3;-><init>(Lio/reactivex/CompletableObserver;)V

    check-cast v3, Lo/alA;

    .line 134
    invoke-static {v1, v3, v2}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy(Lio/reactivex/Completable;Lo/alA;Lo/alB;)Lio/reactivex/disposables/Disposable;

    .line 143
    check-cast v0, Ljava/lang/Iterable;

    .line 353
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;->b:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application;

    check-cast v1, Lo/MessagePdu;

    .line 145
    invoke-static {}, Lo/RL;->d()Lo/nS;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 146
    invoke-interface {v1, v0}, Lo/nS;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
