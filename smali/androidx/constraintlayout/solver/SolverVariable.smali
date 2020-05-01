.class public Landroidx/constraintlayout/solver/SolverVariable;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/SolverVariable$Type;
    }
.end annotation


# static fields
.field private static g:I = 0x1

.field private static l:I = 0x1

.field private static m:I = 0x1

.field private static n:I = 0x1

.field private static o:I = 0x1


# instance fields
.field public a:I

.field public b:I

.field public c:[F

.field public d:F

.field public e:I

.field f:[Lo/UpdateAppearance;

.field public h:I

.field public i:Landroidx/constraintlayout/solver/SolverVariable$Type;

.field j:I

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    .line 49
    iput p2, p0, Landroidx/constraintlayout/solver/SolverVariable;->e:I

    .line 50
    iput p2, p0, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    const/4 p2, 0x0

    .line 51
    iput p2, p0, Landroidx/constraintlayout/solver/SolverVariable;->a:I

    const/4 v0, 0x7

    new-array v0, v0, [F

    .line 55
    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->c:[F

    const/16 v0, 0x8

    new-array v0, v0, [Lo/UpdateAppearance;

    .line 58
    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->f:[Lo/UpdateAppearance;

    .line 59
    iput p2, p0, Landroidx/constraintlayout/solver/SolverVariable;->j:I

    .line 60
    iput p2, p0, Landroidx/constraintlayout/solver/SolverVariable;->h:I

    .line 120
    iput-object p1, p0, Landroidx/constraintlayout/solver/SolverVariable;->i:Landroidx/constraintlayout/solver/SolverVariable$Type;

    return-void
.end method

.method public static e()V
    .locals 1

    .line 89
    sget v0, Landroidx/constraintlayout/solver/SolverVariable;->o:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroidx/constraintlayout/solver/SolverVariable;->o:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Landroidx/constraintlayout/solver/SolverVariable;->i:Landroidx/constraintlayout/solver/SolverVariable$Type;

    return-void
.end method

.method public final a(Lo/UpdateAppearance;)V
    .locals 3

    const/4 v0, 0x0

    .line 163
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->j:I

    if-ge v0, v1, :cond_1

    .line 164
    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->f:[Lo/UpdateAppearance;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->f:[Lo/UpdateAppearance;

    array-length v2, v0

    if-lt v1, v2, :cond_2

    .line 169
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/UpdateAppearance;

    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->f:[Lo/UpdateAppearance;

    .line 171
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->f:[Lo/UpdateAppearance;

    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->j:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 172
    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->j:I

    return-void
.end method

.method public final b(Lo/UpdateAppearance;)V
    .locals 5

    .line 176
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->j:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 178
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariable;->f:[Lo/UpdateAppearance;

    aget-object v3, v3, v2

    if-ne v3, p1, :cond_1

    :goto_1
    sub-int p1, v0, v2

    add-int/lit8 p1, p1, -0x1

    if-ge v1, p1, :cond_0

    .line 180
    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariable;->f:[Lo/UpdateAppearance;

    add-int v3, v2, v1

    add-int/lit8 v4, v3, 0x1

    aget-object v4, p1, v4

    aput-object v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 182
    :cond_0
    iget p1, p0, Landroidx/constraintlayout/solver/SolverVariable;->j:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/constraintlayout/solver/SolverVariable;->j:I

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->k:Ljava/lang/String;

    .line 198
    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->b:Landroidx/constraintlayout/solver/SolverVariable$Type;

    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->i:Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v0, 0x0

    .line 199
    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->a:I

    const/4 v1, -0x1

    .line 200
    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->e:I

    .line 201
    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    const/4 v1, 0x0

    .line 202
    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->d:F

    .line 203
    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->j:I

    .line 204
    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->h:I

    return-void
.end method

.method public final d(Lo/UpdateAppearance;)V
    .locals 5

    .line 189
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->j:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 191
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariable;->f:[Lo/UpdateAppearance;

    aget-object v3, v3, v2

    iget-object v3, v3, Lo/UpdateAppearance;->a:Lo/MovementMethod;

    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariable;->f:[Lo/UpdateAppearance;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4, p1, v1}, Lo/MovementMethod;->e(Lo/UpdateAppearance;Lo/UpdateAppearance;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_0
    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->j:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
