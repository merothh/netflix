.class Lo/Re$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Re;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Re;


# direct methods
.method constructor <init>(Lo/Re;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lo/Re$3;->a:Lo/Re;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 124
    iget-object p2, p0, Lo/Re$3;->a:Lo/Re;

    invoke-static {p2}, Lo/Re;->c(Lo/Re;)Lo/nS;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 126
    iget-object v0, p0, Lo/Re$3;->a:Lo/Re;

    invoke-static {v0}, Lo/Re;->a(Lo/Re;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lo/nS;->a(Ljava/lang/String;)V

    .line 127
    iget-object p2, p0, Lo/Re$3;->a:Lo/Re;

    invoke-static {p2}, Lo/Re;->a(Lo/Re;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "offlineErrorDialog"

    const-string v0, "deleteAction offlineAgent is null"

    .line 129
    invoke-static {p2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
