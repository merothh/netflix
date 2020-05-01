.class public final Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageProgressiveLoadingPresenter_Ab18255$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ey;-><init>(Lo/Fc;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Ey;


# direct methods
.method public constructor <init>(Lo/Ey;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageProgressiveLoadingPresenter_Ab18255$2;->a:Lo/Ey;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageProgressiveLoadingPresenter_Ab18255$2;->a:Lo/Ey;

    invoke-static {v0}, Lo/Ey;->b(Lo/Ey;)Lo/Fc;

    move-result-object v0

    invoke-virtual {v0}, Lo/Fc;->n()V

    return-void
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageProgressiveLoadingPresenter_Ab18255$2;->a()V

    sget-object v0, Lo/akj;->a:Lo/akj;

    return-object v0
.end method
