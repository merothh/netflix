.class public abstract Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;
.super Landroid/widget/ImageView;
.source "WPCardImageView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WPCardImageView"


# instance fields
.field protected closedDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field protected currentBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field protected isCardClosed:Z

.field protected openDrawable:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->isCardClosed:Z

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected abstract init(Landroid/content/Context;)V
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->isCardClosed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs recycleDrawables([Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public releaseResources()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->closedDrawable:Landroid/graphics/drawable/BitmapDrawable;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->openDrawable:Landroid/graphics/drawable/BitmapDrawable;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->currentBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->recycleDrawables([Landroid/graphics/drawable/BitmapDrawable;)V

    iput-object v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->closedDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->openDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->currentBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method public reset(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->isCardClosed:Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->updateDrawableBitmap()V

    return-void
.end method

.method public setDrawables(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WPCardImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDrawables closed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->isCardClosed:Z

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->closedDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->openDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->updateDrawableBitmap()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WPCardImageView{closedDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->closedDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", openDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->openDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", currentBitmapDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->currentBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isCardClosed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->isCardClosed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toggleCardClosed()V
    .locals 2

    const-string/jumbo v0, "WPCardImageView"

    const-string/jumbo v1, "toggleCardClosed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->isCardClosed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->isCardClosed:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDrawableBitmap()V
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->isCardClosed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->closedDrawable:Landroid/graphics/drawable/BitmapDrawable;

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->currentBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->currentBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->openDrawable:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0
.end method
