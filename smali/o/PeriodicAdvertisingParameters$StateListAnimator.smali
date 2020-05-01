.class Lo/PeriodicAdvertisingParameters$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PeriodicAdvertisingParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation


# instance fields
.field final synthetic d:Lo/PeriodicAdvertisingParameters;


# direct methods
.method constructor <init>(Lo/PeriodicAdvertisingParameters;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lo/PeriodicAdvertisingParameters$StateListAnimator;->d:Lo/PeriodicAdvertisingParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 296
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 297
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/PeriodicAdvertisingParameters$TaskDescription;

    .line 298
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters$StateListAnimator;->d:Lo/PeriodicAdvertisingParameters;

    invoke-virtual {v0, p1}, Lo/PeriodicAdvertisingParameters;->b(Lo/PeriodicAdvertisingParameters$TaskDescription;)V

    return v1

    .line 300
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 301
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/PeriodicAdvertisingParameters$TaskDescription;

    .line 302
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters$StateListAnimator;->d:Lo/PeriodicAdvertisingParameters;

    iget-object v0, v0, Lo/PeriodicAdvertisingParameters;->d:Lo/BackupAgentHelper;

    invoke-virtual {v0, p1}, Lo/BackupAgentHelper;->c(Lo/UndoOwner;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
