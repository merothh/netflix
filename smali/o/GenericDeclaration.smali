.class public final Lo/GenericDeclaration;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lo/Method;

.field private final c:Lo/Field;


# direct methods
.method private constructor <init>(Lo/Method;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lo/GenericDeclaration;->a:Lo/Method;

    .line 38
    new-instance p1, Lo/Field;

    invoke-direct {p1}, Lo/Field;-><init>()V

    iput-object p1, p0, Lo/GenericDeclaration;->c:Lo/Field;

    return-void
.end method

.method public static b(Lo/Method;)Lo/GenericDeclaration;
    .locals 1

    .line 84
    new-instance v0, Lo/GenericDeclaration;

    invoke-direct {v0, p0}, Lo/GenericDeclaration;-><init>(Lo/Method;)V

    return-object v0
.end method


# virtual methods
.method public c()Lo/Field;
    .locals 1

    .line 46
    iget-object v0, p0, Lo/GenericDeclaration;->c:Lo/Field;

    return-object v0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lo/GenericDeclaration;->c:Lo/Field;

    invoke-virtual {v0, p1}, Lo/Field;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 3

    .line 56
    iget-object v0, p0, Lo/GenericDeclaration;->a:Lo/Method;

    invoke-interface {v0}, Lo/Method;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->d()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v1, v2, :cond_0

    .line 61
    new-instance v1, Landroidx/savedstate/Recreator;

    iget-object v2, p0, Lo/GenericDeclaration;->a:Lo/Method;

    invoke-direct {v1, v2}, Landroidx/savedstate/Recreator;-><init>(Lo/Method;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Lo/ClassCircularityError;)V

    .line 62
    iget-object v1, p0, Lo/GenericDeclaration;->c:Lo/Field;

    invoke-virtual {v1, v0, p1}, Lo/Field;->c(Landroidx/lifecycle/Lifecycle;Landroid/os/Bundle;)V

    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Restarter must be created only during owner\'s initialization stage"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
