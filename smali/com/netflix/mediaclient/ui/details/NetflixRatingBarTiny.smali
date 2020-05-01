.class public Lcom/netflix/mediaclient/ui/details/NetflixRatingBarTiny;
.super Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;
.source "NetflixRatingBarTiny.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method


# virtual methods
.method protected getNetflixStarRatingDrawableId()I
    .locals 1

    .prologue
    .line 24
    const v0, 0x7f0201fc

    return v0
.end method

.method protected getUserStarRatingDrawableId()I
    .locals 1

    .prologue
    .line 29
    const v0, 0x7f0201ff

    return v0
.end method
