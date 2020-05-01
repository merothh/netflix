.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLoadingSpinnerPresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VK;-><init>(Lo/NsdServiceInfo;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field final synthetic e:Lo/NsdServiceInfo;


# direct methods
.method public constructor <init>(Lo/NsdServiceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLoadingSpinnerPresenter$1;->e:Lo/NsdServiceInfo;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/UP;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    instance-of v0, p1, Lo/UP$CursorFactory;

    if-eqz v0, :cond_0

    .line 22
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLoadingSpinnerPresenter$1;->e:Lo/NsdServiceInfo;

    invoke-interface {p1}, Lo/NsdServiceInfo;->b()V

    .line 23
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLoadingSpinnerPresenter$1;->e:Lo/NsdServiceInfo;

    invoke-interface {p1}, Lo/NsdServiceInfo;->j()V

    goto :goto_1

    .line 25
    :cond_0
    sget-object v0, Lo/UP$ComponentName;->d:Lo/UP$ComponentName;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 26
    :cond_1
    instance-of p1, p1, Lo/UP$BroadcastReceiver;

    if-eqz p1, :cond_2

    .line 27
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLoadingSpinnerPresenter$1;->e:Lo/NsdServiceInfo;

    invoke-interface {p1}, Lo/NsdServiceInfo;->e()V

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLoadingSpinnerPresenter$1;->e(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
