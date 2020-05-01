.class public final Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodesList_NetflixRepo$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FI$PictureInPictureParams;->subscribe(Lio/reactivex/ObservableEmitter;)V
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
.field final synthetic a:Lio/reactivex/ObservableEmitter;

.field final synthetic e:Lo/FI$PictureInPictureParams;


# direct methods
.method public constructor <init>(Lo/FI$PictureInPictureParams;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodesList_NetflixRepo$1$2;->e:Lo/FI$PictureInPictureParams;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodesList_NetflixRepo$1$2;->a:Lio/reactivex/ObservableEmitter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Throwable;)V
    .locals 8

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodesList_NetflixRepo$1$2;->a:Lio/reactivex/ObservableEmitter;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 194
    sget-object v0, Lo/LegacyErrorStrings;->Y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v1, "CommonStatus.INT_ERR_CMP_RESP_NULL"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Lcom/netflix/mediaclient/android/app/Status;

    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodesList_NetflixRepo$1$2;->e:Lo/FI$PictureInPictureParams;

    iget-wide v4, v0, Lo/FI$PictureInPictureParams;->d:J

    .line 196
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodesList_NetflixRepo$1$2;->e:Lo/FI$PictureInPictureParams;

    iget v6, v0, Lo/FI$PictureInPictureParams;->e:I

    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodesList_NetflixRepo$1$2;->e:Lo/FI$PictureInPictureParams;

    iget v7, v0, Lo/FI$PictureInPictureParams;->c:I

    .line 191
    new-instance v0, Lo/FC$PendingIntent;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lo/FC$PendingIntent;-><init>(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;JII)V

    .line 190
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 200
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodesList_NetflixRepo$1$2;->a:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodesList_NetflixRepo$1$2;->d(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
