.class public final Lo/FI$PictureInPictureParams;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FI;->e(Ljava/lang/String;JII)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/FI;

.field final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:J

.field public final synthetic e:I


# direct methods
.method constructor <init>(Lo/FI;Ljava/lang/String;IIJ)V
    .locals 0

    iput-object p1, p0, Lo/FI$PictureInPictureParams;->a:Lo/FI;

    iput-object p2, p0, Lo/FI$PictureInPictureParams;->b:Ljava/lang/String;

    iput p3, p0, Lo/FI$PictureInPictureParams;->e:I

    iput p4, p0, Lo/FI$PictureInPictureParams;->c:I

    iput-wide p5, p0, Lo/FI$PictureInPictureParams;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/FC;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lo/FI$PictureInPictureParams;->a:Lo/FI;

    invoke-static {v0}, Lo/FI;->e(Lo/FI;)Lo/bs;

    move-result-object v0

    .line 169
    new-instance v1, Lo/KeymasterArgument;

    .line 170
    iget-object v2, p0, Lo/FI$PictureInPictureParams;->b:Ljava/lang/String;

    .line 171
    sget-object v3, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    .line 172
    iget v4, p0, Lo/FI$PictureInPictureParams;->e:I

    .line 173
    iget v5, p0, Lo/FI$PictureInPictureParams;->c:I

    .line 169
    invoke-direct {v1, v2, v3, v4, v5}, Lo/KeymasterArgument;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;II)V

    check-cast v1, Lo/DateTransformation;

    .line 168
    invoke-interface {v0, v1}, Lo/bs;->b(Lo/DateTransformation;)Lio/reactivex/Observable;

    move-result-object v2

    .line 177
    new-instance v0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodesList_NetflixRepo$1$1;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodesList_NetflixRepo$1$1;-><init>(Lo/FI$PictureInPictureParams;Lio/reactivex/ObservableEmitter;)V

    move-object v5, v0

    check-cast v5, Lo/alA;

    .line 189
    new-instance v0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodesList_NetflixRepo$1$2;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodesList_NetflixRepo$1$2;-><init>(Lo/FI$PictureInPictureParams;Lio/reactivex/ObservableEmitter;)V

    move-object v3, v0

    check-cast v3, Lo/alA;

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 176
    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
