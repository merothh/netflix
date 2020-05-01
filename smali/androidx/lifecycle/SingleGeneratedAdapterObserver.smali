.class public Landroidx/lifecycle/SingleGeneratedAdapterObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Class;


# instance fields
.field private final e:Lo/Character;


# direct methods
.method public constructor <init>(Lo/Character;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->e:Lo/Character;

    return-void
.end method


# virtual methods
.method public e(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 3

    .line 29
    iget-object v0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->e:Lo/Character;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v2, v1}, Lo/Character;->c(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;ZLo/ClassNotFoundException;)V

    .line 30
    iget-object v0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->e:Lo/Character;

    const/4 v2, 0x1

    invoke-interface {v0, p1, p2, v2, v1}, Lo/Character;->c(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;ZLo/ClassNotFoundException;)V

    return-void
.end method
