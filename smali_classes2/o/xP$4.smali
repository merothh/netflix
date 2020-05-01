.class Lo/xP$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/xP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/xP;


# direct methods
.method constructor <init>(Lo/xP;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lo/xP$4;->b:Lo/xP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "nf_preappagent"

    const-string v1, "inform prefetch done via runnable"

    .line 275
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lo/xP$4;->b:Lo/xP;

    invoke-virtual {v0}, Lo/xP;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lo/xP$4;->b:Lo/xP;

    invoke-virtual {v0}, Lo/xP;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/ia;->d(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
