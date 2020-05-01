.class Lcom/netflix/partner/PService$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zT;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/partner/PService;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/partner/PService;


# direct methods
.method constructor <init>(Lcom/netflix/partner/PService;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/netflix/partner/PService$1;->b:Lcom/netflix/partner/PService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .line 187
    iget-object p1, p0, Lcom/netflix/partner/PService$1;->b:Lcom/netflix/partner/PService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p2, p0, Lcom/netflix/partner/PService$1;->b:Lcom/netflix/partner/PService;

    invoke-static {p2}, Lcom/netflix/partner/PService;->i(Lcom/netflix/partner/PService;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/netflix/partner/PService;->a(Lcom/netflix/partner/PService;J)J

    .line 192
    iget-object p1, p0, Lcom/netflix/partner/PService$1;->b:Lcom/netflix/partner/PService;

    invoke-static {p1}, Lcom/netflix/partner/PService;->h(Lcom/netflix/partner/PService;)Lcom/netflix/partner/PService$TaskDescription;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "nf_partner_pservice"

    if-eqz p1, :cond_0

    .line 195
    :try_start_0
    iget-object p1, p0, Lcom/netflix/partner/PService$1;->b:Lcom/netflix/partner/PService;

    invoke-static {p1}, Lcom/netflix/partner/PService;->j(Lcom/netflix/partner/PService;)Lo/ail$Activity;

    move-result-object p1

    iget-object v1, p0, Lcom/netflix/partner/PService$1;->b:Lcom/netflix/partner/PService;

    invoke-static {v1}, Lcom/netflix/partner/PService;->h(Lcom/netflix/partner/PService;)Lcom/netflix/partner/PService$TaskDescription;

    move-result-object v1

    iget-object v1, v1, Lcom/netflix/partner/PService$TaskDescription;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/partner/PService$1;->b:Lcom/netflix/partner/PService;

    invoke-static {v2}, Lcom/netflix/partner/PService;->h(Lcom/netflix/partner/PService;)Lcom/netflix/partner/PService$TaskDescription;

    move-result-object v2

    iget v2, v2, Lcom/netflix/partner/PService$TaskDescription;->b:I

    iget-object v3, p0, Lcom/netflix/partner/PService$1;->b:Lcom/netflix/partner/PService;

    invoke-static {v3}, Lcom/netflix/partner/PService;->h(Lcom/netflix/partner/PService;)Lcom/netflix/partner/PService$TaskDescription;

    move-result-object v3

    iget-object v3, v3, Lcom/netflix/partner/PService$TaskDescription;->e:Lo/aiq;

    invoke-virtual {p1, v1, v2, v3}, Lo/ail$Activity;->d(Ljava/lang/String;ILo/aiq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "failed to resume query"

    .line 197
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_0
    iget-object p1, p0, Lcom/netflix/partner/PService$1;->b:Lcom/netflix/partner/PService;

    invoke-static {p1, p2}, Lcom/netflix/partner/PService;->a(Lcom/netflix/partner/PService;Lcom/netflix/partner/PService$TaskDescription;)Lcom/netflix/partner/PService$TaskDescription;

    goto :goto_1

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/netflix/partner/PService$1;->b:Lcom/netflix/partner/PService;

    invoke-static {p1}, Lcom/netflix/partner/PService;->c(Lcom/netflix/partner/PService;)Lo/Am;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netflix/partner/PService;->a(Lcom/netflix/partner/PService;Lo/Am;)V

    .line 205
    :goto_1
    iget-object p1, p0, Lcom/netflix/partner/PService$1;->b:Lcom/netflix/partner/PService;

    invoke-static {p1}, Lcom/netflix/partner/PService;->g(Lcom/netflix/partner/PService;)Lcom/netflix/partner/PService$TaskDescription;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "performing differed card handling"

    .line 207
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :try_start_1
    iget-object p1, p0, Lcom/netflix/partner/PService$1;->b:Lcom/netflix/partner/PService;

    invoke-static {p1}, Lcom/netflix/partner/PService;->j(Lcom/netflix/partner/PService;)Lo/ail$Activity;

    move-result-object p1

    iget-object v1, p0, Lcom/netflix/partner/PService$1;->b:Lcom/netflix/partner/PService;

    .line 210
    invoke-static {v1}, Lcom/netflix/partner/PService;->g(Lcom/netflix/partner/PService;)Lcom/netflix/partner/PService$TaskDescription;

    move-result-object v1

    iget v1, v1, Lcom/netflix/partner/PService$TaskDescription;->b:I

    iget-object v2, p0, Lcom/netflix/partner/PService$1;->b:Lcom/netflix/partner/PService;

    .line 211
    invoke-static {v2}, Lcom/netflix/partner/PService;->g(Lcom/netflix/partner/PService;)Lcom/netflix/partner/PService$TaskDescription;

    move-result-object v2

    iget-object v2, v2, Lcom/netflix/partner/PService$TaskDescription;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/partner/PService$1;->b:Lcom/netflix/partner/PService;

    .line 212
    invoke-static {v3}, Lcom/netflix/partner/PService;->g(Lcom/netflix/partner/PService;)Lcom/netflix/partner/PService$TaskDescription;

    move-result-object v3

    iget-object v3, v3, Lcom/netflix/partner/PService$TaskDescription;->e:Lo/aiq;

    .line 209
    invoke-virtual {p1, v1, v2, v3}, Lo/ail$Activity;->e(ILjava/lang/String;Lo/aiq;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 214
    iget-object v2, p0, Lcom/netflix/partner/PService$1;->b:Lcom/netflix/partner/PService;

    .line 215
    invoke-static {v2}, Lcom/netflix/partner/PService;->g(Lcom/netflix/partner/PService;)Lcom/netflix/partner/PService$TaskDescription;

    move-result-object v2

    iget v2, v2, Lcom/netflix/partner/PService$TaskDescription;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netflix/partner/PService$1;->b:Lcom/netflix/partner/PService;

    invoke-static {v2}, Lcom/netflix/partner/PService;->g(Lcom/netflix/partner/PService;)Lcom/netflix/partner/PService$TaskDescription;

    move-result-object v2

    iget-object v2, v2, Lcom/netflix/partner/PService$TaskDescription;->c:Ljava/lang/String;

    aput-object v2, p1, v1

    const-string v1, "failed to resume stored card event %s, %s"

    .line 214
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 217
    :goto_2
    iget-object p1, p0, Lcom/netflix/partner/PService$1;->b:Lcom/netflix/partner/PService;

    invoke-static {p1, p2}, Lcom/netflix/partner/PService;->d(Lcom/netflix/partner/PService;Lcom/netflix/partner/PService$TaskDescription;)Lcom/netflix/partner/PService$TaskDescription;

    :cond_1
    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 226
    iget-object p1, p0, Lcom/netflix/partner/PService$1;->b:Lcom/netflix/partner/PService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/netflix/partner/PService;->a(Lcom/netflix/partner/PService;Lcom/netflix/partner/PService$TaskDescription;)Lcom/netflix/partner/PService$TaskDescription;

    return-void
.end method
