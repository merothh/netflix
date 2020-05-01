.class public final Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoImagePresenter_Ab18255$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/EH;-><init>(Lo/FA;Lio/reactivex/Observable;)V
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
.field final synthetic d:Lo/EH;


# direct methods
.method public constructor <init>(Lo/EH;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoImagePresenter_Ab18255$1;->d:Lo/EH;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/DC;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    instance-of v0, p1, Lo/DC$Context;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoImagePresenter_Ab18255$1;->d:Lo/EH;

    invoke-static {v0}, Lo/EH;->a(Lo/EH;)Lo/FA;

    move-result-object v0

    check-cast p1, Lo/DC$Context;

    invoke-virtual {p1}, Lo/DC$Context;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/DC$Context;->d()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lo/FA;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_0
    instance-of v0, p1, Lo/DC$ContentResolver;

    if-eqz v0, :cond_1

    .line 25
    check-cast p1, Lo/DC$ContentResolver;

    invoke-virtual {p1}, Lo/DC$ContentResolver;->d()Z

    move-result p1

    if-nez p1, :cond_2

    .line 26
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoImagePresenter_Ab18255$1;->d:Lo/EH;

    invoke-static {p1}, Lo/EH;->a(Lo/EH;)Lo/FA;

    move-result-object p1

    invoke-interface {p1}, Lo/FA;->i()V

    goto :goto_0

    .line 29
    :cond_1
    sget-object v0, Lo/DC$LoaderManager;->e:Lo/DC$LoaderManager;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 30
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoImagePresenter_Ab18255$1;->d:Lo/EH;

    invoke-static {p1}, Lo/EH;->a(Lo/EH;)Lo/FA;

    move-result-object p1

    invoke-interface {p1}, Lo/FA;->f()V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lo/DC;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoImagePresenter_Ab18255$1;->e(Lo/DC;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
