.class Lo/rb$2;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/rb;->c(Landroid/os/Looper;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/rb;


# direct methods
.method constructor <init>(Lo/rb;Landroid/os/Looper;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lo/rb$2;->a:Lo/rb;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private b(II)Ljava/lang/Long;
    .locals 4

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    int-to-long p1, p2

    const-wide/16 v2, -0x1

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    .line 171
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 176
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lo/rb$2;->b(II)Ljava/lang/Long;

    move-result-object v0

    .line 177
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "NfDrmManager_MediaDrmController"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 233
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    .line 234
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    goto/16 :goto_1

    :pswitch_1
    const-string v0, "handling releaseLicense MSG_RELEASE_LICENSE"

    .line 213
    invoke-static {v4, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lo/rc;

    if-eqz v0, :cond_4

    .line 216
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/rc;

    .line 217
    invoke-virtual {p1}, Lo/rc;->b()Lo/sx;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v2, "handling releaseLicense link: %s"

    .line 218
    invoke-static {v4, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Lo/sx;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lo/rb$2;->a:Lo/rb;

    iget-object v1, v1, Lo/rb;->g:Lo/iU;

    invoke-virtual {p1}, Lo/rc;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo/pM;->a(Lo/sx;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lo/iU;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string p1, "dropping releaseLicense - no link"

    .line 222
    invoke-static {v4, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 190
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x3

    if-ne v1, v5, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 191
    :goto_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_4

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Lo/rc;

    if-eqz v6, :cond_4

    .line 192
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/rc;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    .line 195
    invoke-virtual {p1}, Lo/rc;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x2

    .line 196
    invoke-virtual {p1}, Lo/rc;->g()Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    move-result-object v3

    aput-object v3, v5, v2

    const-string v2, "about to fetchStreamingLicense for session %s, challenge [%d], %s"

    .line 193
    invoke-static {v4, v2, v5}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 197
    iget-object v2, p0, Lo/rb$2;->a:Lo/rb;

    invoke-static {v2, v0}, Lo/rb;->d(Lo/rb;Ljava/lang/Long;)V

    .line 198
    iget-object v2, p0, Lo/rb$2;->a:Lo/rb;

    iget-object v2, v2, Lo/rb;->c:Lo/rk;

    invoke-virtual {v2}, Lo/rk;->i()Lo/pM;

    move-result-object v2

    iget-object v3, p0, Lo/rb$2;->a:Lo/rb;

    .line 199
    invoke-static {v3, v0, v1}, Lo/rb;->c(Lo/rb;Ljava/lang/Long;Z)Lo/qc;

    move-result-object v0

    .line 198
    invoke-virtual {v2, p1, v0}, Lo/pM;->c(Lo/rf;Lo/pS;)V

    goto :goto_1

    .line 179
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;

    if-eqz v1, :cond_2

    .line 180
    iget-object v0, p0, Lo/rb$2;->a:Lo/rb;

    iget-boolean v0, v0, Lo/rb;->i:Z

    if-nez v0, :cond_4

    .line 181
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;

    .line 182
    iget-object v0, p0, Lo/rb$2;->a:Lo/rb;

    invoke-static {v0, p1}, Lo/rb;->e(Lo/rb;Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;)V

    goto :goto_1

    .line 185
    :cond_2
    iget-object p1, p0, Lo/rb$2;->a:Lo/rb;

    invoke-static {p1, v0}, Lo/rb;->b(Lo/rb;Ljava/lang/Long;)V

    goto :goto_1

    .line 205
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_3

    .line 206
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Exception;

    .line 207
    iget-object v1, p0, Lo/rb$2;->a:Lo/rb;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lo/rb;->c(JLjava/lang/Exception;)V

    goto :goto_1

    :cond_3
    const-string p1, "DrmSession reported error, unknown cause.BUG!!!"

    .line 209
    invoke-static {v4, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    :pswitch_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
