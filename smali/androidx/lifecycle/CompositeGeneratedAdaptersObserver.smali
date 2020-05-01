.class public Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Class;


# instance fields
.field private final d:[Lo/Character;


# direct methods
.method public constructor <init>([Lo/Character;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->d:[Lo/Character;

    return-void
.end method


# virtual methods
.method public e(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 6

    .line 30
    new-instance v0, Lo/ClassNotFoundException;

    invoke-direct {v0}, Lo/ClassNotFoundException;-><init>()V

    .line 31
    iget-object v1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->d:[Lo/Character;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 32
    invoke-interface {v5, p1, p2, v3, v0}, Lo/Character;->c(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;ZLo/ClassNotFoundException;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->d:[Lo/Character;

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    const/4 v5, 0x1

    .line 35
    invoke-interface {v4, p1, p2, v5, v0}, Lo/Character;->c(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;ZLo/ClassNotFoundException;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
