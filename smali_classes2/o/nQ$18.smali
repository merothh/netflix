.class Lo/nQ$18;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nQ;->c(Ljava/lang/String;Lo/nS$ActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/nQ;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lo/nS$ActionBar;


# direct methods
.method constructor <init>(Lo/nQ;Ljava/lang/String;Lo/nS$ActionBar;)V
    .locals 0

    .line 1229
    iput-object p1, p0, Lo/nQ$18;->a:Lo/nQ;

    iput-object p2, p0, Lo/nQ$18;->c:Ljava/lang/String;

    iput-object p3, p0, Lo/nQ$18;->d:Lo/nS$ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1232
    iget-object v0, p0, Lo/nQ$18;->c:Ljava/lang/String;

    iget-object v1, p0, Lo/nQ$18;->a:Lo/nQ;

    invoke-static {v1}, Lo/nQ;->f(Lo/nQ;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lo/nT;->a(Ljava/lang/String;Ljava/util/List;)Lo/ov;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1234
    iget-object v0, p0, Lo/nQ$18;->a:Lo/nQ;

    iget-object v1, p0, Lo/nQ$18;->c:Ljava/lang/String;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->bd:Lcom/netflix/mediaclient/StatusCode;

    iget-object v3, p0, Lo/nQ$18;->d:Lo/nS$ActionBar;

    invoke-static {v0, v1, v2, v3}, Lo/nQ;->e(Lo/nQ;Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Lo/nS$ActionBar;)V

    return-void

    .line 1237
    :cond_0
    iget-object v1, p0, Lo/nQ$18;->d:Lo/nS$ActionBar;

    invoke-interface {v0, v1}, Lo/ov;->c(Lo/nS$ActionBar;)V

    return-void
.end method
