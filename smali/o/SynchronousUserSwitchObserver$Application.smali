.class final Lo/SynchronousUserSwitchObserver$Application;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SynchronousUserSwitchObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Application"
.end annotation


# instance fields
.field final synthetic b:Lo/SynchronousUserSwitchObserver;

.field private final d:Lo/alA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alA<",
            "Ljava/lang/Boolean;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/SynchronousUserSwitchObserver;Lo/alA;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alA<",
            "-",
            "Ljava/lang/Boolean;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lo/SynchronousUserSwitchObserver$Application;->b:Lo/SynchronousUserSwitchObserver;

    .line 70
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lo/SynchronousUserSwitchObserver$Application;->d:Lo/alA;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lo/SynchronousUserSwitchObserver$Application;->d:Lo/alA;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lo/SynchronousUserSwitchObserver$Application;->b:Lo/SynchronousUserSwitchObserver;

    invoke-virtual {p2}, Lo/SynchronousUserSwitchObserver;->a()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/akj;

    :cond_0
    return-void
.end method
