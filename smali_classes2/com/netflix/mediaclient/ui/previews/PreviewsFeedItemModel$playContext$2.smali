.class public final Lcom/netflix/mediaclient/ui/previews/PreviewsFeedItemModel$playContext$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Yn;-><init>(Lo/AM;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lcom/netflix/mediaclient/ui/common/PlayContextImp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/Yn;


# direct methods
.method public constructor <init>(Lo/Yn;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsFeedItemModel$playContext$2;->c:Lo/Yn;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/netflix/mediaclient/ui/common/PlayContextImp;
    .locals 11

    .line 37
    sget-object v0, Lo/YE;->a:Lo/YE;

    invoke-virtual {v0}, Lo/YE;->a()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    sget-object v1, Lo/Yn;->c:Lo/Yn$Activity;

    invoke-virtual {v1}, Lo/Yn$Activity;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x1e0

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    goto :goto_0

    .line 41
    :cond_0
    new-instance v10, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    .line 42
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getRequestId()Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTrackId()I

    move-result v3

    .line 44
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getListPos()I

    move-result v4

    .line 45
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsFeedItemModel$playContext$2;->c:Lo/Yn;

    invoke-virtual {v1}, Lo/Yn;->g()I

    move-result v5

    .line 46
    sget-object v6, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->j:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 47
    sget-object v1, Lo/YE;->a:Lo/YE;

    invoke-virtual {v1}, Lo/YE;->j()Ljava/lang/String;

    move-result-object v7

    .line 48
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getListId()Ljava/lang/String;

    move-result-object v8

    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsFeedItemModel$playContext$2;->c:Lo/Yn;

    invoke-static {v0}, Lo/Yn;->a(Lo/Yn;)Lo/AM;

    move-result-object v0

    invoke-interface {v0}, Lo/AM;->getBoxartId()Ljava/lang/String;

    move-result-object v9

    move-object v1, v10

    .line 41
    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;IIILcom/netflix/mediaclient/servicemgr/PlayLocationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    :goto_0
    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/previews/PreviewsFeedItemModel$playContext$2;->a()Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object v0

    return-object v0
.end method
