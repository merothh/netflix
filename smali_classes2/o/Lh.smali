.class public final Lo/Lh;
.super Lo/Lk;
.source ""


# instance fields
.field private g:Lo/GridView;

.field private h:Landroid/widget/ImageView;

.field private i:Lo/LH;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/Lh;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/Lh;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lo/Lk;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 27
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 28
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/Lh;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic b(Lo/Lh;)Lo/LH;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/Lh;->i:Lo/LH;

    return-object p0
.end method


# virtual methods
.method protected b()V
    .locals 7

    .line 38
    invoke-super {p0}, Lo/Lk;->b()V

    .line 39
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->dJ:I

    invoke-virtual {p0, v0}, Lo/Lh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.cw_view_image_view)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/GridView;

    iput-object v0, p0, Lo/Lh;->g:Lo/GridView;

    .line 41
    invoke-virtual {p0}, Lo/Lh;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->cD:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "imageView"

    const/4 v2, 0x0

    const-string v3, "it"

    if-eqz v0, :cond_1

    .line 42
    iget-object v4, p0, Lo/Lh;->g:Lo/GridView;

    if-nez v4, :cond_0

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v4, v0, v2, v5, v6}, Lo/GridView;->e(Lo/GridView;Landroid/graphics/drawable/Drawable;IILjava/lang/Object;)V

    .line 45
    :cond_1
    invoke-virtual {p0}, Lo/Lh;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v4, Lcom/netflix/mediaclient/ui/R$Activity;->bo:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 46
    iget-object v4, p0, Lo/Lh;->g:Lo/GridView;

    if-nez v4, :cond_2

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    invoke-static {v0, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x11

    invoke-virtual {v4, v0, v1}, Lo/GridView;->d(Landroid/graphics/drawable/Drawable;I)V

    .line 49
    :cond_3
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->dL:I

    invoke-virtual {p0, v0}, Lo/Lh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/Lh;->h:Landroid/widget/ImageView;

    .line 50
    new-instance v0, Lo/LH;

    .line 52
    invoke-virtual {p0}, Lo/Lh;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 53
    const-class v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 51
    invoke-static {v1, v3}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 55
    move-object v3, p0

    check-cast v3, Lo/CY;

    .line 50
    invoke-direct {v0, v1, v3}, Lo/LH;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/CY;)V

    iput-object v0, p0, Lo/Lh;->i:Lo/LH;

    .line 57
    iget-object v0, p0, Lo/Lh;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V
    .locals 0

    .line 25
    check-cast p1, Lo/Az;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/Lh;->c(Lo/Az;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V

    return-void
.end method

.method public c(Lo/Az;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V
    .locals 1

    const-string v0, "trackIdProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Lo/Lk;->c(Lo/Az;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V

    .line 71
    iget-object p2, p0, Lo/Lh;->h:Landroid/widget/ImageView;

    new-instance p3, Lcom/netflix/mediaclient/ui/lomo/CwView_Ab23560$update$1;

    invoke-direct {p3, p0}, Lcom/netflix/mediaclient/ui/lomo/CwView_Ab23560$update$1;-><init>(Lo/Lh;)V

    check-cast p3, Lo/alN;

    invoke-static {p2, p1, p3}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    return-void
.end method

.method protected d()I
    .locals 1

    .line 61
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->A:I

    return v0
.end method

.method protected d(Ljava/lang/String;Z)V
    .locals 4

    const-string v0, "contentDescription"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lo/Lh;->f:Lo/Az;

    invoke-virtual {p0, v0}, Lo/Lh;->d(Lo/Az;)Ljava/lang/String;

    move-result-object v0

    .line 97
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 98
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "CwView.loadImage, empty image url"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 102
    :cond_2
    iget-object v1, p0, Lo/Lh;->g:Lo/GridView;

    const-string v2, "imageView"

    if-nez v1, :cond_3

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_3
    new-instance v3, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    invoke-virtual {v3, v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->d(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p2

    invoke-virtual {v1, p2}, Lo/GridView;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 103
    iget-object p2, p0, Lo/Lh;->g:Lo/GridView;

    if-nez p2, :cond_4

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lo/GridView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public m()Z
    .locals 2

    .line 92
    iget-object v0, p0, Lo/Lh;->g:Lo/GridView;

    if-nez v0, :cond_0

    const-string v1, "imageView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/GridView;->j()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
