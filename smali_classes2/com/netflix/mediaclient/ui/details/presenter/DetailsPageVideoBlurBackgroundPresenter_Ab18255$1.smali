.class public final Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBlurBackgroundPresenter_Ab18255$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/EC;-><init>(Lo/Fh;Lio/reactivex/Observable;)V
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
.field final synthetic e:Lo/EC;


# direct methods
.method public constructor <init>(Lo/EC;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBlurBackgroundPresenter_Ab18255$1;->e:Lo/EC;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/DC;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    instance-of v0, p1, Lo/DC$Context;

    if-eqz v0, :cond_1

    .line 23
    invoke-static {}, Lo/aek;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBlurBackgroundPresenter_Ab18255$1;->e:Lo/EC;

    invoke-static {p1}, Lo/EC;->a(Lo/EC;)Lo/Fh;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fh;->b()V

    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBlurBackgroundPresenter_Ab18255$1;->e:Lo/EC;

    invoke-static {v0}, Lo/EC;->a(Lo/EC;)Lo/Fh;

    move-result-object v0

    check-cast p1, Lo/DC$Context;

    invoke-virtual {p1}, Lo/DC$Context;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Fh;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Lo/DC;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBlurBackgroundPresenter_Ab18255$1;->e(Lo/DC;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
