.class public final Lcom/netflix/mediaclient/ui/extras/player/ExtrasFeedPrepareQueue$observe$4;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HX;->d(Lo/UnicodeScript;Lo/GK;Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/util/List<",
        "+",
        "Lo/Ae;",
        ">;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Am;


# direct methods
.method public constructor <init>(Lo/Am;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/ExtrasFeedPrepareQueue$observe$4;->a:Lo/Am;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/Ae;",
            ">;)V"
        }
    .end annotation

    .line 60
    sget-object v0, Lo/HX;->d:Lo/HX$Application;

    check-cast v0, Lo/MessagePdu;

    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/ExtrasFeedPrepareQueue$observe$4;->a:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->h()Lcom/netflix/mediaclient/servicemgr/PrepareManager;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->g:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/PrepareManager;->d(Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/ExtrasFeedPrepareQueue$observe$4;->a:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->h()Lcom/netflix/mediaclient/servicemgr/PrepareManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/PrepareManager;->e(Ljava/util/List;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/player/ExtrasFeedPrepareQueue$observe$4;->c(Ljava/util/List;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
