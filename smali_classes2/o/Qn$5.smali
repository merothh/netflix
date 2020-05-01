.class Lo/Qn$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Qn;-><init>(Landroid/os/Handler;Landroid/content/Context;Lo/Ac;ZLo/nS;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Qn;


# direct methods
.method constructor <init>(Lo/Qn;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lo/Qn$5;->b:Lo/Qn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 143
    :try_start_0
    iget-object v0, p0, Lo/Qn$5;->b:Lo/Qn;

    iget-object v1, p0, Lo/Qn$5;->b:Lo/Qn;

    iget-object v1, v1, Lo/Qn;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v0, v1}, Lo/Qn;->d(Lo/Qn;I)I

    .line 144
    iget-object v0, p0, Lo/Qn$5;->b:Lo/Qn;

    iget-object v1, p0, Lo/Qn$5;->b:Lo/Qn;

    iget-object v1, v1, Lo/Qn;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v0, v1}, Lo/Qn;->b(Lo/Qn;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 146
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    .line 148
    :goto_0
    iget-object v0, p0, Lo/Qn$5;->b:Lo/Qn;

    invoke-static {v0}, Lo/Qn;->d(Lo/Qn;)Lo/nS;

    move-result-object v0

    iget-object v1, p0, Lo/Qn$5;->b:Lo/Qn;

    invoke-interface {v0, v1}, Lo/nS;->e(Lo/nV;)V

    return-void
.end method
