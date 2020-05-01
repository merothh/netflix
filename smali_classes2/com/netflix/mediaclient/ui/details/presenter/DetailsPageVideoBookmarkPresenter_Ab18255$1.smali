.class public final Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBookmarkPresenter_Ab18255$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ez;-><init>(Lo/Fg;Lio/reactivex/Observable;)V
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
.field final synthetic e:Lo/Ez;


# direct methods
.method public constructor <init>(Lo/Ez;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBookmarkPresenter_Ab18255$1;->e:Lo/Ez;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/DC;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    instance-of v0, p1, Lo/DC$ComponentCallbacks2;

    if-eqz v0, :cond_1

    .line 22
    check-cast p1, Lo/DC$ComponentCallbacks2;

    invoke-virtual {p1}, Lo/DC$ComponentCallbacks2;->d()F

    move-result v0

    const/4 v1, 0x0

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBookmarkPresenter_Ab18255$1;->e:Lo/Ez;

    invoke-static {v0}, Lo/Ez;->a(Lo/Ez;)Lo/Fg;

    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lo/DC$ComponentCallbacks2;->b()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lo/DC$ComponentCallbacks2;->d()F

    move-result v2

    .line 26
    invoke-virtual {p1}, Lo/DC$ComponentCallbacks2;->e()I

    move-result p1

    .line 23
    invoke-virtual {v0, v1, v2, p1}, Lo/Fg;->b(Ljava/lang/String;FI)V

    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBookmarkPresenter_Ab18255$1;->e:Lo/Ez;

    invoke-static {p1}, Lo/Ez;->a(Lo/Ez;)Lo/Fg;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fg;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lo/DC;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBookmarkPresenter_Ab18255$1;->b(Lo/DC;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
