.class Lo/ot$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/oR;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ot;->c(Lo/nS$ActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/ot;

.field final synthetic d:Lo/nS$ActionBar;


# direct methods
.method constructor <init>(Lo/ot;Lo/nS$ActionBar;)V
    .locals 0

    .line 1473
    iput-object p1, p0, Lo/ot$15;->a:Lo/ot;

    iput-object p2, p0, Lo/ot$15;->d:Lo/nS$ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/sE;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .line 1477
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1478
    new-instance v0, Lo/ob;

    invoke-interface {p1}, Lo/sE;->U()Lo/sA;

    move-result-object p1

    iget-object v1, p0, Lo/ot$15;->a:Lo/ot;

    invoke-virtual {v1}, Lo/ot;->o()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/ot$15;->a:Lo/ot;

    invoke-virtual {v2}, Lo/ot;->k()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo/ot$15;->a:Lo/ot;

    .line 1479
    invoke-static {v3}, Lo/ot;->a(Lo/ot;)Lo/oC;

    move-result-object v3

    invoke-static {v3}, Lo/ph;->b(Lo/oC;)Lo/jX;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lo/ob;-><init>(Lo/sA;Ljava/lang/String;Ljava/lang/String;Lo/jX;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1481
    :goto_0
    iget-object p1, p0, Lo/ot$15;->d:Lo/nS$ActionBar;

    iget-object v1, p0, Lo/ot$15;->a:Lo/ot;

    invoke-virtual {v1}, Lo/ot;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0, p2}, Lo/nS$ActionBar;->e(Ljava/lang/String;Lo/ob;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
