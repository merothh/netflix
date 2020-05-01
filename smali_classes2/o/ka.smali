.class public Lo/ka;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private c:J


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lo/ka;->a:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 9

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 24
    iget-wide v2, p0, Lo/ka;->c:J

    sub-long v2, v0, v2

    iget v4, p0, Lo/ka;->a:I

    int-to-long v4, v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v2, v4

    if-lez v8, :cond_0

    .line 25
    iput-wide v0, p0, Lo/ka;->c:J

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v7

    iget-wide v2, p0, Lo/ka;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "nf_pds_keepalive_window"

    const-string v3, "canSend: %s, time: %s"

    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v0
.end method
