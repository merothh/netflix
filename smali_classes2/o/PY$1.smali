.class final Lo/PY$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PY;->a(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lo/PY$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lo/PY$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 318
    iget-object p2, p0, Lo/PY$1;->a:Landroid/content/Context;

    invoke-static {p2}, Lo/PY;->c(Landroid/content/Context;)Lo/nS;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 320
    new-instance v0, Lcom/netflix/cl/model/event/session/command/RemoveCachedVideoCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/RemoveCachedVideoCommand;-><init>()V

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 321
    iget-object v0, p0, Lo/PY$1;->d:Ljava/lang/String;

    invoke-interface {p2, v0}, Lo/nS;->a(Ljava/lang/String;)V

    .line 322
    iget-object p2, p0, Lo/PY$1;->d:Ljava/lang/String;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Ljava/lang/String;)V

    .line 324
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
