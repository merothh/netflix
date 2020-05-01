.class final Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$renewAllDownloads$disposable$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->d()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;

.field final synthetic e:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$renewAllDownloads$disposable$3;->e:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$renewAllDownloads$disposable$3;->c:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$renewAllDownloads$disposable$3;->e:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->h()Lo/nS;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$renewAllDownloads$disposable$3;->c:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;

    check-cast v1, Lo/nV;

    invoke-interface {v0, v1}, Lo/nS;->d(Lo/nV;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$renewAllDownloads$disposable$3;->e:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->i()Lio/reactivex/subjects/Subject;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;->c:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$renewAllDownloads$disposable$3;->a()V

    sget-object v0, Lo/akj;->a:Lo/akj;

    return-object v0
.end method
