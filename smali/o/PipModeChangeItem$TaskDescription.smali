.class Lo/PipModeChangeItem$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PipModeChangeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation


# instance fields
.field final a:Lo/AppWidgetManagerInternal;

.field final b:Lo/AppWidgetManagerInternal;

.field final c:Lo/ResumeActivityItem;

.field final d:Lo/AppWidgetManagerInternal;

.field final e:Lo/AppWidgetManagerInternal;

.field final j:Lo/CharArrayReader$Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CharArrayReader$Activity<",
            "Lo/PendingTransactionActions<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/ResumeActivityItem;)V
    .locals 2

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    new-instance v0, Lo/PipModeChangeItem$TaskDescription$4;

    invoke-direct {v0, p0}, Lo/PipModeChangeItem$TaskDescription$4;-><init>(Lo/PipModeChangeItem$TaskDescription;)V

    const/16 v1, 0x96

    .line 461
    invoke-static {v1, v0}, Lo/InstantAppRequest;->b(ILo/InstantAppRequest$ActionBar;)Lo/CharArrayReader$Activity;

    move-result-object v0

    iput-object v0, p0, Lo/PipModeChangeItem$TaskDescription;->j:Lo/CharArrayReader$Activity;

    .line 482
    iput-object p1, p0, Lo/PipModeChangeItem$TaskDescription;->a:Lo/AppWidgetManagerInternal;

    .line 483
    iput-object p2, p0, Lo/PipModeChangeItem$TaskDescription;->d:Lo/AppWidgetManagerInternal;

    .line 484
    iput-object p3, p0, Lo/PipModeChangeItem$TaskDescription;->e:Lo/AppWidgetManagerInternal;

    .line 485
    iput-object p4, p0, Lo/PipModeChangeItem$TaskDescription;->b:Lo/AppWidgetManagerInternal;

    .line 486
    iput-object p5, p0, Lo/PipModeChangeItem$TaskDescription;->c:Lo/ResumeActivityItem;

    return-void
.end method


# virtual methods
.method a(Lo/FileBackupHelperBase;ZZZZ)Lo/PendingTransactionActions;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/FileBackupHelperBase;",
            "ZZZZ)",
            "Lo/PendingTransactionActions<",
            "TR;>;"
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lo/PipModeChangeItem$TaskDescription;->j:Lo/CharArrayReader$Activity;

    invoke-interface {v0}, Lo/CharArrayReader$Activity;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/PendingTransactionActions;

    invoke-static {v0}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lo/PendingTransactionActions;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 505
    invoke-virtual/range {v1 .. v6}, Lo/PendingTransactionActions;->d(Lo/FileBackupHelperBase;ZZZZ)Lo/PendingTransactionActions;

    move-result-object p1

    return-object p1
.end method
