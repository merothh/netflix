.class public final Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCopyrightPresenter_Ab18255$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/EB;-><init>(Lo/Fk;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/DC;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/EB;


# direct methods
.method public constructor <init>(Lo/EB;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCopyrightPresenter_Ab18255$1;->e:Lo/EB;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/DC;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    instance-of v0, p1, Lo/DC$ComponentCallbacks;

    if-eqz v0, :cond_1

    .line 24
    check-cast p1, Lo/DC$ComponentCallbacks;

    invoke-virtual {p1}, Lo/DC$ComponentCallbacks;->d()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lo/DC$ComponentCallbacks;->e()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 29
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCopyrightPresenter_Ab18255$1;->e:Lo/EB;

    invoke-static {p1}, Lo/EB;->b(Lo/EB;)Lo/Fk;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/Fk;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCopyrightPresenter_Ab18255$1;->e:Lo/EB;

    invoke-static {p1}, Lo/EB;->b(Lo/EB;)Lo/Fk;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fk;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lo/DC;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCopyrightPresenter_Ab18255$1;->e(Lo/DC;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
