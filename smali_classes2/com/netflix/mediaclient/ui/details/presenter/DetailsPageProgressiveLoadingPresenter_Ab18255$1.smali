.class public final Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageProgressiveLoadingPresenter_Ab18255$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


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
        "Lo/alA<",
        "Lo/DC;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/Ey;


# direct methods
.method public constructor <init>(Lo/Ey;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageProgressiveLoadingPresenter_Ab18255$1;->c:Lo/Ey;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/DC;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    instance-of v0, p1, Lo/DC$ApplicationInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 26
    check-cast p1, Lo/DC$ApplicationInfo;

    invoke-virtual {p1}, Lo/DC$ApplicationInfo;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageProgressiveLoadingPresenter_Ab18255$1;->c:Lo/Ey;

    invoke-static {v0}, Lo/Ey;->b(Lo/Ey;)Lo/Fc;

    move-result-object v0

    invoke-virtual {v0}, Lo/Fc;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    invoke-virtual {p1}, Lo/DC$ApplicationInfo;->e()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageProgressiveLoadingPresenter_Ab18255$1;->c:Lo/Ey;

    invoke-static {p1}, Lo/Ey;->b(Lo/Ey;)Lo/Fc;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fc;->k()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_8

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageProgressiveLoadingPresenter_Ab18255$1;->c:Lo/Ey;

    invoke-static {p1}, Lo/Ey;->b(Lo/Ey;)Lo/Fc;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fc;->j()V

    .line 30
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageProgressiveLoadingPresenter_Ab18255$1;->c:Lo/Ey;

    invoke-static {p1}, Lo/Ey;->b(Lo/Ey;)Lo/Fc;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fc;->l()V

    .line 31
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageProgressiveLoadingPresenter_Ab18255$1;->c:Lo/Ey;

    invoke-static {p1}, Lo/Ey;->b(Lo/Ey;)Lo/Fc;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fc;->e()V

    goto :goto_4

    .line 34
    :cond_3
    instance-of v0, p1, Lo/DC$IntentSender;

    if-eqz v0, :cond_8

    .line 35
    check-cast p1, Lo/DC$IntentSender;

    invoke-virtual {p1}, Lo/DC$IntentSender;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageProgressiveLoadingPresenter_Ab18255$1;->c:Lo/Ey;

    invoke-static {v0}, Lo/Ey;->b(Lo/Ey;)Lo/Fc;

    move-result-object v0

    invoke-virtual {v0}, Lo/Fc;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 36
    :goto_2
    invoke-virtual {p1}, Lo/DC$IntentSender;->e()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageProgressiveLoadingPresenter_Ab18255$1;->c:Lo/Ey;

    invoke-static {v3}, Lo/Ey;->b(Lo/Ey;)Lo/Fc;

    move-result-object v3

    invoke-virtual {v3}, Lo/Fc;->k()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-nez v0, :cond_6

    if-eqz v1, :cond_8

    .line 38
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageProgressiveLoadingPresenter_Ab18255$1;->c:Lo/Ey;

    invoke-static {v0}, Lo/Ey;->b(Lo/Ey;)Lo/Fc;

    move-result-object v0

    invoke-virtual {v0}, Lo/Fc;->i()V

    .line 39
    invoke-virtual {p1}, Lo/DC$IntentSender;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 40
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageProgressiveLoadingPresenter_Ab18255$1;->c:Lo/Ey;

    invoke-static {p1}, Lo/Ey;->b(Lo/Ey;)Lo/Fc;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fc;->h()V

    goto :goto_4

    .line 42
    :cond_7
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageProgressiveLoadingPresenter_Ab18255$1;->c:Lo/Ey;

    invoke-static {p1}, Lo/Ey;->b(Lo/Ey;)Lo/Fc;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fc;->l()V

    .line 43
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageProgressiveLoadingPresenter_Ab18255$1;->c:Lo/Ey;

    invoke-static {p1}, Lo/Ey;->b(Lo/Ey;)Lo/Fc;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fc;->b()V

    :cond_8
    :goto_4
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lo/DC;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageProgressiveLoadingPresenter_Ab18255$1;->a(Lo/DC;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
