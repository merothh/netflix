.class final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c(Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1$2;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1$2;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c:Lo/GK;

    sget-object v0, Lo/GK$StateListAnimator$TaskDescription;->d:Lo/GK$StateListAnimator$TaskDescription;

    check-cast v0, Lo/GK$StateListAnimator;

    invoke-virtual {p1, v0}, Lo/GK;->c(Lo/GK$StateListAnimator;)V

    .line 200
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1$2;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c:Lo/GK;

    invoke-static {p1}, Lo/GK;->c(Lo/GK;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1$2;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c:Lo/GK;

    invoke-static {v0}, Lo/GK;->c(Lo/GK;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1$2;->e(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
