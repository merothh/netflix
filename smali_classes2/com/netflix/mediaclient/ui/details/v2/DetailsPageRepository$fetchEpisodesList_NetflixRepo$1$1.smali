.class public final Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodesList_NetflixRepo$1$1;
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
        "Lkotlin/Pair<",
        "+",
        "Ljava/util/List<",
        "Lo/AS;",
        ">;+",
        "Lcom/netflix/mediaclient/android/app/Status;",
        ">;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/FI$PictureInPictureParams;

.field final synthetic c:Lio/reactivex/ObservableEmitter;


# direct methods
.method public constructor <init>(Lo/FI$PictureInPictureParams;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodesList_NetflixRepo$1$1;->a:Lo/FI$PictureInPictureParams;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodesList_NetflixRepo$1$1;->c:Lio/reactivex/ObservableEmitter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lkotlin/Pair;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Ljava/util/List<",
            "Lo/AS;",
            ">;+",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodesList_NetflixRepo$1$1;->c:Lio/reactivex/ObservableEmitter;

    .line 179
    new-instance v8, Lo/FC$PendingIntent;

    .line 180
    invoke-virtual {p1}, Lkotlin/Pair;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    .line 181
    invoke-virtual {p1}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/netflix/mediaclient/android/app/Status;

    .line 182
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodesList_NetflixRepo$1$1;->a:Lo/FI$PictureInPictureParams;

    iget-wide v4, p1, Lo/FI$PictureInPictureParams;->d:J

    .line 183
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodesList_NetflixRepo$1$1;->a:Lo/FI$PictureInPictureParams;

    iget v6, p1, Lo/FI$PictureInPictureParams;->e:I

    .line 184
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodesList_NetflixRepo$1$1;->a:Lo/FI$PictureInPictureParams;

    iget v7, p1, Lo/FI$PictureInPictureParams;->c:I

    move-object v1, v8

    .line 179
    invoke-direct/range {v1 .. v7}, Lo/FC$PendingIntent;-><init>(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;JII)V

    .line 178
    invoke-interface {v0, v8}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 187
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodesList_NetflixRepo$1$1;->c:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodesList_NetflixRepo$1$1;->d(Lkotlin/Pair;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
