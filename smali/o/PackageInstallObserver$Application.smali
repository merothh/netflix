.class public final Lo/PackageInstallObserver$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PackageInstallObserver;->d(Lo/Service;Lo/UiAutomationConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/UiAutomationConnection;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lo/Service;

.field final synthetic d:Lo/PackageInstallObserver;

.field final synthetic e:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lo/PackageInstallObserver;Lo/Service;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/os/Handler;Lo/UiAutomationConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Service;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Landroid/os/Handler;",
            "Lo/UiAutomationConnection;",
            ")V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lo/PackageInstallObserver$Application;->d:Lo/PackageInstallObserver;

    iput-object p2, p0, Lo/PackageInstallObserver$Application;->c:Lo/Service;

    iput-object p3, p0, Lo/PackageInstallObserver$Application;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lo/PackageInstallObserver$Application;->b:Landroid/os/Handler;

    iput-object p5, p0, Lo/PackageInstallObserver$Application;->a:Lo/UiAutomationConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 60
    iget-object v0, p0, Lo/PackageInstallObserver$Application;->d:Lo/PackageInstallObserver;

    iget-object v1, p0, Lo/PackageInstallObserver$Application;->c:Lo/Service;

    iget-object v1, v1, Lo/Service;->b:Landroid/content/Context;

    const-string v2, "client.appContext"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/PackageInstallObserver;->d(Landroid/content/Context;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lo/PackageInstallObserver$Application;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_1

    .line 64
    iget-object v0, p0, Lo/PackageInstallObserver$Application;->b:Landroid/os/Handler;

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 67
    :cond_0
    iget-object v1, p0, Lo/PackageInstallObserver$Application;->d:Lo/PackageInstallObserver;

    iget-object v2, p0, Lo/PackageInstallObserver$Application;->a:Lo/UiAutomationConnection;

    invoke-virtual {v1, v2, v0}, Lo/PackageInstallObserver;->b(Lo/UiAutomationConnection;Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 68
    iget-object v0, p0, Lo/PackageInstallObserver$Application;->c:Lo/Service;

    iget-object v1, p0, Lo/PackageInstallObserver$Application;->a:Lo/UiAutomationConnection;

    sget-object v2, Lcom/bugsnag/android/DeliveryStyle;->d:Lcom/bugsnag/android/DeliveryStyle;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lo/Service;->e(Lo/UiAutomationConnection;Lcom/bugsnag/android/DeliveryStyle;Lo/RemoteInput;)V

    :cond_1
    :goto_0
    return-void
.end method
