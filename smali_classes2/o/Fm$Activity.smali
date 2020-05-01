.class final Lo/Fm$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Fm;->c(Lcom/netflix/model/leafs/originals/ContentWarning;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lo/Fm;


# direct methods
.method constructor <init>(Lo/Fm;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/Fm$Activity;->d:Lo/Fm;

    iput-object p2, p0, Lo/Fm$Activity;->c:Ljava/lang/String;

    iput-object p3, p0, Lo/Fm$Activity;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 35
    iget-object p1, p0, Lo/Fm$Activity;->d:Lo/Fm;

    invoke-static {p1}, Lo/Fm;->a(Lo/Fm;)Landroid/view/View;

    move-result-object p1

    const-string v0, "contentWarningView"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 37
    new-instance v0, Lo/PendingIntent$Activity;

    sget v1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v0, p1, v1}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object v0

    .line 38
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->eV:I

    invoke-static {v1}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/PendingIntent;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v1, p0, Lo/Fm$Activity;->c:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/PendingIntent;->e(Ljava/lang/CharSequence;)V

    .line 43
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    invoke-static {v1}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 44
    sget-object v2, Lo/Fm$Activity$4;->e:Lo/Fm$Activity$4;

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x1

    .line 41
    invoke-virtual {v0, v3, v1, v2}, Lo/PendingIntent;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 48
    iget-object v1, p0, Lo/Fm$Activity;->b:Ljava/lang/String;

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x2

    .line 51
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->kz:I

    invoke-static {v2}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 52
    new-instance v3, Lo/Fm$Activity$3;

    invoke-direct {v3, p0, p1}, Lo/Fm$Activity$3;-><init>(Lo/Fm$Activity;Landroid/content/Context;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    .line 49
    invoke-virtual {v0, v1, v2, v3}, Lo/PendingIntent;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 62
    :cond_0
    invoke-virtual {v0}, Lo/PendingIntent;->show()V

    return-void
.end method
