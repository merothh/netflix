.class public Lo/Gj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hR;


# instance fields
.field private a:Lo/hK;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lo/Gj;->b:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lo/Gj;->b:Landroid/content/Context;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->fI:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "nf_drm_esn"

    .line 38
    invoke-static {p1, v0}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lo/Gj$5;

    invoke-direct {v0, p0, p3}, Lo/Gj$5;-><init>(Lo/Gj;Z)V

    .line 57
    new-instance p3, Lo/hK;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-direct {p3, v1, p2, p1, v0}, Lo/hK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object p3, p0, Lo/Gj;->a:Lo/hK;

    return-void
.end method

.method static synthetic d(Lo/Gj;)Landroid/content/Context;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/Gj;->b:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Lo/hK;
    .locals 1

    .line 72
    iget-object v0, p0, Lo/Gj;->a:Lo/hK;

    return-object v0
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
