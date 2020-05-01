.class final Lo/xQ$3;
.super Lo/xQ$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/xQ;->a(Landroid/content/Context;Lo/xQ$ActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/xQ$ActionBar;


# direct methods
.method constructor <init>(Lo/aeL;Lo/xQ$ActionBar;Lo/xQ$ActionBar;)V
    .locals 0

    .line 42
    iput-object p3, p0, Lo/xQ$3;->a:Lo/xQ$ActionBar;

    invoke-direct {p0, p1, p2}, Lo/xQ$StateListAnimator;-><init>(Lo/aeL;Lo/xQ$ActionBar;)V

    return-void
.end method


# virtual methods
.method public d([Lo/aeL$StateListAnimator;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 46
    array-length v0, p1

    if-lez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lo/xQ$3;->a()Lo/aeL;

    move-result-object v0

    iget-object v1, p0, Lo/xQ$3;->a:Lo/xQ$ActionBar;

    invoke-static {v0, p1, v1}, Lo/xQ;->e(Lo/aeL;[Lo/aeL$StateListAnimator;Lo/xQ$ActionBar;)V

    goto :goto_0

    :cond_0
    const-string p1, "nf_preapp_dataRepo"

    const-string v0, "No saved preAppData found."

    .line 49
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0}, Lo/xQ$3;->b()Lo/xQ$ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/xQ$ActionBar;->c(Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    :goto_0
    return-void
.end method
