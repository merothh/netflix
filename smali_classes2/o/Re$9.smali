.class Lo/Re$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Re;->f()Lo/PendingIntent;
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

    .line 715
    iput-object p1, p0, Lo/Re$9;->a:Lo/Re;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 718
    iget-object p2, p0, Lo/Re$9;->a:Lo/Re;

    invoke-static {p2}, Lo/Re;->c(Lo/Re;)Lo/nS;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 720
    iget-object v0, p0, Lo/Re$9;->a:Lo/Re;

    invoke-static {v0}, Lo/Re;->a(Lo/Re;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lo/nS;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "offlineErrorDialog"

    const-string v0, "createPlayWindowExpiredButRenewableDialog no offlineAgent"

    .line 722
    invoke-static {p2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
