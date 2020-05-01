.class public final Lo/FI$Fragment;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FI;->b(Ljava/lang/String;)Lio/reactivex/Observable;
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

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/FI;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/FI$Fragment;->a:Lo/FI;

    iput-object p2, p0, Lo/FI$Fragment;->d:Ljava/lang/String;

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

    .line 235
    iget-object v0, p0, Lo/FI$Fragment;->a:Lo/FI;

    invoke-static {v0}, Lo/FI;->e(Lo/FI;)Lo/bs;

    move-result-object v0

    .line 237
    new-instance v1, Lo/KeymasterArguments;

    .line 238
    iget-object v2, p0, Lo/FI$Fragment;->d:Ljava/lang/String;

    const/4 v3, 0x0

    .line 237
    invoke-direct {v1, v2, v3}, Lo/KeymasterArguments;-><init>(Ljava/lang/String;Z)V

    check-cast v1, Lo/DateTransformation;

    .line 236
    invoke-interface {v0, v1}, Lo/bs;->b(Lo/DateTransformation;)Lio/reactivex/Observable;

    move-result-object v2

    .line 243
    new-instance v0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodeDetails_NetflixRepo$1$1;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodeDetails_NetflixRepo$1$1;-><init>(Lio/reactivex/ObservableEmitter;)V

    move-object v5, v0

    check-cast v5, Lo/alA;

    .line 249
    new-instance v0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodeDetails_NetflixRepo$1$2;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$fetchEpisodeDetails_NetflixRepo$1$2;-><init>(Lio/reactivex/ObservableEmitter;)V

    move-object v3, v0

    check-cast v3, Lo/alA;

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 242
    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
