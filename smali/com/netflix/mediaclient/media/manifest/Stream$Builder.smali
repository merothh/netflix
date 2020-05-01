.class public abstract Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/media/manifest/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bitrate(I)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
.end method

.method public abstract build()Lcom/netflix/mediaclient/media/manifest/Stream;
.end method

.method public abstract contentProfile(Ljava/lang/String;)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
.end method

.method public abstract downloadableId(Ljava/lang/String;)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
.end method

.method public abstract framerateScale(I)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
.end method

.method public abstract framerateValue(I)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
.end method

.method public abstract isDrm(Z)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
.end method

.method public abstract moov(Lo/su;)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
.end method

.method public abstract newStreamId(Ljava/lang/String;)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
.end method

.method public abstract peakBitrate(I)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
.end method

.method public abstract resH(I)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
.end method

.method public abstract resW(I)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
.end method

.method public abstract sidx(Lo/su;)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
.end method

.method public abstract size(J)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
.end method

.method public abstract urls(Ljava/util/List;)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Url;",
            ">;)",
            "Lcom/netflix/mediaclient/media/manifest/Stream$Builder;"
        }
    .end annotation
.end method

.method public abstract vmaf(I)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;
.end method
