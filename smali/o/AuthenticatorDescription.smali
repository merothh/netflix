.class public Lo/AuthenticatorDescription;
.super Lo/AuthenticatorException;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/AuthenticatorException<",
        "Ljava/lang/Integer;",
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
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Lo/AuthenticatorException;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method a(Lo/ActivityView;F)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActivityView<",
            "Ljava/lang/Integer;",
            ">;F)I"
        }
    .end annotation

    .line 23
    iget-object v0, p1, Lo/ActivityView;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lo/ActivityView;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lo/AuthenticatorDescription;->d:Lo/AlarmManager;

    if-eqz v0, :cond_0

    .line 29
    iget-object v1, p0, Lo/AuthenticatorDescription;->d:Lo/AlarmManager;

    iget v2, p1, Lo/ActivityView;->a:F

    iget-object v0, p1, Lo/ActivityView;->e:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p1, Lo/ActivityView;->d:Ljava/lang/Object;

    iget-object v5, p1, Lo/ActivityView;->b:Ljava/lang/Object;

    .line 31
    invoke-virtual {p0}, Lo/AuthenticatorDescription;->a()F

    move-result v7

    invoke-virtual {p0}, Lo/AuthenticatorDescription;->i()F

    move-result v8

    move v6, p2

    .line 29
    invoke-virtual/range {v1 .. v8}, Lo/AlarmManager;->c(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 37
    :cond_0
    invoke-virtual {p1}, Lo/ActivityView;->h()I

    move-result v0

    invoke-virtual {p1}, Lo/ActivityView;->g()I

    move-result p1

    invoke-static {v0, p1, p2}, Lo/ActivityManagerInternal;->e(IIF)I

    move-result p1

    return p1

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic c(Lo/ActivityView;F)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lo/AuthenticatorDescription;->e(Lo/ActivityView;F)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method e(Lo/ActivityView;F)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActivityView<",
            "Ljava/lang/Integer;",
            ">;F)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1, p2}, Lo/AuthenticatorDescription;->a(Lo/ActivityView;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public g()I
    .locals 2

    .line 44
    invoke-virtual {p0}, Lo/AuthenticatorDescription;->e()Lo/ActivityView;

    move-result-object v0

    invoke-virtual {p0}, Lo/AuthenticatorDescription;->b()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lo/AuthenticatorDescription;->a(Lo/ActivityView;F)I

    move-result v0

    return v0
.end method