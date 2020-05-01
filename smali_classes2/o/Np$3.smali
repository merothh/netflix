.class Lo/Np$3;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Np;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Np;


# direct methods
.method constructor <init>(Lo/Np;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lo/Np$3;->b:Lo/Np;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 128
    iget-object p1, p0, Lo/Np$3;->b:Lo/Np;

    invoke-static {p1}, Lo/Np;->c(Lo/Np;)V

    .line 131
    iget-object p1, p0, Lo/Np$3;->b:Lo/Np;

    invoke-virtual {p1}, Lo/Np;->g()V

    return-void
.end method
