.class Lo/Service$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Service;-><init>(Landroid/content/Context;Lo/SearchDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Service;


# direct methods
.method constructor <init>(Lo/Service;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lo/Service$3;->c:Lo/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 239
    iget-object v0, p0, Lo/Service$3;->c:Lo/Service;

    iget-object v0, v0, Lo/Service;->b:Landroid/content/Context;

    iget-object v1, p0, Lo/Service$3;->c:Lo/Service;

    iget-object v1, v1, Lo/Service;->g:Lo/UiAutomation;

    invoke-static {}, Lo/UiAutomation;->e()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
