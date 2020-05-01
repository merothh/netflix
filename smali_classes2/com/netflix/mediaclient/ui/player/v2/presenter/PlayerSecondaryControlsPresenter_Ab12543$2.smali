.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter_Ab12543$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VP;-><init>(Lo/WC;Lio/reactivex/Observable;Lo/UK;Lio/reactivex/Observable;)V
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
.field final synthetic c:Lo/VP;


# direct methods
.method public constructor <init>(Lo/VP;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter_Ab12543$2;->c:Lo/VP;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/UP;)V
    .locals 1

    .line 36
    instance-of v0, p1, Lo/UP$Application;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter_Ab12543$2;->c:Lo/VP;

    check-cast p1, Lo/UP$Application;

    invoke-virtual {p1}, Lo/UP$Application;->c()Lo/Tv;

    move-result-object p1

    invoke-static {v0, p1}, Lo/VP;->b(Lo/VP;Lo/Tv;)V

    goto :goto_0

    .line 37
    :cond_0
    instance-of v0, p1, Lo/UP$SharedElementCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter_Ab12543$2;->c:Lo/VP;

    check-cast p1, Lo/UP$SharedElementCallback;

    invoke-virtual {p1}, Lo/UP$SharedElementCallback;->d()Z

    move-result p1

    invoke-static {v0, p1}, Lo/VP;->a(Lo/VP;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter_Ab12543$2;->a(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
