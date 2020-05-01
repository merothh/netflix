.class public final Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCreditsUIPresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/EG;-><init>(Lo/Fz;Lio/reactivex/Observable;)V
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
.field final synthetic e:Lo/EG;


# direct methods
.method public constructor <init>(Lo/EG;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCreditsUIPresenter$1;->e:Lo/EG;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/DC;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    instance-of v0, p1, Lo/DC$Intent;

    if-eqz v0, :cond_4

    .line 23
    check-cast p1, Lo/DC$Intent;

    invoke-virtual {p1}, Lo/DC$Intent;->a()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lo/DC$Intent;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCreditsUIPresenter$1;->e:Lo/EG;

    invoke-static {v1}, Lo/EG;->d(Lo/EG;)Lo/Fz;

    move-result-object v1

    invoke-interface {v1}, Lo/Fz;->f()V

    .line 28
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCreditsUIPresenter$1;->e:Lo/EG;

    invoke-static {v1}, Lo/EG;->d(Lo/EG;)Lo/Fz;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/Fz;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCreditsUIPresenter$1;->e:Lo/EG;

    invoke-static {v0}, Lo/EG;->d(Lo/EG;)Lo/Fz;

    move-result-object v0

    invoke-interface {v0}, Lo/Fz;->j()V

    .line 31
    :goto_1
    invoke-virtual {p1}, Lo/DC$Intent;->c()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lo/DC$Intent;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 35
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCreditsUIPresenter$1;->e:Lo/EG;

    invoke-static {v1}, Lo/EG;->d(Lo/EG;)Lo/Fz;

    move-result-object v1

    invoke-interface {v1}, Lo/Fz;->h()V

    .line 36
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCreditsUIPresenter$1;->e:Lo/EG;

    invoke-static {v1}, Lo/EG;->d(Lo/EG;)Lo/Fz;

    move-result-object v1

    invoke-virtual {p1}, Lo/DC$Intent;->e()I

    move-result v2

    invoke-virtual {p1}, Lo/DC$Intent;->d()Z

    move-result p1

    invoke-interface {v1, v0, v2, p1}, Lo/Fz;->c(Ljava/lang/String;IZ)V

    goto :goto_3

    .line 33
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCreditsUIPresenter$1;->e:Lo/EG;

    invoke-static {p1}, Lo/EG;->d(Lo/EG;)Lo/Fz;

    move-result-object p1

    invoke-interface {p1}, Lo/Fz;->i()V

    :cond_4
    :goto_3
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lo/DC;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCreditsUIPresenter$1;->d(Lo/DC;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
