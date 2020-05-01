.class final Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$renewAllDownloads$disposable$4;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


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
        "Lo/alA<",
        "Ljava/lang/Throwable;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;

.field final synthetic e:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$renewAllDownloads$disposable$4;->c:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$renewAllDownloads$disposable$4;->e:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    sget-object p1, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->Companion:Lcom/netflix/mediaclient/ui/offline/DownloadsListController$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 157
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$renewAllDownloads$disposable$4;->c:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->h()Lo/nS;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$renewAllDownloads$disposable$4;->e:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;

    check-cast v0, Lo/nV;

    invoke-interface {p1, v0}, Lo/nS;->d(Lo/nV;)V

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$renewAllDownloads$disposable$4;->c:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->i()Lio/reactivex/subjects/Subject;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;->e:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 95
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$DownloadsErrorResolverImpl$renewAllDownloads$disposable$4;->d(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
