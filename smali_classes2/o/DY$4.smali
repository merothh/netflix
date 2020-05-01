.class Lo/DY$4;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/DY;


# direct methods
.method constructor <init>(Lo/DY;)V
    .locals 0

    .line 1560
    iput-object p1, p0, Lo/DY$4;->c:Lo/DY;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1563
    iget-object p1, p0, Lo/DY$4;->c:Lo/DY;

    invoke-virtual {p1}, Lo/DY;->G()V

    return-void
.end method
