.class public Lo/UiModeManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/WaitResult$ActionBar;


# instance fields
.field private a:Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private final e:Lcom/bugsnag/android/BugsnagException;


# direct methods
.method constructor <init>(Lo/SearchDialog;Lcom/bugsnag/android/BugsnagException;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lo/UiModeManager;->e:Lcom/bugsnag/android/BugsnagException;

    .line 20
    invoke-virtual {p2}, Lcom/bugsnag/android/BugsnagException;->e()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/UiModeManager;->a:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lo/SearchDialog;->f()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/UiModeManager;->b:[Ljava/lang/String;

    return-void
.end method

.method private c(Lo/WaitResult;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 1

    .line 71
    invoke-virtual {p1}, Lo/WaitResult;->d()Lo/WallpaperManager;

    const-string v0, "errorClass"

    .line 72
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    invoke-virtual {v0, p2}, Lo/WaitResult;->d(Ljava/lang/String;)Lo/WallpaperManager;

    const-string p2, "message"

    .line 73
    invoke-virtual {p1, p2}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object p2

    invoke-virtual {p2, p3}, Lo/WaitResult;->d(Ljava/lang/String;)Lo/WallpaperManager;

    const-string p2, "type"

    .line 74
    invoke-virtual {p1, p2}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object p2

    iget-object p3, p0, Lo/UiModeManager;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lo/WaitResult;->d(Ljava/lang/String;)Lo/WallpaperManager;

    .line 76
    new-instance p2, Lo/FreezePeriod;

    iget-object p3, p0, Lo/UiModeManager;->b:[Ljava/lang/String;

    invoke-direct {p2, p4, p3}, Lo/FreezePeriod;-><init>([Ljava/lang/StackTraceElement;[Ljava/lang/String;)V

    const-string p3, "stacktrace"

    .line 77
    invoke-virtual {p1, p3}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object p3

    invoke-virtual {p3, p2}, Lo/WaitResult;->b(Lo/WaitResult$ActionBar;)V

    .line 78
    invoke-virtual {p1}, Lo/WaitResult;->c()Lo/WallpaperManager;

    return-void
.end method


# virtual methods
.method b()Lcom/bugsnag/android/BugsnagException;
    .locals 1

    .line 46
    iget-object v0, p0, Lo/UiModeManager;->e:Lcom/bugsnag/android/BugsnagException;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lo/UiModeManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 54
    iput-object p1, p0, Lo/UiModeManager;->a:Ljava/lang/String;

    .line 55
    iget-object p1, p0, Lo/UiModeManager;->e:Lcom/bugsnag/android/BugsnagException;

    iget-object v0, p0, Lo/UiModeManager;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/BugsnagException;->a(Ljava/lang/String;)V

    return-void
.end method

.method e([Ljava/lang/String;)V
    .locals 1

    .line 63
    iput-object p1, p0, Lo/UiModeManager;->b:[Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lo/UiModeManager;->e:Lcom/bugsnag/android/BugsnagException;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/BugsnagException;->d([Ljava/lang/String;)V

    return-void
.end method

.method public toStream(Lo/WaitResult;)V
    .locals 4

    .line 26
    invoke-virtual {p1}, Lo/WaitResult;->e()Lo/WallpaperManager;

    .line 29
    iget-object v0, p0, Lo/UiModeManager;->e:Lcom/bugsnag/android/BugsnagException;

    :goto_0
    if-eqz v0, :cond_1

    .line 31
    instance-of v1, v0, Lo/WaitResult$ActionBar;

    if-eqz v1, :cond_0

    .line 32
    move-object v1, v0

    check-cast v1, Lo/WaitResult$ActionBar;

    invoke-interface {v1, p1}, Lo/WaitResult$ActionBar;->toStream(Lo/WaitResult;)V

    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 37
    invoke-direct {p0, p1, v1, v2, v3}, Lo/UiModeManager;->c(Lo/WaitResult;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 39
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p1}, Lo/WaitResult;->b()Lo/WallpaperManager;

    return-void
.end method
