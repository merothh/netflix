.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/mixins/PlayerBufferingAwarePresenter$initializeBufferingPresenter$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Wa$TaskDescription;->b(Lo/Wa;Lio/reactivex/Observable;)V
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
.field final synthetic b:Lo/Wa;


# direct methods
.method public constructor <init>(Lo/Wa;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/mixins/PlayerBufferingAwarePresenter$initializeBufferingPresenter$2;->b:Lo/Wa;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/UP;)V
    .locals 1

    .line 16
    instance-of v0, p1, Lo/UP$CursorFactory;

    if-eqz v0, :cond_0

    .line 17
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/mixins/PlayerBufferingAwarePresenter$initializeBufferingPresenter$2;->b:Lo/Wa;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lo/Wa;->d(Z)V

    goto :goto_0

    .line 19
    :cond_0
    instance-of p1, p1, Lo/UP$ComponentName;

    if-eqz p1, :cond_1

    .line 20
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/mixins/PlayerBufferingAwarePresenter$initializeBufferingPresenter$2;->b:Lo/Wa;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lo/Wa;->d(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/mixins/PlayerBufferingAwarePresenter$initializeBufferingPresenter$2;->d(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method