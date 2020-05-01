.class public final Lo/ServiceConnectionLeakedViolation$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ServiceConnectionLeakedViolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method public static b(Lo/ServiceConnectionLeakedViolation;JJLo/ServiceConnectionLeakedViolation$Activity;)V
    .locals 0

    if-eqz p5, :cond_0

    .line 42
    invoke-interface {p5}, Lo/ServiceConnectionLeakedViolation$Activity;->c()V

    .line 43
    invoke-interface {p5}, Lo/ServiceConnectionLeakedViolation$Activity;->b()V

    .line 45
    :cond_0
    invoke-interface {p0}, Lo/ServiceConnectionLeakedViolation;->a()V

    if-eqz p5, :cond_1

    .line 47
    invoke-interface {p5}, Lo/ServiceConnectionLeakedViolation$Activity;->d()V

    .line 48
    invoke-interface {p5}, Lo/ServiceConnectionLeakedViolation$Activity;->e()V

    .line 50
    :cond_1
    invoke-interface {p0, p1, p2, p3, p4}, Lo/ServiceConnectionLeakedViolation;->b(JJ)I

    move-result p3

    if-eqz p5, :cond_2

    .line 52
    invoke-interface {p5, p3}, Lo/ServiceConnectionLeakedViolation$Activity;->c(I)V

    .line 53
    invoke-interface {p5}, Lo/ServiceConnectionLeakedViolation$Activity;->g()V

    .line 55
    :cond_2
    invoke-interface {p0, p1, p2}, Lo/ServiceConnectionLeakedViolation;->b(J)I

    move-result p1

    if-eqz p5, :cond_3

    .line 57
    invoke-interface {p5, p1}, Lo/ServiceConnectionLeakedViolation$Activity;->e(I)V

    .line 58
    invoke-interface {p5}, Lo/ServiceConnectionLeakedViolation$Activity;->b()V

    .line 60
    :cond_3
    invoke-interface {p0}, Lo/ServiceConnectionLeakedViolation;->a()V

    if-eqz p5, :cond_4

    .line 62
    invoke-interface {p5}, Lo/ServiceConnectionLeakedViolation$Activity;->d()V

    .line 63
    invoke-interface {p5}, Lo/ServiceConnectionLeakedViolation$Activity;->a()V

    :cond_4
    return-void
.end method
