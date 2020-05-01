.class public final Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerPrimaryControlsUIView$performSkipAnimation$onAnimationEnd$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xa;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/Xa;


# direct methods
.method public constructor <init>(Lo/Xa;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerPrimaryControlsUIView$performSkipAnimation$onAnimationEnd$1;->b:Lo/Xa;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerPrimaryControlsUIView$performSkipAnimation$onAnimationEnd$1;->b:Lo/Xa;

    invoke-static {v0}, Lo/Xa;->a(Lo/Xa;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    sget-object v1, Lo/akj;->a:Lo/akj;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerPrimaryControlsUIView$performSkipAnimation$onAnimationEnd$1;->c()V

    sget-object v0, Lo/akj;->a:Lo/akj;

    return-object v0
.end method
