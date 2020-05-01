.class public Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardLayout;
.super Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;
.source "WPStandardCardLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected createVideoMask()V
    .locals 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardLayout;->videoMaskDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardLayout;->cardWidth:I

    iget v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardLayout;->cardHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x30

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardLayout;->videoMaskImageView:Landroid/widget/ImageView;

    return-void
.end method

.method protected onHideVideo()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardLayout;->imageView:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardImageView;->showShadowOnly(Z)V

    return-void
.end method

.method protected onVideoPlaybackStarted()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardLayout;->imageView:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardImageView;->showShadowOnly(Z)V

    return-void
.end method

.method protected storeViews(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardImageView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a009f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardLayout;->cardWidth:I

    const v3, 0x7f0a009d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardLayout;->cardHeight:I

    const v3, 0x7f0a009e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardLayout;->cardWidth:I

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v3, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x30

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    neg-int v2, v1

    neg-int v1, v1

    invoke-virtual {v3, v2, v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardLayout;->imageView:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WPStandardCardLayout{} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
