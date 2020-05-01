.class final Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->e(Lo/FC;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lo/Bd;",
        "Ljava/lang/String;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1$2;->c:Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/Bd;Ljava/lang/String;)V
    .locals 9

    const-string v0, "vd"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vdCurEpId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1$2;->c:Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;

    iget-object v1, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    .line 254
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 255
    invoke-interface {p1}, Lo/Bd;->isAvailableForDownload()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v2, p2

    .line 252
    invoke-static/range {v1 .. v8}, Lo/FN;->c(Lo/FN;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLjava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p1, Lo/Bd;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1$2;->c(Lo/Bd;Ljava/lang/String;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
