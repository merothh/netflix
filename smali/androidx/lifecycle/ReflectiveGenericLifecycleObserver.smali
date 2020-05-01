.class public Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Class;


# instance fields
.field private final a:Lo/BootstrapMethodError$Application;

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->b:Ljava/lang/Object;

    .line 31
    sget-object p1, Lo/BootstrapMethodError;->e:Lo/BootstrapMethodError;

    iget-object v0, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/BootstrapMethodError;->c(Ljava/lang/Class;)Lo/BootstrapMethodError$Application;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->a:Lo/BootstrapMethodError$Application;

    return-void
.end method


# virtual methods
.method public e(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    .line 36
    iget-object v0, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->a:Lo/BootstrapMethodError$Application;

    iget-object v1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2, v1}, Lo/BootstrapMethodError$Application;->b(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V

    return-void
.end method
