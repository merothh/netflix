.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/mixins/PlayerPreplayAwarePresenter$initializeisInPreplayAwarePresenter$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Wf$Activity;->a(Lo/Wf;Lio/reactivex/Observable;)V
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
.field final synthetic b:Lo/Wf;


# direct methods
.method public constructor <init>(Lo/Wf;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/mixins/PlayerPreplayAwarePresenter$initializeisInPreplayAwarePresenter$2;->b:Lo/Wf;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/UP;)V
    .locals 1

    .line 18
    instance-of v0, p1, Lo/UP$Application;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/mixins/PlayerPreplayAwarePresenter$initializeisInPreplayAwarePresenter$2;->b:Lo/Wf;

    check-cast p1, Lo/UP$Application;

    invoke-virtual {p1}, Lo/UP$Application;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/Wf;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/mixins/PlayerPreplayAwarePresenter$initializeisInPreplayAwarePresenter$2;->b(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method