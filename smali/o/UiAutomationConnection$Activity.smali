.class public Lo/UiAutomationConnection$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UiAutomationConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Activity"
.end annotation


# instance fields
.field private final a:Lo/SearchDialog;

.field private final b:Lo/DevicePolicyManagerInternal;

.field private final c:Lo/PasswordMetrics;

.field private d:Lcom/bugsnag/android/Severity;

.field private final e:Ljava/lang/Throwable;

.field private f:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lo/DeviceAdminInfo;


# direct methods
.method constructor <init>(Lo/SearchDialog;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lo/DevicePolicyManagerInternal;Ljava/lang/Thread;)V
    .locals 6

    .line 450
    new-instance v2, Lcom/bugsnag/android/BugsnagException;

    invoke-direct {v2, p2, p3, p4}, Lcom/bugsnag/android/BugsnagException;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lo/UiAutomationConnection$Activity;-><init>(Lo/SearchDialog;Ljava/lang/Throwable;Lo/DevicePolicyManagerInternal;Ljava/lang/Thread;Z)V

    return-void
.end method

.method public constructor <init>(Lo/SearchDialog;Ljava/lang/Throwable;Lo/DevicePolicyManagerInternal;Ljava/lang/Thread;Z)V
    .locals 2

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    sget-object v0, Lcom/bugsnag/android/Severity;->WARNING:Lcom/bugsnag/android/Severity;

    iput-object v0, p0, Lo/UiAutomationConnection$Activity;->d:Lcom/bugsnag/android/Severity;

    if-eqz p5, :cond_0

    move-object p5, p2

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    .line 440
    :goto_0
    new-instance v0, Lo/PasswordMetrics;

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p1, p4, v1, p5}, Lo/PasswordMetrics;-><init>(Lo/SearchDialog;Ljava/lang/Thread;Ljava/util/Map;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lo/UiAutomationConnection$Activity;->c:Lo/PasswordMetrics;

    .line 441
    iput-object p1, p0, Lo/UiAutomationConnection$Activity;->a:Lo/SearchDialog;

    .line 442
    iput-object p2, p0, Lo/UiAutomationConnection$Activity;->e:Ljava/lang/Throwable;

    const-string p1, "userSpecifiedSeverity"

    .line 443
    iput-object p1, p0, Lo/UiAutomationConnection$Activity;->f:Ljava/lang/String;

    .line 444
    iput-object p3, p0, Lo/UiAutomationConnection$Activity;->b:Lo/DevicePolicyManagerInternal;

    return-void
.end method

.method private c(Lo/UserSwitchObserver;)Lo/DeviceAdminService;
    .locals 3

    .line 489
    iget-object v0, p0, Lo/UiAutomationConnection$Activity;->b:Lo/DevicePolicyManagerInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 492
    :cond_0
    invoke-virtual {v0}, Lo/DevicePolicyManagerInternal;->a()Lo/DeviceAdminService;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 498
    :cond_1
    iget-object v2, p0, Lo/UiAutomationConnection$Activity;->a:Lo/SearchDialog;

    invoke-virtual {v2}, Lo/SearchDialog;->m()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lo/DeviceAdminService;->i()Z

    move-result v0

    if-nez v0, :cond_4

    .line 499
    :cond_2
    invoke-virtual {p1}, Lo/UserSwitchObserver;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 500
    iget-object p1, p0, Lo/UiAutomationConnection$Activity;->b:Lo/DevicePolicyManagerInternal;

    invoke-virtual {p1}, Lo/DevicePolicyManagerInternal;->d()Lo/DeviceAdminService;

    move-result-object v1

    goto :goto_0

    .line 502
    :cond_3
    iget-object p1, p0, Lo/UiAutomationConnection$Activity;->b:Lo/DevicePolicyManagerInternal;

    invoke-virtual {p1}, Lo/DevicePolicyManagerInternal;->e()Lo/DeviceAdminService;

    move-result-object v1

    :cond_4
    :goto_0
    return-object v1
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lo/UiAutomationConnection$Activity;
    .locals 0

    .line 455
    iput-object p1, p0, Lo/UiAutomationConnection$Activity;->f:Ljava/lang/String;

    return-object p0
.end method

.method public c(Lcom/bugsnag/android/Severity;)Lo/UiAutomationConnection$Activity;
    .locals 0

    .line 465
    iput-object p1, p0, Lo/UiAutomationConnection$Activity;->d:Lcom/bugsnag/android/Severity;

    return-object p0
.end method

.method public d()Lo/UiAutomationConnection;
    .locals 10

    .line 475
    iget-object v0, p0, Lo/UiAutomationConnection$Activity;->f:Ljava/lang/String;

    iget-object v1, p0, Lo/UiAutomationConnection$Activity;->d:Lcom/bugsnag/android/Severity;

    iget-object v2, p0, Lo/UiAutomationConnection$Activity;->h:Ljava/lang/String;

    .line 476
    invoke-static {v0, v1, v2}, Lo/UserSwitchObserver;->a(Ljava/lang/String;Lcom/bugsnag/android/Severity;Ljava/lang/String;)Lo/UserSwitchObserver;

    move-result-object v6

    .line 477
    invoke-direct {p0, v6}, Lo/UiAutomationConnection$Activity;->c(Lo/UserSwitchObserver;)Lo/DeviceAdminService;

    move-result-object v8

    .line 479
    new-instance v0, Lo/UiAutomationConnection;

    iget-object v4, p0, Lo/UiAutomationConnection$Activity;->a:Lo/SearchDialog;

    iget-object v5, p0, Lo/UiAutomationConnection$Activity;->e:Ljava/lang/Throwable;

    iget-object v7, p0, Lo/UiAutomationConnection$Activity;->d:Lcom/bugsnag/android/Severity;

    iget-object v9, p0, Lo/UiAutomationConnection$Activity;->c:Lo/PasswordMetrics;

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lo/UiAutomationConnection;-><init>(Lo/SearchDialog;Ljava/lang/Throwable;Lo/UserSwitchObserver;Lcom/bugsnag/android/Severity;Lo/DeviceAdminService;Lo/PasswordMetrics;)V

    .line 482
    iget-object v1, p0, Lo/UiAutomationConnection$Activity;->i:Lo/DeviceAdminInfo;

    if-eqz v1, :cond_0

    .line 483
    invoke-virtual {v0, v1}, Lo/UiAutomationConnection;->c(Lo/DeviceAdminInfo;)V

    :cond_0
    return-object v0
.end method

.method e(Ljava/lang/String;)Lo/UiAutomationConnection$Activity;
    .locals 0

    .line 460
    iput-object p1, p0, Lo/UiAutomationConnection$Activity;->h:Ljava/lang/String;

    return-object p0
.end method

.method e(Lo/DeviceAdminInfo;)Lo/UiAutomationConnection$Activity;
    .locals 0

    .line 470
    iput-object p1, p0, Lo/UiAutomationConnection$Activity;->i:Lo/DeviceAdminInfo;

    return-object p0
.end method
