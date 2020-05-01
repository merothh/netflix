.class final Lo/PP$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PP;->c(Ljava/util/List;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;",
        "Lio/reactivex/ObservableSource<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/PP;


# direct methods
.method constructor <init>(Lo/PP;)V
    .locals 0

    iput-object p1, p0, Lo/PP$StateListAnimator;->d:Lo/PP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;

    invoke-virtual {p0, p1}, Lo/PP$StateListAnimator;->c(Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;",
            ")",
            "Lio/reactivex/Observable<",
            "Lo/Ph;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lo/PP$StateListAnimator;->d:Lo/PP;

    invoke-static {v0}, Lo/PP;->d(Lo/PP;)Lo/Pq;

    move-result-object v0

    .line 106
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;->titleId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;->videoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    const-string v2, "it.videoType()"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-interface {v0, v1, p1}, Lo/Pq;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
