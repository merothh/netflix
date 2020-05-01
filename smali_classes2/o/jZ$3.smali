.class Lo/jZ$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/nS$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/jZ;->c(Lo/jY;Lo/jZ$ActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/jZ$ActionBar;

.field final synthetic e:Lo/jZ;


# direct methods
.method constructor <init>(Lo/jZ;Lo/jZ$ActionBar;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lo/jZ$3;->e:Lo/jZ;

    iput-object p2, p0, Lo/jZ$3;->d:Lo/jZ$ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/String;Lo/ob;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    .line 315
    iget-object v0, p0, Lo/jZ$3;->e:Lo/jZ;

    invoke-static {v0, p1}, Lo/jZ;->d(Lo/jZ;Ljava/lang/String;)Lo/jY;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0, v2}, Lo/jY;->c(Z)V

    if-eqz p2, :cond_2

    .line 318
    invoke-virtual {p2}, Lo/ob;->a()Lo/sA;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 319
    invoke-static {}, Lo/jZ;->b()Ljava/lang/String;

    move-result-object p3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "got manifestFromCache :%s - setting links and sendng pds resume"

    invoke-static {p3, p1, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 320
    invoke-virtual {p2}, Lo/ob;->a()Lo/sA;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/jY;->d(Lo/sA;)Lo/jY;

    .line 322
    iget-object p1, p0, Lo/jZ$3;->d:Lo/jZ$ActionBar;

    if-eqz p1, :cond_2

    .line 323
    invoke-interface {p1, v0}, Lo/jZ$ActionBar;->d(Lo/jY;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 328
    iget-object v1, p0, Lo/jZ$3;->e:Lo/jZ;

    invoke-virtual {p2}, Lo/ob;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lo/ob;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lo/ob;->e()Lo/jX;

    move-result-object v5

    invoke-virtual {p2}, Lo/ob;->a()Lo/sA;

    move-result-object v6

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lo/jZ;->c(Lo/jZ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/jX;Lo/sA;)Lo/jY;

    goto :goto_0

    .line 330
    :cond_1
    invoke-static {}, Lo/jZ;->b()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "error receiving manifest from cache movieId=%s status=%s"

    invoke-static {p2, p1, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    :goto_0
    return-void
.end method
