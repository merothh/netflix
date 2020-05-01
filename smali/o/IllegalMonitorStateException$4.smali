.class Lo/IllegalMonitorStateException$4;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/IllegalMonitorStateException;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/IllegalMonitorStateException;


# direct methods
.method constructor <init>(Lo/IllegalMonitorStateException;Landroid/os/Looper;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lo/IllegalMonitorStateException$4;->b:Lo/IllegalMonitorStateException;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 124
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Lo/IllegalMonitorStateException$4;->b:Lo/IllegalMonitorStateException;

    invoke-virtual {p1}, Lo/IllegalMonitorStateException;->a()V

    :goto_0
    return-void
.end method
