.class Lo/za$1;
.super Landroid/telephony/PhoneStateListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/za;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/za;


# direct methods
.method constructor <init>(Lo/za;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lo/za$1;->a:Lo/za;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    .line 42
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    const-string p2, "nf_voip_agent"

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_STATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lo/za$1;->a:Lo/za;

    invoke-static {p1}, Lo/za;->b(Lo/za;)Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lo/za$1;->a:Lo/za;

    invoke-static {p1}, Lo/za;->b(Lo/za;)Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Incoming PSTN call answered, disconnecting VoIP"

    .line 52
    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object p1, p0, Lo/za$1;->a:Lo/za;

    invoke-static {p1}, Lo/za;->b(Lo/za;)Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->y()Z

    goto :goto_0

    :cond_1
    const-string p1, "onCallStateChanged: CALL_STATE_RINGING"

    .line 48
    invoke-static {p2, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p1, "onCallStateChanged: CALL_STATE_IDLE"

    .line 45
    invoke-static {p2, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
