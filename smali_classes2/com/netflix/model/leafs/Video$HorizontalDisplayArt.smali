.class public Lcom/netflix/model/leafs/Video$HorizontalDisplayArt;
.super Lcom/netflix/model/leafs/Video$VideoArtwork;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HorizontalDisplayArt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "horzDispUrl"

    .line 674
    invoke-direct {p0, v0}, Lcom/netflix/model/leafs/Video$VideoArtwork;-><init>(Ljava/lang/String;)V

    return-void
.end method