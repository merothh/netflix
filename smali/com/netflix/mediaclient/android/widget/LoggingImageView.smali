.class public abstract Lcom/netflix/mediaclient/android/widget/LoggingImageView;
.super Lcom/makeramen/RoundedImageView;
.source "LoggingImageView.java"


# static fields
.field private static final LOG_VERBOSE:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/makeramen/RoundedImageView;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/makeramen/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/makeramen/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method protected abstract getLogTag()Ljava/lang/String;
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/makeramen/RoundedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 34
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/makeramen/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/makeramen/RoundedImageView;->setImageResource(I)V

    .line 50
    return-void
.end method
