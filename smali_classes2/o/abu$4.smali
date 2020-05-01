.class Lo/abu$4;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/abu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/abu;


# direct methods
.method constructor <init>(Lo/abu;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lo/abu$4;->a:Lo/abu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 155
    iget-object p1, p0, Lo/abu$4;->a:Lo/abu;

    invoke-virtual {p1}, Lo/abu;->invalidateOptionsMenu()V

    return-void
.end method
