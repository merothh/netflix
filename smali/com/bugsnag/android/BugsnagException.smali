.class public Lcom/bugsnag/android/BugsnagException;
.super Ljava/lang/Throwable;
.source ""

# interfaces
.implements Lo/WaitResult$ActionBar;


# static fields
.field private static final serialVersionUID:J = 0x4655cd3dd8355182L


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lo/WaitResult$ActionBar;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string p2, "android"

    .line 22
    iput-object p2, p0, Lcom/bugsnag/android/BugsnagException;->c:Ljava/lang/String;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/StackTraceElement;

    .line 61
    invoke-virtual {p0, p2}, Lcom/bugsnag/android/BugsnagException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 62
    iput-object p1, p0, Lcom/bugsnag/android/BugsnagException;->b:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/bugsnag/android/BugsnagException;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 0

    .line 37
    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string p2, "android"

    .line 22
    iput-object p2, p0, Lcom/bugsnag/android/BugsnagException;->c:Ljava/lang/String;

    .line 38
    invoke-virtual {p0, p3}, Lcom/bugsnag/android/BugsnagException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 39
    iput-object p1, p0, Lcom/bugsnag/android/BugsnagException;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/bugsnag/android/BugsnagException;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v0, "android"

    .line 22
    iput-object v0, p0, Lcom/bugsnag/android/BugsnagException;->c:Ljava/lang/String;

    .line 46
    instance-of v0, p1, Lo/WaitResult$ActionBar;

    if-eqz v0, :cond_0

    .line 47
    move-object v0, p1

    check-cast v0, Lo/WaitResult$ActionBar;

    iput-object v0, p0, Lcom/bugsnag/android/BugsnagException;->d:Lo/WaitResult$ActionBar;

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lcom/bugsnag/android/BugsnagException;->b:Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bugsnag/android/BugsnagException;->b:Ljava/lang/String;

    .line 52
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bugsnag/android/BugsnagException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bugsnag/android/BugsnagException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/bugsnag/android/BugsnagException;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/bugsnag/android/BugsnagException;->c:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/bugsnag/android/BugsnagException;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/bugsnag/android/BugsnagException;->a:Ljava/lang/String;

    return-void
.end method

.method public d([Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/bugsnag/android/BugsnagException;->g:[Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/bugsnag/android/BugsnagException;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/bugsnag/android/BugsnagException;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public toStream(Lo/WaitResult;)V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/bugsnag/android/BugsnagException;->d:Lo/WaitResult$ActionBar;

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0, p1}, Lo/WaitResult$ActionBar;->toStream(Lo/WaitResult;)V

    goto :goto_1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/BugsnagException;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 123
    new-instance v1, Lo/FreezePeriod;

    invoke-direct {v1, v0}, Lo/FreezePeriod;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 125
    :cond_1
    new-instance v1, Lo/FreezePeriod;

    invoke-virtual {p0}, Lcom/bugsnag/android/BugsnagException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iget-object v2, p0, Lcom/bugsnag/android/BugsnagException;->g:[Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lo/FreezePeriod;-><init>([Ljava/lang/StackTraceElement;[Ljava/lang/String;)V

    .line 128
    :goto_0
    invoke-virtual {p1}, Lo/WaitResult;->d()Lo/WallpaperManager;

    const-string v0, "errorClass"

    .line 129
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bugsnag/android/BugsnagException;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/WaitResult;->d(Ljava/lang/String;)Lo/WallpaperManager;

    const-string v0, "message"

    .line 130
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bugsnag/android/BugsnagException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/WaitResult;->d(Ljava/lang/String;)Lo/WallpaperManager;

    const-string v0, "type"

    .line 131
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    iget-object v2, p0, Lcom/bugsnag/android/BugsnagException;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lo/WaitResult;->d(Ljava/lang/String;)Lo/WallpaperManager;

    const-string v0, "stacktrace"

    .line 132
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/WaitResult;->b(Lo/WaitResult$ActionBar;)V

    .line 133
    invoke-virtual {p1}, Lo/WaitResult;->c()Lo/WallpaperManager;

    :goto_1
    return-void
.end method
