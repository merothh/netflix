.class Lo/nQ$16$3;
.super Lo/nS$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nQ$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/ov;

.field final synthetic d:Lo/nQ$16;


# direct methods
.method constructor <init>(Lo/nQ$16;Lo/ov;)V
    .locals 0

    .line 1081
    iput-object p1, p0, Lo/nQ$16$3;->d:Lo/nQ$16;

    iput-object p2, p0, Lo/nQ$16$3;->a:Lo/ov;

    invoke-direct {p0}, Lo/nS$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 1084
    iget-object v0, p0, Lo/nQ$16$3;->a:Lo/ov;

    invoke-interface {v0}, Lo/ov;->e()Lo/oC;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/oC;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1085
    iget-object v0, p0, Lo/nQ$16$3;->d:Lo/nQ$16;

    iget-object v0, v0, Lo/nQ$16;->e:Lo/nQ;

    iget-object v1, p0, Lo/nQ$16$3;->d:Lo/nQ$16;

    iget-object v1, v1, Lo/nQ$16;->e:Lo/nQ;

    invoke-virtual {v1}, Lo/nQ;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lo/nQ;->e(Lo/nQ;Landroid/content/Context;)V

    .line 1086
    iget-object v0, p0, Lo/nQ$16$3;->d:Lo/nQ$16;

    iget-object v0, v0, Lo/nQ$16;->e:Lo/nQ;

    iget-object v1, p0, Lo/nQ$16$3;->a:Lo/ov;

    invoke-static {v0, v1, p1}, Lo/nQ;->a(Lo/nQ;Lo/ov;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
