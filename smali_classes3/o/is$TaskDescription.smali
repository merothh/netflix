.class public final Lo/is$TaskDescription;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/is;->d(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic d:Lo/is;


# direct methods
.method constructor <init>(Lo/is;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap;",
            ")V"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lo/is$TaskDescription;->d:Lo/is;

    iput-object p2, p0, Lo/is$TaskDescription;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-super {p0, p1, p2}, Lo/cq;->c(Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 172
    sget-object p1, Lo/is;->c:Lo/is$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 174
    iget-object p1, p0, Lo/is$TaskDescription;->d:Lo/is;

    invoke-static {p1}, Lo/is;->e(Lo/is;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 175
    iget-object p1, p0, Lo/is$TaskDescription;->d:Lo/is;

    invoke-static {p1}, Lo/is;->d(Lo/is;)V

    .line 178
    :cond_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 179
    :goto_0
    iget-object v0, p0, Lo/is$TaskDescription;->a:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "Unknown failure"

    :goto_1
    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lo/is$TaskDescription;->d:Lo/is;

    iget-object v1, p0, Lo/is$TaskDescription;->a:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p2

    invoke-static {v0, p1, v1, p2}, Lo/is;->d(Lo/is;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Ljava/util/HashMap;Z)V

    return-void
.end method
