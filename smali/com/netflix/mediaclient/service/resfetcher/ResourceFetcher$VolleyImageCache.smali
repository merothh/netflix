.class Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$VolleyImageCache;
.super Lcom/netflix/mediaclient/util/gfx/BitmapLruCache;
.source "ResourceFetcher.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageCache;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/gfx/BitmapLruCache;-><init>(I)V

    .line 444
    return-void
.end method
