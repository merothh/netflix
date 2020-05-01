.class public final Lcom/netflix/mediaclient/ui/player/ResourceHelperPhone;
.super Lcom/netflix/mediaclient/ui/player/ResourceHelper;
.source "ResourceHelperPhone.java"


# static fields
.field protected static final PROGRESSBAR_TOP_BOTTOM_PADDING_IN_DIP_PHONE:I = 0x1

.field protected static final TIMELINE_HEIGHT_IN_DIP:I = 0x14

.field protected static final TIMELINE_THUMB_OFFSET_IN_DIP:I = 0xc


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/ResourceHelper;-><init>()V

    const v0, 0x7f020112

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperPhone;->pause:I

    const v0, 0x7f020115

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperPhone;->play:I

    const v0, 0x7f02014c

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperPhone;->zoomIn:I

    const v0, 0x7f02014d

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperPhone;->zoomOut:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperPhone;->timelineHeightInDip:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperPhone;->timelineHeightPaddingInDip:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperPhone;->timelineThumbOffsetInDip:I

    return-void
.end method
