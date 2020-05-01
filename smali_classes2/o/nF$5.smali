.class Lo/nF$5;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/nF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/nF;


# direct methods
.method constructor <init>(Lo/nF;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lo/nF$5;->d:Lo/nF;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lo/nF$5;->d:Lo/nF;

    invoke-static {p1, p2}, Lo/nF;->c(Lo/nF;Landroid/content/Intent;)V

    return-void
.end method
