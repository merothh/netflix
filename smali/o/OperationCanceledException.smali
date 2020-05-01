.class public Lo/OperationCanceledException;
.super Lo/AuthenticatorException;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/AuthenticatorException<",
        "Lo/ActivityTransitionCoordinator;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lo/ActivityTransitionCoordinator;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ActivityView<",
            "Lo/ActivityTransitionCoordinator;",
            ">;>;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Lo/AuthenticatorException;-><init>(Ljava/util/List;)V

    .line 11
    new-instance p1, Lo/ActivityTransitionCoordinator;

    invoke-direct {p1}, Lo/ActivityTransitionCoordinator;-><init>()V

    iput-object p1, p0, Lo/OperationCanceledException;->b:Lo/ActivityTransitionCoordinator;

    return-void
.end method


# virtual methods
.method public b(Lo/ActivityView;F)Lo/ActivityTransitionCoordinator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActivityView<",
            "Lo/ActivityTransitionCoordinator;",
            ">;F)",
            "Lo/ActivityTransitionCoordinator;"
        }
    .end annotation

    .line 18
    iget-object v0, p1, Lo/ActivityView;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lo/ActivityView;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p1, Lo/ActivityView;->d:Ljava/lang/Object;

    check-cast v0, Lo/ActivityTransitionCoordinator;

    .line 22
    iget-object v1, p1, Lo/ActivityView;->b:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Lo/ActivityTransitionCoordinator;

    .line 24
    iget-object v1, p0, Lo/OperationCanceledException;->d:Lo/AlarmManager;

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lo/OperationCanceledException;->d:Lo/AlarmManager;

    iget v2, p1, Lo/ActivityView;->a:F

    iget-object p1, p1, Lo/ActivityView;->e:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 28
    invoke-virtual {p0}, Lo/OperationCanceledException;->a()F

    move-result v7

    invoke-virtual {p0}, Lo/OperationCanceledException;->i()F

    move-result v8

    move-object v4, v0

    move-object v5, v9

    move v6, p2

    .line 26
    invoke-virtual/range {v1 .. v8}, Lo/AlarmManager;->c(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ActivityTransitionCoordinator;

    if-eqz p1, :cond_0

    return-object p1

    .line 34
    :cond_0
    iget-object p1, p0, Lo/OperationCanceledException;->b:Lo/ActivityTransitionCoordinator;

    .line 35
    invoke-virtual {v0}, Lo/ActivityTransitionCoordinator;->a()F

    move-result v1

    invoke-virtual {v9}, Lo/ActivityTransitionCoordinator;->a()F

    move-result v2

    invoke-static {v1, v2, p2}, Lo/ActivityManagerInternal;->a(FFF)F

    move-result v1

    .line 36
    invoke-virtual {v0}, Lo/ActivityTransitionCoordinator;->d()F

    move-result v0

    invoke-virtual {v9}, Lo/ActivityTransitionCoordinator;->d()F

    move-result v2

    invoke-static {v0, v2, p2}, Lo/ActivityManagerInternal;->a(FFF)F

    move-result p2

    .line 34
    invoke-virtual {p1, v1, p2}, Lo/ActivityTransitionCoordinator;->e(FF)V

    .line 38
    iget-object p1, p0, Lo/OperationCanceledException;->b:Lo/ActivityTransitionCoordinator;

    return-object p1

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic c(Lo/ActivityView;F)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lo/OperationCanceledException;->b(Lo/ActivityView;F)Lo/ActivityTransitionCoordinator;

    move-result-object p1

    return-object p1
.end method
