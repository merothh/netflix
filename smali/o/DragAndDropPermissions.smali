.class public Lo/DragAndDropPermissions;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DragAndDropPermissions$StateListAnimator;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/DragAndDropPermissions$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 5

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/DragAndDropPermissions;->b:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()I

    move-result v0

    iput v0, p0, Lo/DragAndDropPermissions;->d:I

    .line 93
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p()I

    move-result v0

    iput v0, p0, Lo/DragAndDropPermissions;->e:I

    .line 94
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t()I

    move-result v0

    iput v0, p0, Lo/DragAndDropPermissions;->c:I

    .line 95
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s()I

    move-result v0

    iput v0, p0, Lo/DragAndDropPermissions;->a:I

    .line 96
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z()Ljava/util/ArrayList;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 98
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 99
    iget-object v3, p0, Lo/DragAndDropPermissions;->b:Ljava/util/ArrayList;

    new-instance v4, Lo/DragAndDropPermissions$StateListAnimator;

    invoke-direct {v4, v2}, Lo/DragAndDropPermissions$StateListAnimator;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public b(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 3

    .line 109
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()I

    move-result v0

    iput v0, p0, Lo/DragAndDropPermissions;->d:I

    .line 110
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p()I

    move-result v0

    iput v0, p0, Lo/DragAndDropPermissions;->e:I

    .line 111
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t()I

    move-result v0

    iput v0, p0, Lo/DragAndDropPermissions;->c:I

    .line 112
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s()I

    move-result v0

    iput v0, p0, Lo/DragAndDropPermissions;->a:I

    .line 113
    iget-object v0, p0, Lo/DragAndDropPermissions;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 115
    iget-object v2, p0, Lo/DragAndDropPermissions;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/DragAndDropPermissions$StateListAnimator;

    .line 116
    invoke-virtual {v2, p1}, Lo/DragAndDropPermissions$StateListAnimator;->d(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 3

    .line 126
    iget v0, p0, Lo/DragAndDropPermissions;->d:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g(I)V

    .line 127
    iget v0, p0, Lo/DragAndDropPermissions;->e:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(I)V

    .line 128
    iget v0, p0, Lo/DragAndDropPermissions;->c:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h(I)V

    .line 129
    iget v0, p0, Lo/DragAndDropPermissions;->a:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k(I)V

    .line 130
    iget-object v0, p0, Lo/DragAndDropPermissions;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 131
    iget-object v2, p0, Lo/DragAndDropPermissions;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/DragAndDropPermissions$StateListAnimator;

    .line 132
    invoke-virtual {v2, p1}, Lo/DragAndDropPermissions$StateListAnimator;->b(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
