.class final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;->c(Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1$2;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1$2;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;->e:Lo/GK;

    sget-object v0, Lo/GK$StateListAnimator$TaskDescription;->d:Lo/GK$StateListAnimator$TaskDescription;

    check-cast v0, Lo/GK$StateListAnimator;

    invoke-virtual {p1, v0}, Lo/GK;->c(Lo/GK$StateListAnimator;)V

    .line 249
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1$2;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;->e:Lo/GK;

    invoke-static {p1}, Lo/GK;->c(Lo/GK;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1$2;->b(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
