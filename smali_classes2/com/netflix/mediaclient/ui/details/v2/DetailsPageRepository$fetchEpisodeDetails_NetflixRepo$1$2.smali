.class public final Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodeDetails_NetflixRepo$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FI$Fragment;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field final synthetic d:Lio/reactivex/ObservableEmitter;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodeDetails_NetflixRepo$1$2;->d:Lio/reactivex/ObservableEmitter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodeDetails_NetflixRepo$1$2;->d:Lio/reactivex/ObservableEmitter;

    .line 251
    new-instance v0, Lo/FC$Dialog;

    sget-object v1, Lo/LegacyErrorStrings;->Y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v2, "CommonStatus.INT_ERR_CMP_RESP_NULL"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/netflix/mediaclient/android/app/Status;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lo/FC$Dialog;-><init>(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 250
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 253
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodeDetails_NetflixRepo$1$2;->d:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodeDetails_NetflixRepo$1$2;->e(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
