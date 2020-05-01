.class Lo/Package$2;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Package;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Package;


# direct methods
.method constructor <init>(Lo/Package;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lo/Package$2;->c:Lo/Package;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 142
    iget-object p1, p0, Lo/Package$2;->c:Lo/Package;

    invoke-virtual {p1}, Lo/Package;->e()V

    return-void
.end method
