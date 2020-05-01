.class public Lo/ArithmeticException;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UnicodeScript;


# instance fields
.field private e:Lo/ClassCastException;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lo/ArithmeticException;->e:Lo/ClassCastException;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lo/ArithmeticException;->e:Lo/ClassCastException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 1

    .line 31
    iget-object v0, p0, Lo/ArithmeticException;->e:Lo/ClassCastException;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lo/ClassCastException;

    invoke-direct {v0, p0}, Lo/ClassCastException;-><init>(Lo/UnicodeScript;)V

    iput-object v0, p0, Lo/ArithmeticException;->e:Lo/ClassCastException;

    :cond_0
    return-void
.end method

.method public b(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lo/ArithmeticException;->e:Lo/ClassCastException;

    invoke-virtual {v0, p1}, Lo/ClassCastException;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lo/ArithmeticException;->b()V

    .line 47
    iget-object v0, p0, Lo/ArithmeticException;->e:Lo/ClassCastException;

    return-object v0
.end method
