.class public Lo/UiAutomationConnection;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/WaitResult$ActionBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/UiAutomationConnection$Activity;
    }
.end annotation


# instance fields
.field private a:Lcom/bugsnag/android/Severity;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lo/AssistStructure;

.field final e:Lo/SearchDialog;

.field private final f:Lo/UiModeManager;

.field private g:Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:Lo/DeviceAdminInfo;

.field private j:Ljava/lang/String;

.field private k:Lcom/bugsnag/android/Breadcrumbs;

.field private final l:Lo/DeviceAdminService;

.field private final m:Lo/UserSwitchObserver;

.field private final n:Lcom/bugsnag/android/BugsnagException;

.field private final o:Lo/PasswordMetrics;

.field private p:Z


# direct methods
.method constructor <init>(Lo/SearchDialog;Ljava/lang/Throwable;Lo/UserSwitchObserver;Lcom/bugsnag/android/Severity;Lo/DeviceAdminService;Lo/PasswordMetrics;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/UiAutomationConnection;->b:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/UiAutomationConnection;->c:Ljava/util/Map;

    .line 27
    new-instance v0, Lo/AssistStructure;

    invoke-direct {v0}, Lo/AssistStructure;-><init>()V

    iput-object v0, p0, Lo/UiAutomationConnection;->d:Lo/AssistStructure;

    .line 33
    new-instance v0, Lo/DeviceAdminInfo;

    invoke-direct {v0}, Lo/DeviceAdminInfo;-><init>()V

    iput-object v0, p0, Lo/UiAutomationConnection;->i:Lo/DeviceAdminInfo;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lo/UiAutomationConnection;->p:Z

    .line 56
    iput-object p6, p0, Lo/UiAutomationConnection;->o:Lo/PasswordMetrics;

    .line 57
    iput-object p1, p0, Lo/UiAutomationConnection;->e:Lo/SearchDialog;

    .line 59
    instance-of p6, p2, Lcom/bugsnag/android/BugsnagException;

    if-eqz p6, :cond_0

    .line 60
    check-cast p2, Lcom/bugsnag/android/BugsnagException;

    iput-object p2, p0, Lo/UiAutomationConnection;->n:Lcom/bugsnag/android/BugsnagException;

    goto :goto_0

    .line 62
    :cond_0
    new-instance p6, Lcom/bugsnag/android/BugsnagException;

    invoke-direct {p6, p2}, Lcom/bugsnag/android/BugsnagException;-><init>(Ljava/lang/Throwable;)V

    iput-object p6, p0, Lo/UiAutomationConnection;->n:Lcom/bugsnag/android/BugsnagException;

    .line 64
    :goto_0
    iput-object p3, p0, Lo/UiAutomationConnection;->m:Lo/UserSwitchObserver;

    .line 65
    iput-object p4, p0, Lo/UiAutomationConnection;->a:Lcom/bugsnag/android/Severity;

    .line 66
    iput-object p5, p0, Lo/UiAutomationConnection;->l:Lo/DeviceAdminService;

    .line 68
    invoke-virtual {p1}, Lo/SearchDialog;->f()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/UiAutomationConnection;->h:[Ljava/lang/String;

    .line 69
    new-instance p2, Lo/UiModeManager;

    iget-object p3, p0, Lo/UiAutomationConnection;->n:Lcom/bugsnag/android/BugsnagException;

    invoke-direct {p2, p1, p3}, Lo/UiModeManager;-><init>(Lo/SearchDialog;Lcom/bugsnag/android/BugsnagException;)V

    iput-object p2, p0, Lo/UiAutomationConnection;->f:Lo/UiModeManager;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Lo/UiAutomationConnection;->n:Lcom/bugsnag/android/BugsnagException;

    invoke-virtual {v0}, Lcom/bugsnag/android/BugsnagException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method a([Ljava/lang/String;)V
    .locals 1

    .line 416
    iput-object p1, p0, Lo/UiAutomationConnection;->h:[Ljava/lang/String;

    .line 417
    iget-object v0, p0, Lo/UiAutomationConnection;->f:Lo/UiModeManager;

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0, p1}, Lo/UiModeManager;->e([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lo/UiAutomationConnection;->n:Lcom/bugsnag/android/BugsnagException;

    invoke-virtual {v0}, Lcom/bugsnag/android/BugsnagException;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/bugsnag/android/Severity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 187
    iput-object p1, p0, Lo/UiAutomationConnection;->a:Lcom/bugsnag/android/Severity;

    .line 188
    iget-object v0, p0, Lo/UiAutomationConnection;->m:Lo/UserSwitchObserver;

    invoke-virtual {v0, p1}, Lo/UserSwitchObserver;->b(Lcom/bugsnag/android/Severity;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lo/UiAutomationConnection;->g:Ljava/lang/String;

    return-void
.end method

.method c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lo/UiAutomationConnection;->b:Ljava/util/Map;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lo/UiAutomationConnection;->n:Lcom/bugsnag/android/BugsnagException;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/BugsnagException;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 269
    iget-object v0, p0, Lo/UiAutomationConnection;->i:Lo/DeviceAdminInfo;

    invoke-virtual {v0, p1, p2, p3}, Lo/DeviceAdminInfo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method c(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 387
    iput-object p1, p0, Lo/UiAutomationConnection;->c:Ljava/util/Map;

    return-void
.end method

.method public c(Lo/DeviceAdminInfo;)V
    .locals 0

    if-nez p1, :cond_0

    .line 308
    new-instance p1, Lo/DeviceAdminInfo;

    invoke-direct {p1}, Lo/DeviceAdminInfo;-><init>()V

    iput-object p1, p0, Lo/UiAutomationConnection;->i:Lo/DeviceAdminInfo;

    goto :goto_0

    .line 310
    :cond_0
    iput-object p1, p0, Lo/UiAutomationConnection;->i:Lo/DeviceAdminInfo;

    :goto_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lo/UiAutomationConnection;->g:Ljava/lang/String;

    return-object v0
.end method

.method d(Lcom/bugsnag/android/Breadcrumbs;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lo/UiAutomationConnection;->k:Lcom/bugsnag/android/Breadcrumbs;

    return-void
.end method

.method d(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 383
    iput-object p1, p0, Lo/UiAutomationConnection;->b:Ljava/util/Map;

    return-void
.end method

.method public e()Lo/DeviceAdminInfo;
    .locals 1

    .line 291
    iget-object v0, p0, Lo/UiAutomationConnection;->i:Lo/DeviceAdminInfo;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lo/UiAutomationConnection;->j:Ljava/lang/String;

    return-void
.end method

.method e(Lo/AssistStructure;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lo/UiAutomationConnection;->d:Lo/AssistStructure;

    return-void
.end method

.method f()Z
    .locals 2

    .line 395
    iget-object v0, p0, Lo/UiAutomationConnection;->e:Lo/SearchDialog;

    invoke-virtual {p0}, Lo/UiAutomationConnection;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/SearchDialog;->h(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public g()Lo/UiModeManager;
    .locals 1

    .line 404
    iget-object v0, p0, Lo/UiAutomationConnection;->f:Lo/UiModeManager;

    return-object v0
.end method

.method h()Lo/DeviceAdminService;
    .locals 1

    .line 408
    iget-object v0, p0, Lo/UiAutomationConnection;->l:Lo/DeviceAdminService;

    return-object v0
.end method

.method public j()Lo/UserSwitchObserver;
    .locals 1

    .line 400
    iget-object v0, p0, Lo/UiAutomationConnection;->m:Lo/UserSwitchObserver;

    return-object v0
.end method

.method public toStream(Lo/WaitResult;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lo/DeviceAdminInfo;

    .line 75
    iget-object v1, p0, Lo/UiAutomationConnection;->e:Lo/SearchDialog;

    invoke-virtual {v1}, Lo/SearchDialog;->n()Lo/DeviceAdminInfo;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/UiAutomationConnection;->i:Lo/DeviceAdminInfo;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lo/DeviceAdminInfo;->c([Lo/DeviceAdminInfo;)Lo/DeviceAdminInfo;

    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lo/WaitResult;->d()Lo/WallpaperManager;

    const-string v1, "context"

    .line 79
    invoke-virtual {p1, v1}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v1

    iget-object v3, p0, Lo/UiAutomationConnection;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lo/WaitResult;->d(Ljava/lang/String;)Lo/WallpaperManager;

    const-string v1, "metaData"

    .line 80
    invoke-virtual {p1, v1}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WaitResult;->b(Lo/WaitResult$ActionBar;)V

    const-string v0, "severity"

    .line 82
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    iget-object v1, p0, Lo/UiAutomationConnection;->a:Lcom/bugsnag/android/Severity;

    invoke-virtual {v0, v1}, Lo/WaitResult;->b(Lo/WaitResult$ActionBar;)V

    const-string v0, "severityReason"

    .line 83
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    iget-object v1, p0, Lo/UiAutomationConnection;->m:Lo/UserSwitchObserver;

    invoke-virtual {v0, v1}, Lo/WaitResult;->b(Lo/WaitResult$ActionBar;)V

    const-string v0, "unhandled"

    .line 84
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v1

    iget-object v3, p0, Lo/UiAutomationConnection;->m:Lo/UserSwitchObserver;

    invoke-virtual {v3}, Lo/UserSwitchObserver;->b()Z

    move-result v3

    invoke-virtual {v1, v3}, Lo/WaitResult;->b(Z)Lo/WallpaperManager;

    const-string v1, "incomplete"

    .line 85
    invoke-virtual {p1, v1}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v1

    iget-boolean v3, p0, Lo/UiAutomationConnection;->p:Z

    invoke-virtual {v1, v3}, Lo/WaitResult;->b(Z)Lo/WallpaperManager;

    .line 87
    iget-object v1, p0, Lo/UiAutomationConnection;->h:[Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "projectPackages"

    .line 88
    invoke-virtual {p1, v1}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v1

    invoke-virtual {v1}, Lo/WaitResult;->e()Lo/WallpaperManager;

    .line 89
    iget-object v1, p0, Lo/UiAutomationConnection;->h:[Ljava/lang/String;

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 90
    invoke-virtual {p1, v4}, Lo/WaitResult;->d(Ljava/lang/String;)Lo/WallpaperManager;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p1}, Lo/WaitResult;->b()Lo/WallpaperManager;

    :cond_1
    const-string v1, "exceptions"

    .line 96
    invoke-virtual {p1, v1}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v1

    iget-object v2, p0, Lo/UiAutomationConnection;->f:Lo/UiModeManager;

    invoke-virtual {v1, v2}, Lo/WaitResult;->b(Lo/WaitResult$ActionBar;)V

    const-string v1, "user"

    .line 99
    invoke-virtual {p1, v1}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v1

    iget-object v2, p0, Lo/UiAutomationConnection;->d:Lo/AssistStructure;

    invoke-virtual {v1, v2}, Lo/WaitResult;->b(Lo/WaitResult$ActionBar;)V

    const-string v1, "app"

    .line 102
    invoke-virtual {p1, v1}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v1

    iget-object v2, p0, Lo/UiAutomationConnection;->b:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lo/WaitResult;->e(Ljava/lang/Object;)V

    const-string v1, "device"

    .line 103
    invoke-virtual {p1, v1}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v1

    iget-object v2, p0, Lo/UiAutomationConnection;->c:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lo/WaitResult;->e(Ljava/lang/Object;)V

    const-string v1, "breadcrumbs"

    .line 104
    invoke-virtual {p1, v1}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v1

    iget-object v2, p0, Lo/UiAutomationConnection;->k:Lcom/bugsnag/android/Breadcrumbs;

    invoke-virtual {v1, v2}, Lo/WaitResult;->b(Lo/WaitResult$ActionBar;)V

    const-string v1, "groupingHash"

    .line 105
    invoke-virtual {p1, v1}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v1

    iget-object v2, p0, Lo/UiAutomationConnection;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo/WaitResult;->d(Ljava/lang/String;)Lo/WallpaperManager;

    .line 107
    iget-object v1, p0, Lo/UiAutomationConnection;->e:Lo/SearchDialog;

    invoke-virtual {v1}, Lo/SearchDialog;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "threads"

    .line 108
    invoke-virtual {p1, v1}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v1

    iget-object v2, p0, Lo/UiAutomationConnection;->o:Lo/PasswordMetrics;

    invoke-virtual {v1, v2}, Lo/WaitResult;->b(Lo/WaitResult$ActionBar;)V

    .line 111
    :cond_2
    iget-object v1, p0, Lo/UiAutomationConnection;->l:Lo/DeviceAdminService;

    if-eqz v1, :cond_3

    const-string v1, "session"

    .line 112
    invoke-virtual {p1, v1}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v1

    invoke-virtual {v1}, Lo/WaitResult;->d()Lo/WallpaperManager;

    const-string v1, "id"

    .line 113
    invoke-virtual {p1, v1}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v1

    iget-object v2, p0, Lo/UiAutomationConnection;->l:Lo/DeviceAdminService;

    invoke-virtual {v2}, Lo/DeviceAdminService;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/WaitResult;->d(Ljava/lang/String;)Lo/WallpaperManager;

    const-string v1, "startedAt"

    .line 114
    invoke-virtual {p1, v1}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v1

    iget-object v2, p0, Lo/UiAutomationConnection;->l:Lo/DeviceAdminService;

    invoke-virtual {v2}, Lo/DeviceAdminService;->c()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lo/SystemServiceRegistry;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/WaitResult;->d(Ljava/lang/String;)Lo/WallpaperManager;

    const-string v1, "events"

    .line 116
    invoke-virtual {p1, v1}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v1

    invoke-virtual {v1}, Lo/WaitResult;->d()Lo/WallpaperManager;

    const-string v1, "handled"

    .line 117
    invoke-virtual {p1, v1}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v1

    iget-object v2, p0, Lo/UiAutomationConnection;->l:Lo/DeviceAdminService;

    invoke-virtual {v2}, Lo/DeviceAdminService;->d()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lo/WaitResult;->e(J)Lo/WallpaperManager;

    .line 118
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    iget-object v1, p0, Lo/UiAutomationConnection;->l:Lo/DeviceAdminService;

    invoke-virtual {v1}, Lo/DeviceAdminService;->b()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lo/WaitResult;->e(J)Lo/WallpaperManager;

    .line 119
    invoke-virtual {p1}, Lo/WaitResult;->c()Lo/WallpaperManager;

    .line 120
    invoke-virtual {p1}, Lo/WaitResult;->c()Lo/WallpaperManager;

    .line 123
    :cond_3
    invoke-virtual {p1}, Lo/WaitResult;->c()Lo/WallpaperManager;

    return-void
.end method
