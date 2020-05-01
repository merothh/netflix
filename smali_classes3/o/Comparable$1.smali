.class Lo/Comparable$1;
.super Lo/Subset;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Comparable;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Comparable;


# direct methods
.method constructor <init>(Lo/Comparable;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lo/Comparable$1;->c:Lo/Comparable;

    invoke-direct {p0}, Lo/Subset;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 161
    invoke-static {p1}, Lo/Compiler;->e(Landroid/app/Activity;)Lo/Compiler;

    move-result-object p1

    iget-object p2, p0, Lo/Comparable$1;->c:Lo/Comparable;

    iget-object p2, p2, Lo/Comparable;->a:Lo/Compiler$Activity;

    invoke-virtual {p1, p2}, Lo/Compiler;->c(Lo/Compiler$Activity;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 166
    iget-object p1, p0, Lo/Comparable$1;->c:Lo/Comparable;

    invoke-virtual {p1}, Lo/Comparable;->d()V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 171
    iget-object p1, p0, Lo/Comparable$1;->c:Lo/Comparable;

    invoke-virtual {p1}, Lo/Comparable;->a()V

    return-void
.end method
