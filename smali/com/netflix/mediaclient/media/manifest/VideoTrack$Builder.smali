.class public abstract Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/media/manifest/VideoTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/netflix/mediaclient/media/manifest/VideoTrack;
.end method

.method public abstract drmHeader(Lo/sw;)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
.end method

.method public abstract flavor(Ljava/lang/String;)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
.end method

.method public abstract license(Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
.end method

.method public abstract maxCroppedHeight(I)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
.end method

.method public abstract maxCroppedWidth(I)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
.end method

.method public abstract maxHeight(I)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
.end method

.method public abstract maxWidth(I)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
.end method

.method public abstract newTrackId(Ljava/lang/String;)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
.end method

.method public abstract pixelAspectX(I)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
.end method

.method public abstract pixelAspectY(I)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
.end method

.method public abstract profile(Ljava/lang/String;)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
.end method

.method public abstract streams(Ljava/util/List;)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            ">;)",
            "Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;"
        }
    .end annotation
.end method

.method public abstract trackId(Ljava/lang/String;)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
.end method
