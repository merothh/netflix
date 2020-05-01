.class public final Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoContentWarningPresenter_Ab18255$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ED;-><init>(Lo/Fm;Lio/reactivex/Observable;)V
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
.field final synthetic e:Lo/ED;


# direct methods
.method public constructor <init>(Lo/ED;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoContentWarningPresenter_Ab18255$1;->e:Lo/ED;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/DC;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    instance-of v0, p1, Lo/DC$BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoContentWarningPresenter_Ab18255$1;->e:Lo/ED;

    invoke-static {v0}, Lo/ED;->c(Lo/ED;)Lo/Fm;

    move-result-object v0

    check-cast p1, Lo/DC$BroadcastReceiver;

    invoke-virtual {p1}, Lo/DC$BroadcastReceiver;->d()Lcom/netflix/model/leafs/originals/ContentWarning;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Fm;->c(Lcom/netflix/model/leafs/originals/ContentWarning;)V

    :cond_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lo/DC;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoContentWarningPresenter_Ab18255$1;->b(Lo/DC;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
