.class final Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/CompletableSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->c()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;

.field final synthetic e:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$Application;->e:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$Application;->a:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/CompletableObserver;)V
    .locals 5

    const-string v0, "completableObserver"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;->b:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application;

    check-cast v0, Lo/MessagePdu;

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$Application;->e:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->e()Ljava/util/List;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$Application;->a:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    const-wide/32 v3, 0xafc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;->e(Ljava/util/Collection;J)Lio/reactivex/Completable;

    move-result-object v1

    .line 197
    new-instance v2, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$deleteAllDownloadsWithErrors$disposable$2$2;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$deleteAllDownloadsWithErrors$disposable$2$2;-><init>(Lio/reactivex/CompletableObserver;)V

    check-cast v2, Lo/alB;

    .line 200
    new-instance v3, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$deleteAllDownloadsWithErrors$disposable$2$3;

    invoke-direct {v3, p1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$deleteAllDownloadsWithErrors$disposable$2$3;-><init>(Lio/reactivex/CompletableObserver;)V

    check-cast v3, Lo/alA;

    .line 196
    invoke-static {v1, v3, v2}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy(Lio/reactivex/Completable;Lo/alA;Lo/alB;)Lio/reactivex/disposables/Disposable;

    .line 205
    sget-object p1, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;->b:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application;

    check-cast p1, Lo/MessagePdu;

    .line 206
    invoke-static {}, Lo/RL;->d()Lo/nS;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lo/nS;->d(Ljava/util/List;)V

    :cond_0
    return-void
.end method
