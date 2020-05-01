.class Lo/lg$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/lg;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/lg;


# direct methods
.method constructor <init>(Lo/lg;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lo/lg$3;->a:Lo/lg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 127
    iget-object v0, p0, Lo/lg$3;->a:Lo/lg;

    invoke-static {v0}, Lo/lg;->c(Lo/lg;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MdxStackCaf"

    const-string v1, "enable - haven\'t finished init yet - unable to enable"

    .line 128
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lo/lg$3;->a:Lo/lg;

    invoke-static {v0}, Lo/lg;->d(Lo/lg;)Lo/kN;

    move-result-object v0

    invoke-virtual {v0}, Lo/kN;->a()V

    .line 132
    iget-object v0, p0, Lo/lg$3;->a:Lo/lg;

    invoke-static {v0}, Lo/lg;->g(Lo/lg;)Lo/kJ;

    move-result-object v0

    invoke-virtual {v0}, Lo/kJ;->c()V

    return-void
.end method
