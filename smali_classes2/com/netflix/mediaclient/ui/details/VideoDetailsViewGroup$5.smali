.class Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->j(Lo/Bc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 847
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;->b:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 850
    new-instance p1, Lo/PendingIntent$Activity;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;->b:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {p1, v0, v1}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p1

    .line 851
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;->b:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->eV:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/PendingIntent;->setTitle(Ljava/lang/CharSequence;)V

    .line 852
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/PendingIntent;->e(Ljava/lang/CharSequence;)V

    .line 854
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;->b:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5$3;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;)V

    const/4 v2, -0x1

    invoke-virtual {p1, v2, v0, v1}, Lo/PendingIntent;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 860
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;->a:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    .line 861
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;->b:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->kz:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5$1;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;)V

    invoke-virtual {p1, v0, v1, v2}, Lo/PendingIntent;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 872
    :cond_0
    invoke-virtual {p1}, Lo/PendingIntent;->show()V

    return-void
.end method
