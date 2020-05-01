.class Lo/nQ$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nQ;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/nQ;


# direct methods
.method constructor <init>(Lo/nQ;)V
    .locals 0

    .line 1255
    iput-object p1, p0, Lo/nQ$5;->b:Lo/nQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1258
    iget-object v0, p0, Lo/nQ$5;->b:Lo/nQ;

    invoke-static {v0}, Lo/nQ;->g(Lo/nQ;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nf_offlineAgent"

    const-string v1, "saveToRegistry avoiding duplicate save."

    .line 1259
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1262
    :cond_0
    iget-object v0, p0, Lo/nQ$5;->b:Lo/nQ;

    invoke-virtual {v0}, Lo/nQ;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lo/nQ;->e(Lo/nQ;Landroid/content/Context;)V

    .line 1263
    iget-object v0, p0, Lo/nQ$5;->b:Lo/nQ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/nQ;->e(Lo/nQ;Z)Z

    return-void
.end method
