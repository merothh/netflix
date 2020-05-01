.class final Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageInteractiveRestartStateUIPresenter$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageInteractiveRestartStateUIPresenter$1;->d(Lo/DC;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/DG;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageInteractiveRestartStateUIPresenter$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageInteractiveRestartStateUIPresenter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageInteractiveRestartStateUIPresenter$1$2;->e:Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageInteractiveRestartStateUIPresenter$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/DG;)V
    .locals 2

    .line 31
    instance-of v0, p1, Lo/DG$PictureInPictureParams;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageInteractiveRestartStateUIPresenter$1$2;->e:Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageInteractiveRestartStateUIPresenter$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageInteractiveRestartStateUIPresenter$1;->b:Lo/Ew;

    invoke-static {v0}, Lo/Ew;->c(Lo/Ew;)Lo/Fv;

    move-result-object v0

    check-cast p1, Lo/DG$PictureInPictureParams;

    invoke-virtual {p1}, Lo/DG$PictureInPictureParams;->a()Lo/Bc;

    move-result-object v1

    invoke-virtual {p1}, Lo/DG$PictureInPictureParams;->b()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lo/Fv;->e(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    :cond_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Lo/DG;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageInteractiveRestartStateUIPresenter$1$2;->d(Lo/DG;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
