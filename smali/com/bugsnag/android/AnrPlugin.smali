.class public final Lcom/bugsnag/android/AnrPlugin;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RecoverableSecurityException;


# instance fields
.field private final collector:Lo/PackageInstallObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lo/PackageInstallObserver;

    invoke-direct {v0}, Lo/PackageInstallObserver;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/AnrPlugin;->collector:Lo/PackageInstallObserver;

    return-void
.end method

.method public static final synthetic access$handleAnr(Lcom/bugsnag/android/AnrPlugin;Ljava/lang/Thread;Lo/Service;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/bugsnag/android/AnrPlugin;->handleAnr(Ljava/lang/Thread;Lo/Service;)V

    return-void
.end method

.method private final handleAnr(Ljava/lang/Thread;Lo/Service;)V
    .locals 10

    .line 23
    new-instance v0, Lcom/bugsnag/android/BugsnagException;

    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const-string v2, "Application did not respond to UI input"

    const-string v3, "ANR"

    invoke-direct {v0, v3, v2, v1}, Lcom/bugsnag/android/BugsnagException;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 24
    new-instance v1, Lo/UiAutomationConnection$Activity;

    iget-object v5, p2, Lo/Service;->d:Lo/SearchDialog;

    move-object v6, v0

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, p2, Lo/Service;->i:Lo/DevicePolicyManagerInternal;

    const/4 v9, 0x1

    move-object v4, v1

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lo/UiAutomationConnection$Activity;-><init>(Lo/SearchDialog;Ljava/lang/Throwable;Lo/DevicePolicyManagerInternal;Ljava/lang/Thread;Z)V

    .line 25
    sget-object p1, Lcom/bugsnag/android/Severity;->ERROR:Lcom/bugsnag/android/Severity;

    invoke-virtual {v1, p1}, Lo/UiAutomationConnection$Activity;->c(Lcom/bugsnag/android/Severity;)Lo/UiAutomationConnection$Activity;

    move-result-object p1

    const-string v0, "anrError"

    .line 26
    invoke-virtual {p1, v0}, Lo/UiAutomationConnection$Activity;->b(Ljava/lang/String;)Lo/UiAutomationConnection$Activity;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lo/UiAutomationConnection$Activity;->d()Lo/UiAutomationConnection;

    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/bugsnag/android/AnrPlugin;->collector:Lo/PackageInstallObserver;

    const-string v1, "error"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p1}, Lo/PackageInstallObserver;->d(Lo/Service;Lo/UiAutomationConnection;)V

    return-void
.end method

.method private final native installAnrDetection(Ljava/nio/ByteBuffer;)V
.end method


# virtual methods
.method public initialisePlugin(Lo/Service;)V
    .locals 2

    const-string v0, "client"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bugsnag-plugin-android-anr"

    .line 12
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/bugsnag/android/AnrPlugin$initialisePlugin$delegate$1;

    invoke-direct {v0, p0, p1}, Lcom/bugsnag/android/AnrPlugin$initialisePlugin$delegate$1;-><init>(Lcom/bugsnag/android/AnrPlugin;Lo/Service;)V

    check-cast v0, Lo/alA;

    .line 14
    new-instance p1, Lo/Person;

    new-instance v1, Lo/PackageDeleteObserver;

    invoke-direct {v1, v0}, Lo/PackageDeleteObserver;-><init>(Lo/alA;)V

    check-cast v1, Lo/Person$ActionBar;

    invoke-direct {p1, v1}, Lo/Person;-><init>(Lo/Person$ActionBar;)V

    .line 15
    invoke-virtual {p1}, Lo/Person;->d()V

    .line 16
    invoke-virtual {p1}, Lo/Person;->a()Ljava/nio/ByteBuffer;

    move-result-object p1

    const-string v0, "monitor.sentinelBuffer"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/bugsnag/android/AnrPlugin;->installAnrDetection(Ljava/nio/ByteBuffer;)V

    const-string p1, "Initialised ANR Plugin"

    .line 17
    invoke-static {p1}, Lo/WallpaperColors;->c(Ljava/lang/String;)V

    return-void
.end method
