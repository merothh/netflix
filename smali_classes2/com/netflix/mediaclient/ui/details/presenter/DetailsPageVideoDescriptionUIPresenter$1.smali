.class public final Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDescriptionUIPresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/EF;-><init>(Lo/Fx;Lio/reactivex/Observable;)V
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
.field final synthetic e:Lo/EF;


# direct methods
.method public constructor <init>(Lo/EF;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDescriptionUIPresenter$1;->e:Lo/EF;

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
    instance-of v0, p1, Lo/DC$DialogInterface;

    if-eqz v0, :cond_3

    .line 22
    check-cast p1, Lo/DC$DialogInterface;

    invoke-virtual {p1}, Lo/DC$DialogInterface;->e()Ljava/lang/String;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDescriptionUIPresenter$1;->e:Lo/EF;

    invoke-virtual {p1}, Lo/DC$DialogInterface;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/EF;->d(Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDescriptionUIPresenter$1;->e:Lo/EF;

    invoke-virtual {p1}, Lo/DC$DialogInterface;->g()I

    move-result v2

    invoke-static {v1, v0, v2}, Lo/EF;->a(Lo/EF;Ljava/lang/String;I)V

    .line 30
    invoke-virtual {p1}, Lo/DC$DialogInterface;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "NEW"

    .line 32
    invoke-static {v3, v1, v2}, Lo/anv;->e(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDescriptionUIPresenter$1;->e:Lo/EF;

    invoke-static {v1}, Lo/EF;->d(Lo/EF;)Lo/Fx;

    move-result-object v1

    invoke-interface {v1}, Lo/Fx;->i()V

    .line 34
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDescriptionUIPresenter$1;->e:Lo/EF;

    invoke-static {v1}, Lo/EF;->d(Lo/EF;)Lo/Fx;

    move-result-object v1

    invoke-interface {v1}, Lo/Fx;->n()V

    goto :goto_0

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDescriptionUIPresenter$1;->e:Lo/EF;

    invoke-static {v1}, Lo/EF;->d(Lo/EF;)Lo/Fx;

    move-result-object v1

    invoke-interface {v1}, Lo/Fx;->l()V

    .line 40
    :goto_0
    invoke-virtual {p1}, Lo/DC$DialogInterface;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    invoke-virtual {p1}, Lo/DC$DialogInterface;->d()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDescriptionUIPresenter$1;->e:Lo/EF;

    invoke-static {v2}, Lo/EF;->d(Lo/EF;)Lo/Fx;

    move-result-object v2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v2, v1}, Lo/Fx;->e(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDescriptionUIPresenter$1;->e:Lo/EF;

    invoke-virtual {p1}, Lo/DC$DialogInterface;->g()I

    move-result p1

    invoke-static {v1, v0, p1}, Lo/EF;->a(Lo/EF;Ljava/lang/String;I)V

    goto :goto_1

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDescriptionUIPresenter$1;->e:Lo/EF;

    invoke-static {p1}, Lo/EF;->d(Lo/EF;)Lo/Fx;

    move-result-object p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Lo/Fx;->e(Ljava/lang/CharSequence;)V

    .line 52
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDescriptionUIPresenter$1;->e:Lo/EF;

    invoke-static {p1}, Lo/EF;->d(Lo/EF;)Lo/Fx;

    move-result-object p1

    invoke-interface {p1}, Lo/Fx;->j()V

    .line 54
    :goto_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDescriptionUIPresenter$1;->e:Lo/EF;

    invoke-static {p1}, Lo/EF;->d(Lo/EF;)Lo/Fx;

    move-result-object p1

    invoke-interface {p1}, Lo/Fx;->k()V

    goto :goto_2

    .line 56
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDescriptionUIPresenter$1;->e:Lo/EF;

    invoke-static {p1}, Lo/EF;->d(Lo/EF;)Lo/Fx;

    move-result-object p1

    invoke-interface {p1}, Lo/Fx;->m()V

    :cond_3
    :goto_2
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lo/DC;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDescriptionUIPresenter$1;->a(Lo/DC;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
