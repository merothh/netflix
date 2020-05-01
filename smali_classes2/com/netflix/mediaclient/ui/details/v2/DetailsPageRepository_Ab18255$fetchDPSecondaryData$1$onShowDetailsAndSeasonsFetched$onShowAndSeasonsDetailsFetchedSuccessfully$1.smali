.class public final Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDPSecondaryData$1$onShowDetailsAndSeasonsFetched$onShowAndSeasonsDetailsFetchedSuccessfully$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FL$ActionBar;->d(Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field final synthetic a:Lo/Bb;

.field final synthetic b:Ljava/util/List;

.field final synthetic e:Lo/FL$ActionBar;


# direct methods
.method public constructor <init>(Lo/FL$ActionBar;Lo/Bb;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDPSecondaryData$1$onShowDetailsAndSeasonsFetched$onShowAndSeasonsDetailsFetchedSuccessfully$1;->e:Lo/FL$ActionBar;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDPSecondaryData$1$onShowDetailsAndSeasonsFetched$onShowAndSeasonsDetailsFetchedSuccessfully$1;->a:Lo/Bb;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDPSecondaryData$1$onShowDetailsAndSeasonsFetched$onShowAndSeasonsDetailsFetchedSuccessfully$1;->b:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDPSecondaryData$1$onShowDetailsAndSeasonsFetched$onShowAndSeasonsDetailsFetchedSuccessfully$1;->e:Lo/FL$ActionBar;

    iget-object v0, v0, Lo/FL$ActionBar;->c:Lio/reactivex/ObservableEmitter;

    new-instance v1, Lo/FC$Activity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDPSecondaryData$1$onShowDetailsAndSeasonsFetched$onShowAndSeasonsDetailsFetchedSuccessfully$1;->a:Lo/Bb;

    check-cast v2, Lo/Bc;

    invoke-direct {v1, v2}, Lo/FC$Activity;-><init>(Lo/Bc;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 501
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDPSecondaryData$1$onShowDetailsAndSeasonsFetched$onShowAndSeasonsDetailsFetchedSuccessfully$1;->e:Lo/FL$ActionBar;

    iget-object v0, v0, Lo/FL$ActionBar;->c:Lio/reactivex/ObservableEmitter;

    new-instance v1, Lo/FC$AssistContent;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDPSecondaryData$1$onShowDetailsAndSeasonsFetched$onShowAndSeasonsDetailsFetchedSuccessfully$1;->b:Ljava/util/List;

    invoke-direct {v1, v2}, Lo/FC$AssistContent;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 503
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDPSecondaryData$1$onShowDetailsAndSeasonsFetched$onShowAndSeasonsDetailsFetchedSuccessfully$1;->e:Lo/FL$ActionBar;

    iget-object v0, v0, Lo/FL$ActionBar;->b:Lo/alA;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDPSecondaryData$1$onShowDetailsAndSeasonsFetched$onShowAndSeasonsDetailsFetchedSuccessfully$1;->a:Lo/Bb;

    invoke-interface {v0, v1}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 458
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDPSecondaryData$1$onShowDetailsAndSeasonsFetched$onShowAndSeasonsDetailsFetchedSuccessfully$1;->c()V

    sget-object v0, Lo/akj;->a:Lo/akj;

    return-object v0
.end method
