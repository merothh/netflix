.class public abstract Lo/Zo;
.super Lo/zP;
.source ""


# instance fields
.field private final c:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lo/zP;-><init>(Ljava/lang/String;)V

    .line 23
    iput-object p2, p0, Lo/Zo;->c:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final c(Lo/AQ;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 28
    invoke-super {p0, p1, p2}, Lo/zP;->c(Lo/AQ;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 30
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 31
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v0, p0, Lo/Zo;->c:Ljava/lang/Long;

    invoke-virtual {p2, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 32
    invoke-virtual {p0, p1}, Lo/Zo;->d(Lo/AQ;)V

    goto :goto_0

    .line 34
    :cond_0
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    iget-object v0, p0, Lo/Zo;->c:Ljava/lang/Long;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/cl/model/Error;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/netflix/cl/ExtLogger;->failedAction(Ljava/lang/Long;Lcom/netflix/cl/model/Error;)Z

    .line 35
    invoke-virtual {p0, p2}, Lo/Zo;->i(Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method protected abstract d(Lo/AQ;)V
.end method

.method protected abstract i(Lcom/netflix/mediaclient/android/app/Status;)V
.end method
