.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter_Ab16292$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VN;-><init>(Lo/Xc;Lio/reactivex/Observable;Lo/UK;Lio/reactivex/Observable;)V
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
.field final synthetic c:Lo/VN;


# direct methods
.method public constructor <init>(Lo/VN;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter_Ab16292$2;->c:Lo/VN;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/UP;)V
    .locals 1

    .line 28
    instance-of v0, p1, Lo/UP$AssistContent;

    if-eqz v0, :cond_1

    .line 29
    check-cast p1, Lo/UP$AssistContent;

    invoke-virtual {p1}, Lo/UP$AssistContent;->c()F

    move-result p1

    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter_Ab16292$2;->c:Lo/VN;

    invoke-static {v0}, Lo/VN;->b(Lo/VN;)Lo/Xc;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lo/WY;

    invoke-virtual {v0, p1}, Lo/WY;->c(F)V

    .line 31
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter_Ab16292$2;->c:Lo/VN;

    invoke-static {p1}, Lo/VN;->b(Lo/VN;)Lo/Xc;

    move-result-object p1

    sget-object v0, Lo/UU$DatabaseErrorHandler;->d:Lo/UU$DatabaseErrorHandler;

    invoke-virtual {p1, v0}, Lo/Xc;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.ui.player.v2.uiView.PlayerSecondaryControlsUIView_Ab16292"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter_Ab16292$2;->e(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
