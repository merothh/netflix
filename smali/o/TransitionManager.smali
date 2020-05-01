.class public Lo/TransitionManager;
.super Lo/UpdateAppearance;
.source ""


# direct methods
.method public constructor <init>(Lo/ClickableSpan;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lo/UpdateAppearance;-><init>(Lo/ClickableSpan;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Lo/UpdateAppearance;->a(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 30
    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->h:I

    return-void
.end method
