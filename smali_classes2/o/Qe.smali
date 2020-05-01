.class public final Lo/Qe;
.super Lcom/netflix/mediaclient/ui/offline/DownloadButton;
.source ""


# instance fields
.field private f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final n()V
    .locals 3

    .line 31
    invoke-virtual {p0}, Lo/Qe;->d()Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lo/Qc;->e:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 42
    :goto_0
    iget-object v0, p0, Lo/Qe;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_1

    .line 44
    :cond_1
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->ak:I

    goto :goto_1

    .line 39
    :cond_2
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->nz:I

    goto :goto_1

    .line 36
    :cond_3
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->nH:I

    goto :goto_1

    .line 33
    :cond_4
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->nw:I

    .line 47
    :goto_1
    iget-object v1, p0, Lo/Qe;->e:Lo/ImageSwitcher;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lo/Qe;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 20
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->am:I

    return v0
.end method

.method public h()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lo/Qe;->n()V

    return-void
.end method

.method public final setDefaultLabelTextId(Ljava/lang/Integer;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lo/Qe;->f:Ljava/lang/Integer;

    .line 16
    invoke-direct {p0}, Lo/Qe;->n()V

    return-void
.end method
