.class public final Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoCTAsUIView_Ab18255$userRatingButton$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Fd;-><init>(Landroid/view/ViewGroup;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/SimpleClock;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/Fd;


# direct methods
.method public constructor <init>(Lo/Fd;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoCTAsUIView_Ab18255$userRatingButton$2;->b:Lo/Fd;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lo/SimpleClock;
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoCTAsUIView_Ab18255$userRatingButton$2;->b:Lo/Fd;

    invoke-virtual {v0}, Lo/Fd;->f()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->uw:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const-string v1, "userRatingsViewStub"

    .line 63
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->gd:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 64
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoCTAsUIView_Ab18255$userRatingButton$2;->b:Lo/Fd;

    invoke-virtual {v0}, Lo/Fd;->f()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->us:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/SimpleClock;

    .line 68
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lo/SimpleClock;->setDark(Z)V

    .line 69
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lo/afw;->a(Landroid/view/View;)V

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoCTAsUIView_Ab18255$userRatingButton$2;->b()Lo/SimpleClock;

    move-result-object v0

    return-object v0
.end method
