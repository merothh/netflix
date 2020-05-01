.class public final Lcom/netflix/mediaclient/ui/details/v2/DetailsPagePrimaryUIComponents_Ab18255_NewDesign$blurBackgroundUIView$2;
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
        "Lo/Fh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/Observable;

.field final synthetic b:Lo/MenuInflater;


# direct methods
.method public constructor <init>(Lo/MenuInflater;Lio/reactivex/Observable;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPagePrimaryUIComponents_Ab18255_NewDesign$blurBackgroundUIView$2;->b:Lo/MenuInflater;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPagePrimaryUIComponents_Ab18255_NewDesign$blurBackgroundUIView$2;->a:Lio/reactivex/Observable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e()Lo/Fh;
    .locals 3

    .line 36
    new-instance v0, Lo/Fh;

    .line 37
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPagePrimaryUIComponents_Ab18255_NewDesign$blurBackgroundUIView$2;->b:Lo/MenuInflater;

    check-cast v1, Landroid/view/ViewGroup;

    .line 38
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPagePrimaryUIComponents_Ab18255_NewDesign$blurBackgroundUIView$2;->a:Lio/reactivex/Observable;

    .line 36
    invoke-direct {v0, v1, v2}, Lo/Fh;-><init>(Landroid/view/ViewGroup;Lio/reactivex/Observable;)V

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/v2/DetailsPagePrimaryUIComponents_Ab18255_NewDesign$blurBackgroundUIView$2;->e()Lo/Fh;

    move-result-object v0

    return-object v0
.end method
