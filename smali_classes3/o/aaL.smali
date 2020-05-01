.class public final Lo/aaL;
.super Lo/ResourceCursorTreeAdapter;
.source ""


# instance fields
.field private f:I

.field public g:Lo/AR;

.field private i:I

.field public j:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field private k:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/aaL;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

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

    invoke-direct/range {v0 .. v5}, Lo/aaL;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lo/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 24
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 25
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/aaL;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a(Lo/AR;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V
    .locals 2

    const-string p3, "video"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "trackingInfoHolder"

    invoke-static {p2, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p2, p0, Lo/aaL;->a:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    const-string p3, "EMPTY"

    .line 55
    iput-object p3, p0, Lo/aaL;->h:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lo/aaL;->b:Lo/AR;

    .line 58
    invoke-virtual {p0, p1}, Lo/aaL;->b(Lo/AR;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    const-string p4, "getImageUrl(video) ?: \"\""

    invoke-static {p3, p4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-static {p3}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p3

    const/4 p4, 0x4

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x4

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    invoke-virtual {p0, p3}, Lo/aaL;->setVisibility(I)V

    .line 61
    iget-object p3, p0, Lo/aaL;->e:Lo/ResourceCursorAdapter;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-virtual {p3, v1, p1, p2}, Lo/ResourceCursorAdapter;->b(Landroid/view/View;Lo/AR;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 63
    invoke-virtual {p0, p1}, Lo/aaL;->b(Lo/AR;)Ljava/lang/String;

    move-result-object p2

    .line 64
    move-object p3, p2

    check-cast p3, Ljava/lang/CharSequence;

    if-eqz p3, :cond_3

    invoke-static {p3}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p3, 0x1

    :goto_3
    if-eqz p3, :cond_4

    .line 65
    invoke-virtual {p0, p4}, Lo/aaL;->setVisibility(I)V

    const/4 p1, 0x0

    .line 66
    invoke-virtual {p0, p1}, Lo/aaL;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 68
    :cond_4
    invoke-virtual {p0, v0}, Lo/aaL;->setVisibility(I)V

    .line 69
    invoke-interface {p1}, Lo/AR;->getTitle()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lo/aaL;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 70
    new-instance p1, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 71
    invoke-virtual {p1, p2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 72
    sget p2, Lo/aax$Application;->e:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Ljava/lang/Integer;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 73
    iget-object p2, p0, Lo/aaL;->k:Lio/reactivex/SingleObserver;

    invoke-virtual {p1, p2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lio/reactivex/SingleObserver;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Lo/aaL;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 77
    :goto_4
    invoke-virtual {p0}, Lo/aaL;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p2, p0, Lo/aaL;->f:I

    if-ne p1, p2, :cond_5

    invoke-virtual {p0}, Lo/aaL;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget p2, p0, Lo/aaL;->i:I

    if-eq p1, p2, :cond_6

    .line 78
    :cond_5
    invoke-virtual {p0}, Lo/aaL;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p2, p0, Lo/aaL;->f:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 79
    invoke-virtual {p0}, Lo/aaL;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p2, p0, Lo/aaL;->i:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 80
    invoke-virtual {p0}, Lo/aaL;->requestLayout()V

    :cond_6
    return-void
.end method

.method public synthetic c(Ljava/lang/Object;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V
    .locals 0

    .line 22
    check-cast p1, Lo/AR;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/aaL;->a(Lo/AR;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V

    return-void
.end method

.method public final p()V
    .locals 4

    .line 48
    iget-object v0, p0, Lo/aaL;->g:Lo/AR;

    if-nez v0, :cond_0

    const-string v1, "video"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lo/aaL;->j:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-nez v1, :cond_1

    const-string v2, "tih"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    iget v2, p0, Lo/aaL;->l:I

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lo/aaL;->a(Lo/AR;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V

    return-void
.end method

.method public final setBoxArtHeight(I)V
    .locals 0

    .line 31
    iput p1, p0, Lo/aaL;->i:I

    return-void
.end method

.method public final setBoxArtWidth(I)V
    .locals 0

    .line 28
    iput p1, p0, Lo/aaL;->f:I

    return-void
.end method

.method public final setRank(I)V
    .locals 0

    .line 40
    iput p1, p0, Lo/aaL;->l:I

    return-void
.end method

.method public final setSearchResultViewAssetLoaded(Lio/reactivex/SingleObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lo/aaL;->k:Lio/reactivex/SingleObserver;

    return-void
.end method

.method public final setTih(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lo/aaL;->j:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-void
.end method

.method public final setVideo(Lo/AR;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lo/aaL;->g:Lo/AR;

    return-void
.end method
