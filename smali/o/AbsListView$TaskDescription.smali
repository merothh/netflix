.class final Lo/AbsListView$TaskDescription;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/AbsListView;


# direct methods
.method constructor <init>(Lo/AbsListView;)V
    .locals 0

    iput-object p1, p0, Lo/AbsListView$TaskDescription;->e:Lo/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    .line 133
    sget-object v0, Lo/AbsListView;->b:Lo/AbsListView$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 137
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lo/AbsListView$TaskDescription;->e:Lo/AbsListView;

    invoke-static {v1}, Lo/AbsListView;->c(Lo/AbsListView;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->getSession(Ljava/lang/Long;)Lcom/netflix/cl/model/event/session/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
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

    .line 140
    :cond_0
    iget-object p1, p0, Lo/AbsListView$TaskDescription;->e:Lo/AbsListView;

    invoke-virtual {p1}, Lo/AbsListView;->dismiss()V

    .line 141
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->pX:I

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/adk;->c(II)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lo/AbsListView$TaskDescription;->a(Ljava/lang/Throwable;)V

    return-void
.end method
