.class public final Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoSupplementalMessagePresenter_Ab18255$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/EK;-><init>(Lo/Fs;Lio/reactivex/Observable;)V
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
.field final synthetic d:Lo/EK;


# direct methods
.method public constructor <init>(Lo/EK;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoSupplementalMessagePresenter_Ab18255$1;->d:Lo/EK;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/DC;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    instance-of v0, p1, Lo/DC$DialogInterface;

    if-eqz v0, :cond_2

    .line 23
    check-cast p1, Lo/DC$DialogInterface;

    invoke-virtual {p1}, Lo/DC$DialogInterface;->e()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lo/DC$DialogInterface;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {p1}, Lo/DC$DialogInterface;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoSupplementalMessagePresenter_Ab18255$1;->d:Lo/EK;

    .line 32
    invoke-virtual {p1}, Lo/DC$DialogInterface;->g()I

    move-result p1

    .line 30
    invoke-static {v1, v0, p1}, Lo/EK;->d(Lo/EK;Ljava/lang/String;I)V

    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoSupplementalMessagePresenter_Ab18255$1;->d:Lo/EK;

    invoke-static {p1}, Lo/EK;->c(Lo/EK;)Lo/Fs;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fs;->h()V

    goto :goto_0

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoSupplementalMessagePresenter_Ab18255$1;->d:Lo/EK;

    .line 42
    invoke-virtual {p1}, Lo/DC$DialogInterface;->g()I

    move-result p1

    .line 40
    invoke-static {v1, v0, p1}, Lo/EK;->d(Lo/EK;Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Lo/DC;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoSupplementalMessagePresenter_Ab18255$1;->b(Lo/DC;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
