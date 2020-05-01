.class final Lo/AbsListView$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AbsListView;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lkotlin/Pair<",
        "+",
        "Lo/AnalogClock<",
        "TT;>;+",
        "Landroid/content/Intent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/android/sharing/impl/types/ShareableInternal;

.field final synthetic c:Lo/AbsListView;


# direct methods
.method constructor <init>(Lo/AbsListView;Lcom/netflix/mediaclient/android/sharing/impl/types/ShareableInternal;)V
    .locals 0

    iput-object p1, p0, Lo/AbsListView$Activity;->c:Lo/AbsListView;

    iput-object p2, p0, Lo/AbsListView$Activity;->b:Lcom/netflix/mediaclient/android/sharing/impl/types/ShareableInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lo/AbsListView$Activity;->c(Lkotlin/Pair;)V

    return-void
.end method

.method public final c(Lkotlin/Pair;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Lo/AnalogClock<",
            "TT;>;+",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 103
    invoke-virtual {p1}, Lkotlin/Pair;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AnalogClock;

    .line 104
    invoke-virtual {p1}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 105
    sget-object v1, Lo/AbsListView;->b:Lo/AbsListView$StateListAnimator;

    check-cast v1, Lo/MessagePdu;

    .line 109
    :try_start_0
    sget-object v1, Lo/WebViewProvider;->c:Lo/WebViewProvider$Activity;

    invoke-virtual {v1}, Lo/WebViewProvider$Activity;->e()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p1, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lo/AbsListView$Activity;->c:Lo/AbsListView;

    invoke-virtual {v1}, Lo/AbsListView;->b()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v1, p1, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 115
    :cond_0
    iget-object p1, p0, Lo/AbsListView$Activity;->c:Lo/AbsListView;

    iget-object v1, p0, Lo/AbsListView$Activity;->c:Lo/AbsListView;

    invoke-static {v1}, Lo/AbsListView;->c(Lo/AbsListView;)Ljava/lang/Long;

    move-result-object v1

    new-array v2, v2, [Lcom/netflix/cl/model/ShareInfo;

    .line 116
    new-instance v4, Lcom/netflix/cl/model/ShareInfo;

    iget-object v5, p0, Lo/AbsListView$Activity;->b:Lcom/netflix/mediaclient/android/sharing/impl/types/ShareableInternal;

    invoke-interface {v5, v0}, Lcom/netflix/mediaclient/android/sharing/impl/types/ShareableInternal;->d(Lo/AnalogClock;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lo/AnalogClock;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/netflix/cl/model/ShareInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 115
    invoke-static {p1, v1, v2}, Lo/AbsListView;->c(Lo/AbsListView;Ljava/lang/Long;[Lcom/netflix/cl/model/ShareInfo;)Lcom/netflix/cl/model/event/session/ShareEnded;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 120
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    check-cast p1, Lcom/netflix/cl/model/event/session/SessionEnded;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 124
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "Error starting share activity"

    invoke-interface {v0, v2, v1}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lo/AbsListView$Activity;->c:Lo/AbsListView;

    invoke-static {v1}, Lo/AbsListView;->c(Lo/AbsListView;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->getSession(Ljava/lang/Long;)Lcom/netflix/cl/model/event/session/Session;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/action/ActionFailed;

    new-instance v3, Lcom/netflix/cl/model/Error;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0, v3}, Lcom/netflix/cl/model/event/session/action/ActionFailed;-><init>(Lcom/netflix/cl/model/event/session/Session;Lcom/netflix/cl/model/Error;)V

    check-cast v2, Lcom/netflix/cl/model/event/session/SessionEnded;

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    .line 129
    :cond_1
    :goto_0
    iget-object p1, p0, Lo/AbsListView$Activity;->c:Lo/AbsListView;

    invoke-virtual {p1}, Lo/AbsListView;->dismiss()V

    :cond_2
    return-void
.end method
