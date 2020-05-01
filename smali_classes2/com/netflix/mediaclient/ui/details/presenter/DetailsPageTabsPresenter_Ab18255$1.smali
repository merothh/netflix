.class public final Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageTabsPresenter_Ab18255$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ex;-><init>(Lo/Fe;Lio/reactivex/Observable;)V
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
.field final synthetic b:Lo/Ex;


# direct methods
.method public constructor <init>(Lo/Ex;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageTabsPresenter_Ab18255$1;->b:Lo/Ex;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/DC;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    instance-of v0, p1, Lo/DC$Fragment;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageTabsPresenter_Ab18255$1;->b:Lo/Ex;

    invoke-static {v0}, Lo/Ex;->c(Lo/Ex;)Lo/Fe;

    move-result-object v0

    check-cast p1, Lo/DC$Fragment;

    invoke-virtual {p1}, Lo/DC$Fragment;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lo/DC$Fragment;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lo/Fe;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageTabsPresenter_Ab18255$1;->b:Lo/Ex;

    invoke-static {p1}, Lo/Ex;->c(Lo/Ex;)Lo/Fe;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fe;->e()V

    goto :goto_1

    .line 25
    :cond_0
    instance-of v0, p1, Lo/DC$SharedElementCallback;

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageTabsPresenter_Ab18255$1;->b:Lo/Ex;

    invoke-static {v0}, Lo/Ex;->c(Lo/Ex;)Lo/Fe;

    move-result-object v0

    check-cast p1, Lo/DC$SharedElementCallback;

    invoke-virtual {p1}, Lo/DC$SharedElementCallback;->d()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/Fe;->e(I)V

    goto :goto_1

    .line 28
    :cond_1
    instance-of v0, p1, Lo/DC$IntentSender;

    if-eqz v0, :cond_3

    .line 30
    check-cast p1, Lo/DC$IntentSender;

    invoke-virtual {p1}, Lo/DC$IntentSender;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 31
    invoke-virtual {p1}, Lo/DC$IntentSender;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 32
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageTabsPresenter_Ab18255$1;->b:Lo/Ex;

    invoke-static {p1}, Lo/Ex;->c(Lo/Ex;)Lo/Fe;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fe;->h()V

    goto :goto_0

    .line 34
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageTabsPresenter_Ab18255$1;->b:Lo/Ex;

    invoke-static {p1}, Lo/Ex;->c(Lo/Ex;)Lo/Fe;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fe;->f()V

    .line 36
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageTabsPresenter_Ab18255$1;->b:Lo/Ex;

    invoke-static {p1}, Lo/Ex;->c(Lo/Ex;)Lo/Fe;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fe;->i()V

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lo/DC;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageTabsPresenter_Ab18255$1;->c(Lo/DC;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
