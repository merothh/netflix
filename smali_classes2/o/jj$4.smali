.class Lo/jj$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/jh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/jj;->c(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lo/jj;

.field final synthetic e:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lo/jj;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lo/jj$4;->c:Lo/jj;

    iput-object p2, p0, Lo/jj$4;->b:Ljava/lang/String;

    iput-object p3, p0, Lo/jj$4;->e:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "nf_adv_id"

    const-string v1, "Advertiser ID failed to be delivered"

    .line 196
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e()V
    .locals 5

    const-string v0, "nf_adv_id"

    const-string v1, "Advertiser ID delivered"

    .line 182
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 184
    new-instance v2, Lo/aea;

    invoke-direct {v2}, Lo/aea;-><init>()V

    .line 185
    iget-object v3, p0, Lo/jj$4;->b:Ljava/lang/String;

    const-string v4, "advertisement_id"

    invoke-virtual {v2, v4, v3}, Lo/aea;->a(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "advertisement_id_ts"

    .line 186
    invoke-virtual {v2, v3, v0, v1}, Lo/aea;->c(Ljava/lang/String;J)Z

    .line 187
    iget-object v3, p0, Lo/jj$4;->e:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "advertisement_id_opted_in"

    invoke-virtual {v2, v4, v3}, Lo/aea;->c(Ljava/lang/String;Z)Z

    .line 188
    invoke-virtual {v2}, Lo/aea;->b()V

    .line 189
    iget-object v2, p0, Lo/jj$4;->c:Lo/jj;

    iget-object v3, p0, Lo/jj$4;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lo/jj;->e(Lo/jj;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    iget-object v2, p0, Lo/jj$4;->c:Lo/jj;

    invoke-static {v2, v0, v1}, Lo/jj;->b(Lo/jj;J)J

    .line 191
    iget-object v0, p0, Lo/jj$4;->c:Lo/jj;

    iget-object v1, p0, Lo/jj$4;->e:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/jj;->e(Lo/jj;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method
