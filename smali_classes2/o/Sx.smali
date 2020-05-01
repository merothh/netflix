.class public final Lo/Sx;
.super Lo/DP;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lo/Sx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    const-string p2, "context"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->bk:I

    invoke-direct {p0, p1, p2}, Lo/DP;-><init>(Landroid/content/Context;I)V

    .line 13
    new-instance p1, Lo/Sx$4;

    invoke-direct {p1, p0}, Lo/Sx$4;-><init>(Lo/Sx;)V

    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Lo/Sx;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILo/amc;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 10
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    invoke-direct {p0, p1, p2}, Lo/Sx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic e(Lo/Sx;)Lcom/netflix/mediaclient/ui/offline/DownloadButton;
    .locals 0

    .line 10
    iget-object p0, p0, Lo/Sx;->f:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    return-object p0
.end method


# virtual methods
.method protected c(Lo/AS;)V
    .locals 1

    const-string v0, "episodeDetails"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lo/Sx;->e:Landroid/widget/ImageView;

    const-string v0, "playButton"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
