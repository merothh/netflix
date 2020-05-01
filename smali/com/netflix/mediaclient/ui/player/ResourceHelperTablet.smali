.class public final Lcom/netflix/mediaclient/ui/player/ResourceHelperTablet;
.super Lcom/netflix/mediaclient/ui/player/ResourceHelper;
.source "ResourceHelperTablet.java"


# static fields
.field protected static final PROGRESSBAR_TOP_BOTTOM_PADDING_IN_DIP_TABLET:I = 0x2

.field protected static final TIMELINE_HEIGHT_IN_DIP_TABLET:I = 0x28

.field protected static final TIMELINE_THUMB_OFFSET_IN_DIP:I = 0x10


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/ResourceHelper;-><init>()V

    const v0, 0x7f020112

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperTablet;->pause:I

    const v0, 0x7f020115

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperTablet;->play:I

    const v0, 0x7f02014c

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperTablet;->zoomIn:I

    const v0, 0x7f02014d

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperTablet;->zoomOut:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperTablet;->timelineHeightInDip:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperTablet;->timelineHeightPaddingInDip:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperTablet;->timelineThumbOffsetInDip:I

    return-void
.end method
