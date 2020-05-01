.class Lo/PipModeChangeItem$TaskDescription$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InstantAppRequest$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PipModeChangeItem$TaskDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/InstantAppRequest$ActionBar<",
        "Lo/PendingTransactionActions<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/PipModeChangeItem$TaskDescription;


# direct methods
.method constructor <init>(Lo/PipModeChangeItem$TaskDescription;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lo/PipModeChangeItem$TaskDescription$4;->c:Lo/PipModeChangeItem$TaskDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .line 463
    invoke-virtual {p0}, Lo/PipModeChangeItem$TaskDescription$4;->e()Lo/PendingTransactionActions;

    move-result-object v0

    return-object v0
.end method

.method public e()Lo/PendingTransactionActions;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/PendingTransactionActions<",
            "*>;"
        }
    .end annotation

    .line 466
    new-instance v7, Lo/PendingTransactionActions;

    iget-object v0, p0, Lo/PipModeChangeItem$TaskDescription$4;->c:Lo/PipModeChangeItem$TaskDescription;

    iget-object v1, v0, Lo/PipModeChangeItem$TaskDescription;->a:Lo/AppWidgetManagerInternal;

    iget-object v0, p0, Lo/PipModeChangeItem$TaskDescription$4;->c:Lo/PipModeChangeItem$TaskDescription;

    iget-object v2, v0, Lo/PipModeChangeItem$TaskDescription;->d:Lo/AppWidgetManagerInternal;

    iget-object v0, p0, Lo/PipModeChangeItem$TaskDescription$4;->c:Lo/PipModeChangeItem$TaskDescription;

    iget-object v3, v0, Lo/PipModeChangeItem$TaskDescription;->e:Lo/AppWidgetManagerInternal;

    iget-object v0, p0, Lo/PipModeChangeItem$TaskDescription$4;->c:Lo/PipModeChangeItem$TaskDescription;

    iget-object v4, v0, Lo/PipModeChangeItem$TaskDescription;->b:Lo/AppWidgetManagerInternal;

    iget-object v0, p0, Lo/PipModeChangeItem$TaskDescription$4;->c:Lo/PipModeChangeItem$TaskDescription;

    iget-object v5, v0, Lo/PipModeChangeItem$TaskDescription;->c:Lo/ResumeActivityItem;

    iget-object v0, p0, Lo/PipModeChangeItem$TaskDescription$4;->c:Lo/PipModeChangeItem$TaskDescription;

    iget-object v6, v0, Lo/PipModeChangeItem$TaskDescription;->j:Lo/CharArrayReader$Activity;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lo/PendingTransactionActions;-><init>(Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/ResumeActivityItem;Lo/CharArrayReader$Activity;)V

    return-object v7
.end method
