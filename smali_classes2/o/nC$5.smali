.class Lo/nC$5;
.super Lo/JsPromptResult;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/nC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/nC;


# direct methods
.method constructor <init>(Lo/nC;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lo/nC$5;->c:Lo/nC;

    invoke-direct {p0}, Lo/JsPromptResult;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/Plugin;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "nf_probe"

    const-string p2, "onForeground - start probe if needed"

    .line 438
    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object p1, p0, Lo/nC$5;->c:Lo/nC;

    invoke-static {p1}, Lo/nC;->a(Lo/nC;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 440
    iget-object p1, p0, Lo/nC$5;->c:Lo/nC;

    invoke-static {p1}, Lo/nC;->e(Lo/nC;)V

    .line 441
    iget-object p1, p0, Lo/nC$5;->c:Lo/nC;

    invoke-static {p1}, Lo/nC;->d(Lo/nC;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x1008

    invoke-static {}, Lo/nC;->a()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
