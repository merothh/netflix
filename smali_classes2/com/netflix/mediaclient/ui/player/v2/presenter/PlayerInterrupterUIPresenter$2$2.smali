.class final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2;->a(Lo/UP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/UP;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2$2;->a:Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/UP;)V
    .locals 1

    .line 79
    invoke-static {}, Lo/VJ;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Time to show the interrupter"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2$2;->a:Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2;->e:Lo/VJ;

    invoke-static {p1}, Lo/VJ;->e(Lo/VJ;)Lo/Wx;

    move-result-object p1

    invoke-interface {p1}, Lo/Wx;->j()V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2$2;->d(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
