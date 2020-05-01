.class final Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack;
.super Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/media/manifest/AutoValue_VideoTrack$GsonTypeAdapter;
    }
.end annotation


# direct methods
.method constructor <init>(IILjava/lang/String;IIIILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/sw;Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/sw;",
            "Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct/range {p0 .. p13}, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;-><init>(IILjava/lang/String;IIIILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/sw;Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;)V

    return-void
.end method
