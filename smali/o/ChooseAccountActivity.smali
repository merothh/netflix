.class public Lo/ChooseAccountActivity;
.super Lo/AuthenticatorException;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/AuthenticatorException<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ActivityView<",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Lo/AuthenticatorException;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method a(Lo/ActivityView;F)Ljava/lang/Float;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActivityView<",
            "Ljava/lang/Float;",
            ">;F)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2}, Lo/ChooseAccountActivity;->d(Lo/ActivityView;F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method synthetic c(Lo/ActivityView;F)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lo/ChooseAccountActivity;->a(Lo/ActivityView;F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method d(Lo/ActivityView;F)F
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActivityView<",
            "Ljava/lang/Float;",
            ">;F)F"
        }
    .end annotation

    .line 22
    iget-object v0, p1, Lo/ActivityView;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lo/ActivityView;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lo/ChooseAccountActivity;->d:Lo/AlarmManager;

    if-eqz v0, :cond_0

    .line 28
    iget-object v1, p0, Lo/ChooseAccountActivity;->d:Lo/AlarmManager;

    iget v2, p1, Lo/ActivityView;->a:F

    iget-object v0, p1, Lo/ActivityView;->e:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p1, Lo/ActivityView;->d:Ljava/lang/Object;

    iget-object v5, p1, Lo/ActivityView;->b:Ljava/lang/Object;

    .line 30
    invoke-virtual {p0}, Lo/ChooseAccountActivity;->a()F

    move-result v7

    invoke-virtual {p0}, Lo/ChooseAccountActivity;->i()F

    move-result v8

    move v6, p2

    .line 28
    invoke-virtual/range {v1 .. v8}, Lo/AlarmManager;->c(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 36
    :cond_0
    invoke-virtual {p1}, Lo/ActivityView;->j()F

    move-result v0

    invoke-virtual {p1}, Lo/ActivityView;->i()F

    move-result p1

    invoke-static {v0, p1, p2}, Lo/ActivityManagerInternal;->a(FFF)F

    move-result p1

    return p1

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g()F
    .locals 2

    .line 43
    invoke-virtual {p0}, Lo/ChooseAccountActivity;->e()Lo/ActivityView;

    move-result-object v0

    invoke-virtual {p0}, Lo/ChooseAccountActivity;->b()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lo/ChooseAccountActivity;->d(Lo/ActivityView;F)F

    move-result v0

    return v0
.end method
