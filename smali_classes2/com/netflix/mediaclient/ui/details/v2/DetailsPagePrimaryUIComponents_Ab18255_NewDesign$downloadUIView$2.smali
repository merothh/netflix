.class public final Lcom/netflix/mediaclient/ui/details/v2/DetailsPagePrimaryUIComponents_Ab18255_NewDesign$downloadUIView$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FE;-><init>(Lo/MenuInflater;Lio/reactivex/Observable;Lio/reactivex/Observable;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/Fp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/MenuInflater;


# direct methods
.method public constructor <init>(Lo/MenuInflater;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPagePrimaryUIComponents_Ab18255_NewDesign$downloadUIView$2;->c:Lo/MenuInflater;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lo/Fp;
    .locals 2

    .line 31
    new-instance v0, Lo/Fp;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPagePrimaryUIComponents_Ab18255_NewDesign$downloadUIView$2;->c:Lo/MenuInflater;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lo/Fp;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/v2/DetailsPagePrimaryUIComponents_Ab18255_NewDesign$downloadUIView$2;->a()Lo/Fp;

    move-result-object v0

    return-object v0
.end method
