.class Lo/Re$4;
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
.field final synthetic b:Lo/Re;


# direct methods
.method constructor <init>(Lo/Re;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lo/Re$4;->b:Lo/Re;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 145
    iget-object p2, p0, Lo/Re$4;->b:Lo/Re;

    invoke-virtual {p2}, Lo/Re;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p2

    .line 146
    invoke-static {p2}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    invoke-static {p2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 148
    iget-object p2, p0, Lo/Re$4;->b:Lo/Re;

    invoke-static {p2}, Lo/Re;->c(Lo/Re;)Lo/nS;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 150
    iget-object v0, p0, Lo/Re$4;->b:Lo/Re;

    invoke-static {v0}, Lo/Re;->a(Lo/Re;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lo/nS;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "offlineErrorDialog"

    const-string v0, "downloadResumeAction offlineAgent is null"

    .line 152
    invoke-static {p2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    :cond_1
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->mM:I

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lo/adk;->c(II)V

    .line 158
    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
