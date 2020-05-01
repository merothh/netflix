.class public Lo/ClickableSpan;
.super Ljava/lang/Object;
.source ""


# instance fields
.field b:[Landroidx/constraintlayout/solver/SolverVariable;

.field c:Lo/SizeF$TaskDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SizeF$TaskDescription<",
            "Landroidx/constraintlayout/solver/SolverVariable;",
            ">;"
        }
    .end annotation
.end field

.field e:Lo/SizeF$TaskDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SizeF$TaskDescription<",
            "Lo/UpdateAppearance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lo/SizeF$Application;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lo/SizeF$Application;-><init>(I)V

    iput-object v0, p0, Lo/ClickableSpan;->e:Lo/SizeF$TaskDescription;

    .line 23
    new-instance v0, Lo/SizeF$Application;

    invoke-direct {v0, v1}, Lo/SizeF$Application;-><init>(I)V

    iput-object v0, p0, Lo/ClickableSpan;->c:Lo/SizeF$TaskDescription;

    const/16 v0, 0x20

    new-array v0, v0, [Landroidx/constraintlayout/solver/SolverVariable;

    .line 24
    iput-object v0, p0, Lo/ClickableSpan;->b:[Landroidx/constraintlayout/solver/SolverVariable;

    return-void
.end method
