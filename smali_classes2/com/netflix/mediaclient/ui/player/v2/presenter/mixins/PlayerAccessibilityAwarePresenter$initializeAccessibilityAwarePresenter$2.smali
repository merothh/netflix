.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/mixins/PlayerAccessibilityAwarePresenter$initializeAccessibilityAwarePresenter$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Wb$TaskDescription;->b(Lo/Wb;Lio/reactivex/Observable;)V
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
.field final synthetic a:Lo/Wb;


# direct methods
.method public constructor <init>(Lo/Wb;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/mixins/PlayerAccessibilityAwarePresenter$initializeAccessibilityAwarePresenter$2;->a:Lo/Wb;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/UP;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/mixins/PlayerAccessibilityAwarePresenter$initializeAccessibilityAwarePresenter$2;->a:Lo/Wb;

    if-eqz p1, :cond_0

    check-cast p1, Lo/UP$TaskDescription;

    invoke-virtual {p1}, Lo/UP$TaskDescription;->e()Z

    move-result p1

    invoke-interface {v0, p1}, Lo/Wb;->g(Z)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.ui.player.v2.PlayerStateEvent.AccessibilityChanged"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/mixins/PlayerAccessibilityAwarePresenter$initializeAccessibilityAwarePresenter$2;->b(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
