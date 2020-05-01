.class public abstract Lo/AccountManagerInternal;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AccountManagerInternal$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:F

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lo/ActivityView<",
            "TK;>;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AccountManagerInternal$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lo/AlarmManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AlarmManager<",
            "TA;>;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Lo/ActivityView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ActivityView<",
            "TK;>;"
        }
    .end annotation
.end field

.field private g:F

.field private h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private i:F

.field private j:Lo/ActivityView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ActivityView<",
            "TK;>;"
        }
    .end annotation
.end field

.field private o:F


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/ActivityView<",
            "TK;>;>;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/AccountManagerInternal;->c:Ljava/util/List;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lo/AccountManagerInternal;->e:Z

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lo/AccountManagerInternal;->a:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 35
    iput v0, p0, Lo/AccountManagerInternal;->i:F

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lo/AccountManagerInternal;->h:Ljava/lang/Object;

    .line 38
    iput v0, p0, Lo/AccountManagerInternal;->g:F

    .line 39
    iput v0, p0, Lo/AccountManagerInternal;->o:F

    .line 42
    iput-object p1, p0, Lo/AccountManagerInternal;->b:Ljava/util/List;

    return-void
.end method

.method private f()F
    .locals 2

    .line 136
    iget v0, p0, Lo/AccountManagerInternal;->g:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lo/AccountManagerInternal;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/AccountManagerInternal;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ActivityView;

    invoke-virtual {v0}, Lo/ActivityView;->e()F

    move-result v0

    :goto_0
    iput v0, p0, Lo/AccountManagerInternal;->g:F

    .line 139
    :cond_1
    iget v0, p0, Lo/AccountManagerInternal;->g:F

    return v0
.end method


# virtual methods
.method a()F
    .locals 3

    .line 108
    iget-boolean v0, p0, Lo/AccountManagerInternal;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 112
    :cond_0
    invoke-virtual {p0}, Lo/AccountManagerInternal;->e()Lo/ActivityView;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lo/ActivityView;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 116
    :cond_1
    iget v1, p0, Lo/AccountManagerInternal;->a:F

    invoke-virtual {v0}, Lo/ActivityView;->e()F

    move-result v2

    sub-float/2addr v1, v2

    .line 117
    invoke-virtual {v0}, Lo/ActivityView;->d()F

    move-result v2

    invoke-virtual {v0}, Lo/ActivityView;->e()F

    move-result v0

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    return v1
.end method

.method protected b()F
    .locals 2

    .line 126
    invoke-virtual {p0}, Lo/AccountManagerInternal;->e()Lo/ActivityView;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lo/ActivityView;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 131
    :cond_0
    iget-object v0, v0, Lo/ActivityView;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lo/AccountManagerInternal;->a()F

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method abstract c(Lo/ActivityView;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActivityView<",
            "TK;>;F)TA;"
        }
    .end annotation
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lo/AccountManagerInternal;->e:Z

    return-void
.end method

.method public c(F)V
    .locals 2

    .line 54
    iget-object v0, p0, Lo/AccountManagerInternal;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Lo/AccountManagerInternal;->e()Lo/ActivityView;

    move-result-object v0

    .line 60
    invoke-direct {p0}, Lo/AccountManagerInternal;->f()F

    move-result v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 61
    invoke-direct {p0}, Lo/AccountManagerInternal;->f()F

    move-result p1

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lo/AccountManagerInternal;->h()F

    move-result v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    .line 63
    invoke-virtual {p0}, Lo/AccountManagerInternal;->h()F

    move-result p1

    .line 66
    :cond_2
    :goto_0
    iget v1, p0, Lo/AccountManagerInternal;->a:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_3

    return-void

    .line 69
    :cond_3
    iput p1, p0, Lo/AccountManagerInternal;->a:F

    .line 71
    invoke-virtual {p0}, Lo/AccountManagerInternal;->e()Lo/ActivityView;

    move-result-object p1

    if-ne v0, p1, :cond_4

    .line 73
    invoke-virtual {p1}, Lo/ActivityView;->a()Z

    move-result p1

    if-nez p1, :cond_5

    .line 74
    :cond_4
    invoke-virtual {p0}, Lo/AccountManagerInternal;->d()V

    :cond_5
    return-void
.end method

.method public c(Lo/AlarmManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AlarmManager<",
            "TA;>;)V"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lo/AccountManagerInternal;->d:Lo/AlarmManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 171
    invoke-virtual {v0, v1}, Lo/AlarmManager;->e(Lo/AccountManagerInternal;)V

    .line 173
    :cond_0
    iput-object p1, p0, Lo/AccountManagerInternal;->d:Lo/AlarmManager;

    if-eqz p1, :cond_1

    .line 175
    invoke-virtual {p1, p0}, Lo/AlarmManager;->e(Lo/AccountManagerInternal;)V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    .line 79
    :goto_0
    iget-object v1, p0, Lo/AccountManagerInternal;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 80
    iget-object v1, p0, Lo/AccountManagerInternal;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AccountManagerInternal$ActionBar;

    invoke-interface {v1}, Lo/AccountManagerInternal$ActionBar;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Lo/AccountManagerInternal$ActionBar;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lo/AccountManagerInternal;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected e()Lo/ActivityView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/ActivityView<",
            "TK;>;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lo/AccountManagerInternal;->f:Lo/ActivityView;

    if-eqz v0, :cond_0

    iget v1, p0, Lo/AccountManagerInternal;->a:F

    invoke-virtual {v0, v1}, Lo/ActivityView;->e(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lo/AccountManagerInternal;->f:Lo/ActivityView;

    return-object v0

    .line 89
    :cond_0
    iget-object v0, p0, Lo/AccountManagerInternal;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ActivityView;

    .line 90
    iget v1, p0, Lo/AccountManagerInternal;->a:F

    invoke-virtual {v0}, Lo/ActivityView;->e()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 91
    iget-object v1, p0, Lo/AccountManagerInternal;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 92
    iget-object v0, p0, Lo/AccountManagerInternal;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ActivityView;

    .line 93
    iget v2, p0, Lo/AccountManagerInternal;->a:F

    invoke-virtual {v0, v2}, Lo/ActivityView;->e(F)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 99
    :cond_2
    :goto_1
    iput-object v0, p0, Lo/AccountManagerInternal;->f:Lo/ActivityView;

    return-object v0
.end method

.method h()F
    .locals 2

    .line 144
    iget v0, p0, Lo/AccountManagerInternal;->o:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lo/AccountManagerInternal;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/AccountManagerInternal;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ActivityView;

    invoke-virtual {v0}, Lo/ActivityView;->d()F

    move-result v0

    :goto_0
    iput v0, p0, Lo/AccountManagerInternal;->o:F

    .line 147
    :cond_1
    iget v0, p0, Lo/AccountManagerInternal;->o:F

    return v0
.end method

.method public i()F
    .locals 1

    .line 166
    iget v0, p0, Lo/AccountManagerInternal;->a:F

    return v0
.end method

.method public j()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lo/AccountManagerInternal;->e()Lo/ActivityView;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Lo/AccountManagerInternal;->b()F

    move-result v1

    .line 153
    iget-object v2, p0, Lo/AccountManagerInternal;->d:Lo/AlarmManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lo/AccountManagerInternal;->j:Lo/ActivityView;

    if-ne v0, v2, :cond_0

    iget v2, p0, Lo/AccountManagerInternal;->i:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    .line 154
    iget-object v0, p0, Lo/AccountManagerInternal;->h:Ljava/lang/Object;

    return-object v0

    .line 157
    :cond_0
    iput-object v0, p0, Lo/AccountManagerInternal;->j:Lo/ActivityView;

    .line 158
    iput v1, p0, Lo/AccountManagerInternal;->i:F

    .line 159
    invoke-virtual {p0, v0, v1}, Lo/AccountManagerInternal;->c(Lo/ActivityView;F)Ljava/lang/Object;

    move-result-object v0

    .line 160
    iput-object v0, p0, Lo/AccountManagerInternal;->h:Ljava/lang/Object;

    return-object v0
.end method
