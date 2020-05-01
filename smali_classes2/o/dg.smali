.class public final Lo/dg;
.super Lo/dh;
.source ""


# instance fields
.field private c:Lo/dm;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;Lo/dl;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lo/dh;-><init>(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;Lo/dl;)V

    .line 21
    const-class p1, Lo/dm;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/dm;

    iput-object p1, p0, Lo/dg;->c:Lo/dm;

    return-void
.end method


# virtual methods
.method protected varargs c([Ljava/lang/Void;)[B
    .locals 6

    const-string p1, "Failed to get provisiong certificate for Embedded Widevine. Response is null."

    const-string v0, "nf_net"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 29
    :try_start_0
    iget-object v3, p0, Lo/dg;->c:Lo/dm;

    iget-object v4, p0, Lo/dg;->b:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;

    invoke-interface {v3, v4}, Lo/dm;->e(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "response length= %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 32
    array-length v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_0
    const-string v3, "Response is null!"

    .line 34
    invoke-static {v0, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3, p1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "Failure in provisioning!"

    .line 38
    invoke-static {v0, v3, v4, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 39
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p1, v3}, Lo/SpinnerAdapter;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    :goto_0
    iget-object p1, p0, Lo/dg;->a:Lo/dl;

    if-eqz p1, :cond_2

    if-eqz v2, :cond_1

    .line 44
    iget-object p1, p0, Lo/dg;->a:Lo/dl;

    invoke-interface {p1, v2}, Lo/dl;->a([B)V

    goto :goto_1

    .line 46
    :cond_1
    iget-object p1, p0, Lo/dg;->a:Lo/dl;

    invoke-interface {p1}, Lo/dl;->d()V

    :cond_2
    :goto_1
    return-object v2
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lo/dg;->c([Ljava/lang/Void;)[B

    move-result-object p1

    return-object p1
.end method
