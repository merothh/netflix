.class public final Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$retryFetchSecondaryData$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FL$LoaderManager;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/Bc;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lio/reactivex/ObservableEmitter;

.field final synthetic e:Lo/FL$LoaderManager;


# direct methods
.method public constructor <init>(Lo/FL$LoaderManager;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$retryFetchSecondaryData$1$1;->e:Lo/FL$LoaderManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$retryFetchSecondaryData$1$1;->d:Lio/reactivex/ObservableEmitter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/Bc;)V
    .locals 8

    if-nez p1, :cond_0

    .line 386
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$retryFetchSecondaryData$1$1;->d:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    goto :goto_0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$retryFetchSecondaryData$1$1;->e:Lo/FL$LoaderManager;

    iget-object v1, v0, Lo/FL$LoaderManager;->e:Lo/FL;

    .line 389
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$retryFetchSecondaryData$1$1;->d:Lio/reactivex/ObservableEmitter;

    const-string v0, "emitter"

    invoke-static {v2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$retryFetchSecondaryData$1$1;->e:Lo/FL$LoaderManager;

    iget-object v3, v0, Lo/FL$LoaderManager;->h:Lo/Am;

    .line 392
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$retryFetchSecondaryData$1$1;->e:Lo/FL$LoaderManager;

    iget-object v5, v0, Lo/FL$LoaderManager;->c:Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$retryFetchSecondaryData$1$1;->e:Lo/FL$LoaderManager;

    iget-object v6, v0, Lo/FL$LoaderManager;->a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 394
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$retryFetchSecondaryData$1$1;->e:Lo/FL$LoaderManager;

    iget-object v7, v0, Lo/FL$LoaderManager;->b:Lo/hW;

    move-object v4, p1

    .line 388
    invoke-static/range {v1 .. v7}, Lo/FL;->e(Lo/FL;Lio/reactivex/ObservableEmitter;Lo/Am;Lo/Bc;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/hW;)V

    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Lo/Bc;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$retryFetchSecondaryData$1$1;->a(Lo/Bc;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
