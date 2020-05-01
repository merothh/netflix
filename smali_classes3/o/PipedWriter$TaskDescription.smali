.class Lo/PipedWriter$TaskDescription;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PipedWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field final synthetic a:Lo/PipedWriter;


# direct methods
.method constructor <init>(Lo/PipedWriter;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lo/PipedWriter$TaskDescription;->a:Lo/PipedWriter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 497
    iget-object v0, p0, Lo/PipedWriter$TaskDescription;->a:Lo/PipedWriter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/PipedWriter;->mDataValid:Z

    .line 498
    invoke-virtual {v0}, Lo/PipedWriter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 503
    iget-object v0, p0, Lo/PipedWriter$TaskDescription;->a:Lo/PipedWriter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/PipedWriter;->mDataValid:Z

    .line 504
    invoke-virtual {v0}, Lo/PipedWriter;->notifyDataSetInvalidated()V

    return-void
.end method
