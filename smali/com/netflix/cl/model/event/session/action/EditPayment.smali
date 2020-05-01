.class public final Lcom/netflix/cl/model/event/session/action/EditPayment;
.super Lcom/netflix/cl/model/event/session/action/Action;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/netflix/cl/model/event/session/action/Action;-><init>()V

    const-string v0, "EditPayment"

    .line 13
    invoke-virtual {p0, v0}, Lcom/netflix/cl/model/event/session/action/EditPayment;->addContextType(Ljava/lang/String;)V

    return-void
.end method
