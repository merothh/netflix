.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/mixins/PlayerInteractiveChoicePointAwarePresenter$initializeInteractiveChoicePointAwarePresenter$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Wj$StateListAnimator;->d(Lo/Wj;Lio/reactivex/Observable;)V
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
.field final synthetic b:Lo/Wj;


# direct methods
.method public constructor <init>(Lo/Wj;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/mixins/PlayerInteractiveChoicePointAwarePresenter$initializeInteractiveChoicePointAwarePresenter$2;->b:Lo/Wj;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/UP;)V
    .locals 1

    .line 18
    instance-of v0, p1, Lo/UP$LoaderManager;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/mixins/PlayerInteractiveChoicePointAwarePresenter$initializeInteractiveChoicePointAwarePresenter$2;->b:Lo/Wj;

    check-cast p1, Lo/UP$LoaderManager;

    invoke-virtual {p1}, Lo/UP$LoaderManager;->b()Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/Wj;->b(Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;)V

    goto :goto_0

    .line 20
    :cond_0
    instance-of v0, p1, Lo/UP$VoiceInteractor;

    if-nez v0, :cond_1

    instance-of p1, p1, Lo/UP$BroadcastReceiver;

    if-eqz p1, :cond_2

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/mixins/PlayerInteractiveChoicePointAwarePresenter$initializeInteractiveChoicePointAwarePresenter$2;->b:Lo/Wj;

    sget-object v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;->e:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    invoke-interface {p1, v0}, Lo/Wj;->b(Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/mixins/PlayerInteractiveChoicePointAwarePresenter$initializeInteractiveChoicePointAwarePresenter$2;->d(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
