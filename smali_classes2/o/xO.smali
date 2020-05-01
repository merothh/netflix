.class public Lo/xO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/xO$Activity;
    }
.end annotation


# instance fields
.field c:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/BroadcastReceiver$PendingResult;Ljava/lang/Runnable;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lo/xO;->c:Landroid/content/BroadcastReceiver$PendingResult;

    .line 24
    new-instance p1, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {p1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 17
    iget-object v0, p0, Lo/xO;->c:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    :cond_0
    return-void
.end method
