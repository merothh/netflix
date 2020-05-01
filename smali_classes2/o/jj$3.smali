.class Lo/jj$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/jj;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/jj;


# direct methods
.method constructor <init>(Lo/jj;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lo/jj$3;->d:Lo/jj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 88
    iget-object v0, p0, Lo/jj$3;->d:Lo/jj;

    invoke-static {v0}, Lo/jj;->d(Lo/jj;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "advertisement_id"

    invoke-static {v1, v3, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/jj;->e(Lo/jj;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lo/jj$3;->d:Lo/jj;

    invoke-static {v0}, Lo/jj;->d(Lo/jj;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "advertisement_id_ts"

    const-wide/16 v4, 0x0

    invoke-static {v1, v3, v4, v5}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lo/jj;->b(Lo/jj;J)J

    .line 90
    iget-object v0, p0, Lo/jj$3;->d:Lo/jj;

    invoke-static {v0}, Lo/jj;->d(Lo/jj;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "advertisement_id_opted_in"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lo/jj;->e(Lo/jj;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 91
    iget-object v0, p0, Lo/jj$3;->d:Lo/jj;

    invoke-static {v0}, Lo/jj;->d(Lo/jj;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/jl;->b(Landroid/content/Context;)Lo/ji;

    move-result-object v1

    invoke-static {v0, v1}, Lo/jj;->b(Lo/jj;Lo/ji;)Lo/ji;

    .line 93
    iget-object v0, p0, Lo/jj$3;->d:Lo/jj;

    invoke-static {v0}, Lo/jj;->b(Lo/jj;)Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lo/jj$3;->d:Lo/jj;

    invoke-static {v1, v2}, Lo/jj;->c(Lo/jj;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lo/jj$3;->d:Lo/jj;

    invoke-static {v1}, Lo/jj;->d(Lo/jj;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/adq;->m(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "nf_adv_id"

    if-nez v1, :cond_0

    const-string v1, "Not first start after installation"

    .line 97
    invoke-static {v2, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "First start after installation"

    .line 99
    invoke-static {v2, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lo/jj$3;->d:Lo/jj;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->e:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/jj;->c(Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_1

    .line 104
    iget-object v1, p0, Lo/jj$3;->d:Lo/jj;

    invoke-virtual {v1, v0}, Lo/jj;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
