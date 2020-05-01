.class public Lo/AnimatorInflater;
.super Lo/AccountManagerInternal;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Lo/AccountManagerInternal<",
        "TK;TA;>;"
    }
.end annotation


# instance fields
.field private final b:Lo/ActivityTransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ActivityTransitionState<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/AlarmManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AlarmManager<",
            "TA;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lo/AnimatorInflater;-><init>(Lo/AlarmManager;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lo/AlarmManager;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AlarmManager<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/AccountManagerInternal;-><init>(Ljava/util/List;)V

    .line 11
    new-instance v0, Lo/ActivityTransitionState;

    invoke-direct {v0}, Lo/ActivityTransitionState;-><init>()V

    iput-object v0, p0, Lo/AnimatorInflater;->b:Lo/ActivityTransitionState;

    .line 21
    invoke-virtual {p0, p1}, Lo/AnimatorInflater;->c(Lo/AlarmManager;)V

    .line 22
    iput-object p2, p0, Lo/AnimatorInflater;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method c(Lo/ActivityView;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActivityView<",
            "TK;>;F)TA;"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lo/AnimatorInflater;->j()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 1

    .line 34
    iget-object v0, p0, Lo/AnimatorInflater;->d:Lo/AlarmManager;

    if-eqz v0, :cond_0

    .line 35
    invoke-super {p0}, Lo/AccountManagerInternal;->d()V

    :cond_0
    return-void
.end method

.method h()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public j()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lo/AnimatorInflater;->d:Lo/AlarmManager;

    iget-object v4, p0, Lo/AnimatorInflater;->e:Ljava/lang/Object;

    invoke-virtual {p0}, Lo/AnimatorInflater;->i()F

    move-result v5

    invoke-virtual {p0}, Lo/AnimatorInflater;->i()F

    move-result v6

    invoke-virtual {p0}, Lo/AnimatorInflater;->i()F

    move-result v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v4

    invoke-virtual/range {v0 .. v7}, Lo/AlarmManager;->c(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
