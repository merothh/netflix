.class Lo/iC$4;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/iC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/iC;


# direct methods
.method constructor <init>(Lo/iC;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lo/iC$4;->c:Lo/iC;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 173
    iget-object p1, p0, Lo/iC$4;->c:Lo/iC;

    invoke-static {p1, p2}, Lo/iC;->a(Lo/iC;Landroid/content/Intent;)V

    return-void
.end method
