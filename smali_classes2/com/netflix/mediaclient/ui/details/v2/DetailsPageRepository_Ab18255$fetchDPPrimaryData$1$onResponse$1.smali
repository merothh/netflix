.class public final Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDPPrimaryData$1$onResponse$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FL$Application;-><init>(Lio/reactivex/ObservableEmitter;Lo/alA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lo/Bc;",
        "Lcom/netflix/mediaclient/android/app/Status;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/FL$Application;


# direct methods
.method public constructor <init>(Lo/FL$Application;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDPPrimaryData$1$onResponse$1;->b:Lo/FL$Application;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const-string v0, "status"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDPPrimaryData$1$onResponse$1;->b:Lo/FL$Application;

    iget-object v0, v0, Lo/FL$Application;->c:Lio/reactivex/ObservableEmitter;

    new-instance v1, Lo/FC$LoaderManager;

    invoke-direct {v1, p2}, Lo/FC$LoaderManager;-><init>(Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 422
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDPPrimaryData$1$onResponse$1;->b:Lo/FL$Application;

    iget-object p2, p2, Lo/FL$Application;->c:Lio/reactivex/ObservableEmitter;

    new-instance v0, Lo/FC$LoaderManager;

    sget-object v1, Lo/LegacyErrorStrings;->Y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v2, "CommonStatus.INT_ERR_CMP_RESP_NULL"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {v0, v1}, Lo/FC$LoaderManager;-><init>(Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {p2, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 426
    :cond_1
    invoke-static {p2}, Lo/DA;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 427
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDPPrimaryData$1$onResponse$1;->b:Lo/FL$Application;

    iget-object p2, p2, Lo/FL$Application;->c:Lio/reactivex/ObservableEmitter;

    new-instance v0, Lo/FC$StateListAnimator;

    invoke-direct {v0, p1}, Lo/FC$StateListAnimator;-><init>(Lo/Bc;)V

    invoke-interface {p2, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 431
    :goto_0
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDPPrimaryData$1$onResponse$1;->b:Lo/FL$Application;

    iget-object p2, p2, Lo/FL$Application;->d:Lo/alA;

    invoke-interface {p2, p1}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 418
    check-cast p1, Lo/Bc;

    check-cast p2, Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDPPrimaryData$1$onResponse$1;->a(Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
