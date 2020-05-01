.class final Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver$4;
.super Lo/xQ$ActionBar;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->f(Landroid/content/Context;Landroid/content/Intent;Lo/xO$Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Landroid/content/Context;

.field final synthetic e:Lo/xO$Activity;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/content/Context;Lo/xO$Activity;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver$4;->b:Landroid/content/Intent;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver$4;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver$4;->e:Lo/xO$Activity;

    invoke-direct {p0}, Lo/xQ$ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
    .locals 4

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "got new data, valid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "nf_widget_receiver"

    invoke-static {v3, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {p1}, Lo/Ye;->c(Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver$4;->b:Landroid/content/Intent;

    const-string v0, "videoIndex"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 183
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver$4;->b:Landroid/content/Intent;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-array v0, v1, [Ljava/lang/Object;

    .line 184
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "widget refresh with static images start: %d"

    invoke-static {v3, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver$4;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver$4;->e:Lo/xO$Activity;

    invoke-static {v0, p1, v1}, Lo/Ye;->e(Landroid/content/Context;ILo/xO$Activity;)V

    goto :goto_1

    .line 187
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver$4;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver$4;->e:Lo/xO$Activity;

    invoke-static {p1, v0}, Lo/Ye;->a(Landroid/content/Context;Lo/xO$Activity;)V

    const-string p1, "no data for widget - treating as new install case"

    .line 188
    invoke-static {v3, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver$4;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver$4;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver$4;->e:Lo/xO$Activity;

    invoke-static {v0, v1, p1, v2}, Lo/Ye;->c(Landroid/content/Context;Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lo/xO$Activity;)V

    :goto_1
    return-void
.end method
