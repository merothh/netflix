.class final Lo/aat$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aat;->L()Lio/reactivex/functions/Consumer;
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
        "Lo/ApfStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/aat;


# direct methods
.method constructor <init>(Lo/aat;)V
    .locals 0

    iput-object p1, p0, Lo/aat$TaskDescription;->d:Lo/aat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lo/ApfStats;

    invoke-virtual {p0, p1}, Lo/aat$TaskDescription;->d(Lo/ApfStats;)V

    return-void
.end method

.method public final d(Lo/ApfStats;)V
    .locals 3

    .line 175
    invoke-virtual {p1}, Lo/ApfStats;->c()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lo/aat$TaskDescription;->d:Lo/aat;

    const-string v2, "queryTextEvent"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/ApfStats;->a()Z

    move-result p1

    invoke-static {v1, p1}, Lo/aat;->e(Lo/aat;Z)V

    .line 177
    iget-object p1, p0, Lo/aat$TaskDescription;->d:Lo/aat;

    invoke-static {p1}, Lo/aat;->d(Lo/aat;)Z

    move-result v1

    invoke-static {p1, v0, v1}, Lo/aat;->c(Lo/aat;Ljava/lang/String;Z)V

    .line 178
    iget-object p1, p0, Lo/aat$TaskDescription;->d:Lo/aat;

    invoke-static {p1}, Lo/aat;->d(Lo/aat;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    sget-object p1, Lo/aat;->k:Lo/aat$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 180
    iget-object p1, p0, Lo/aat$TaskDescription;->d:Lo/aat;

    invoke-static {p1, v0}, Lo/aat;->a(Lo/aat;Ljava/lang/String;)V

    goto :goto_1

    .line 182
    :cond_0
    move-object p1, v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 183
    iget-object p1, p0, Lo/aat$TaskDescription;->d:Lo/aat;

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p1, v0}, Lo/aat;->b(Lo/aat;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 184
    iget-object p1, p0, Lo/aat$TaskDescription;->d:Lo/aat;

    invoke-virtual {p1}, Lo/aat;->M()V

    goto :goto_1

    .line 186
    :cond_2
    sget-object p1, Lo/aat;->k:Lo/aat$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 187
    iget-object p1, p0, Lo/aat$TaskDescription;->d:Lo/aat;

    invoke-virtual {p1}, Lo/aat;->U_()Lo/Am;

    move-result-object p1

    if-nez p1, :cond_3

    .line 189
    sget-object p1, Lo/aat;->k:Lo/aat$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 191
    :cond_3
    iget-object p1, p0, Lo/aat$TaskDescription;->d:Lo/aat;

    invoke-static {p1}, Lo/aat;->f(Lo/aat;)V

    .line 192
    iget-object p1, p0, Lo/aat$TaskDescription;->d:Lo/aat;

    invoke-static {p1, v0}, Lo/aat;->d(Lo/aat;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
