.class Lo/abu$Application$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abu$Application;->notifyReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/abu$Application;


# direct methods
.method constructor <init>(Lo/abu$Application;)V
    .locals 0

    .line 703
    iput-object p1, p0, Lo/abu$Application$5;->d:Lo/abu$Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 706
    iget-object v0, p0, Lo/abu$Application$5;->d:Lo/abu$Application;

    iget-object v0, v0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {v0}, Lo/abu;->e(Lo/abu;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    iget-object v0, p0, Lo/abu$Application$5;->d:Lo/abu$Application;

    iget-object v0, v0, Lo/abu$Application;->b:Lo/abu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/abu;->c(Z)V

    .line 708
    iget-object v0, p0, Lo/abu$Application$5;->d:Lo/abu$Application;

    iget-object v0, v0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {v0, v1}, Lo/abu;->b(Lo/abu;Z)Z

    :cond_0
    return-void
.end method
