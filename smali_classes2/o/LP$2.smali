.class Lo/LP$2;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LP;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/LP;


# direct methods
.method constructor <init>(Lo/LP;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lo/LP$2;->d:Lo/LP;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 185
    iget-object p1, p0, Lo/LP$2;->d:Lo/LP;

    invoke-static {p1}, Lo/LP;->c(Lo/LP;)V

    return-void
.end method
