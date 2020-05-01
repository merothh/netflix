.class public final Lcom/netflix/mediaclient/ui/extras/models/VideoViewModel$bindVideoViewHolder$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HV;->c(Lo/HV$StateListAnimator;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alO<",
        "Ljava/lang/Integer;",
        "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;",
        "Lcom/netflix/mediaclient/servicemgr/PlayContext;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic d:Lo/HV;

.field final synthetic e:Lo/HV$StateListAnimator;


# direct methods
.method public constructor <init>(Lo/HV;Lo/HV$StateListAnimator;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/models/VideoViewModel$bindVideoViewHolder$1;->d:Lo/HV;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/models/VideoViewModel$bindVideoViewHolder$1;->e:Lo/HV$StateListAnimator;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/extras/models/VideoViewModel$bindVideoViewHolder$1;->a:Ljava/util/List;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(ILcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 9

    const-string v0, "extrasFeedItem"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playContext"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/models/VideoViewModel$bindVideoViewHolder$1;->e:Lo/HV$StateListAnimator;

    .line 117
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/models/VideoViewModel$bindVideoViewHolder$1;->d:Lo/HV;

    invoke-virtual {v1}, Lo/HV;->u()Lo/GK;

    move-result-object v1

    .line 119
    new-instance v2, Lo/HY;

    invoke-direct {v2, p1, p3, p2}, Lo/HY;-><init>(ILcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)V

    .line 125
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/models/VideoViewModel$bindVideoViewHolder$1;->d:Lo/HV;

    invoke-static {p1, v2}, Lo/HV;->e(Lo/HV;Lo/HY;)V

    .line 127
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/models/VideoViewModel$bindVideoViewHolder$1;->d:Lo/HV;

    .line 126
    invoke-virtual {p1}, Lo/HV;->h()Lo/UpdateEngine;

    move-result-object p2

    .line 217
    const-class p3, Lo/GY;

    invoke-virtual {p2, p3}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v3

    .line 127
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/extras/models/VideoViewModel$bindVideoViewHolder$1;->d:Lo/HV;

    invoke-static {p2}, Lo/HV;->b(Lo/HV;)Lo/alA;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object p2

    invoke-static {p1, p2}, Lo/HV;->b(Lo/HV;Lio/reactivex/disposables/Disposable;)V

    .line 128
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/models/VideoViewModel$bindVideoViewHolder$1;->a:Ljava/util/List;

    .line 116
    invoke-virtual {v0, v1, v2, p1}, Lo/HV$StateListAnimator;->b(Lo/GK;Lo/HY;Ljava/util/List;)V

    .line 130
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/models/VideoViewModel$bindVideoViewHolder$1;->e:Lo/HV$StateListAnimator;

    invoke-virtual {p1}, Lo/HV$StateListAnimator;->d()Lo/Ia$StateListAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lo/Ia$StateListAnimator;->g()Lo/GridView;

    move-result-object p1

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/extras/models/VideoViewModel$bindVideoViewHolder$1;->d:Lo/HV;

    invoke-virtual {p2}, Lo/HV;->q()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;->a()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/GridView;->setAspectRatio(Ljava/lang/Float;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    check-cast p3, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/extras/models/VideoViewModel$bindVideoViewHolder$1;->b(ILcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
