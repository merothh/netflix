.class public final Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBasicInfoPresenter_Ab18255$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ev;-><init>(Lo/Ff;Lio/reactivex/Observable;)V
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
.field final synthetic e:Lo/Ev;


# direct methods
.method public constructor <init>(Lo/Ev;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBasicInfoPresenter_Ab18255$2;->e:Lo/Ev;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBasicInfoPresenter_Ab18255$2;->e:Lo/Ev;

    invoke-static {v0}, Lo/Ev;->a(Lo/Ev;)Lo/Ff;

    move-result-object v0

    invoke-virtual {v0}, Lo/Ff;->m()V

    return-void
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBasicInfoPresenter_Ab18255$2;->b()V

    sget-object v0, Lo/akj;->a:Lo/akj;

    return-object v0
.end method