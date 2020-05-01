.class public Lcom/netflix/cl/model/event/session/SessionCanceled;
.super Lcom/netflix/cl/model/event/session/SessionEnded;
.source ""


# direct methods
.method public constructor <init>(Lcom/netflix/cl/model/event/session/Session;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/netflix/cl/model/event/session/SessionEnded;-><init>(Lcom/netflix/cl/model/event/session/Session;)V

    const-string p1, "SessionCanceled"

    .line 18
    invoke-virtual {p0, p1}, Lcom/netflix/cl/model/event/session/SessionCanceled;->addContextType(Ljava/lang/String;)V

    return-void
.end method
