.class public final enum Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;
.super Ljava/lang/Enum;
.source "IMedia.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum generic_background:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum media_audioTrackChanged:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum media_buffering:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum media_bufferingComplete:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum media_bufferrange:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum media_endOfStream:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum media_error:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum media_exception:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum media_nccp:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum media_nccpError:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum media_newStream:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum media_openComplete:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum media_removeSubtitle:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum media_setvideobitraterange:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum media_setvideoresolutionrange:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum media_showSubtitle:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum media_skip:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum media_stateChanged:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum media_streamSelected:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum media_subtitleTrackChanged:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum media_subtitledata:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum media_swim:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum media_underflow:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum media_updatePts:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum media_updateVideoBitrate:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum media_videoWindowChanged:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum media_videobitraterangechanged:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

.field public static final enum media_warning:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;


# instance fields
.field protected eventName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "media_openComplete"

    const-string/jumbo v2, "openComplete"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_openComplete:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "media_streamSelected"

    const-string/jumbo v2, "streamSelected"

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_streamSelected:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "media_newStream"

    const-string/jumbo v2, "newStream"

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_newStream:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "media_endOfStream"

    const-string/jumbo v2, "endOfStream"

    invoke-direct {v0, v1, v7, v2}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_endOfStream:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "media_underflow"

    const-string/jumbo v2, "underflow"

    invoke-direct {v0, v1, v8, v2}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_underflow:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "media_buffering"

    const/4 v2, 0x5

    const-string/jumbo v3, "buffering"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_buffering:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "media_bufferingComplete"

    const/4 v2, 0x6

    const-string/jumbo v3, "bufferingComplete"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_bufferingComplete:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "media_updatePts"

    const/4 v2, 0x7

    const-string/jumbo v3, "updatePts"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_updatePts:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "media_updateVideoBitrate"

    const/16 v2, 0x8

    const-string/jumbo v3, "updateVideoBitrate"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_updateVideoBitrate:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "media_audioTrackChanged"

    const/16 v2, 0x9

    const-string/jumbo v3, "audioTrackChanged"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_audioTrackChanged:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "media_nccpError"

    const/16 v2, 0xa

    const-string/jumbo v3, "nccperror"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_nccpError:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "media_nccp"

    const/16 v2, 0xb

    const-string/jumbo v3, "Nccp"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_nccp:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "media_subtitleTrackChanged"

    const/16 v2, 0xc

    const-string/jumbo v3, "subtitleTrackChanged"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_subtitleTrackChanged:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "media_videoWindowChanged"

    const/16 v2, 0xd

    const-string/jumbo v3, "videoWindowChanged"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_videoWindowChanged:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "media_showSubtitle"

    const/16 v2, 0xe

    const-string/jumbo v3, "showSubtitle"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_showSubtitle:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "media_removeSubtitle"

    const/16 v2, 0xf

    const-string/jumbo v3, "removeSubtitle"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_removeSubtitle:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "media_error"

    const/16 v2, 0x10

    const-string/jumbo v3, "error"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_error:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "media_warning"

    const/16 v2, 0x11

    const-string/jumbo v3, "warning"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_warning:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "media_exception"

    const/16 v2, 0x12

    const-string/jumbo v3, "exception"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_exception:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "media_stateChanged"

    const/16 v2, 0x13

    const-string/jumbo v3, "statechanged"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_stateChanged:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "media_bufferrange"

    const/16 v2, 0x14

    const-string/jumbo v3, "bufferrange"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_bufferrange:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "generic_background"

    const/16 v2, 0x15

    const-string/jumbo v3, "background"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->generic_background:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "media_skip"

    const/16 v2, 0x16

    const-string/jumbo v3, "skip"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_skip:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "media_swim"

    const/16 v2, 0x17

    const-string/jumbo v3, "swim"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_swim:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "media_setvideobitraterange"

    const/16 v2, 0x18

    const-string/jumbo v3, "setvideobitraterange"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_setvideobitraterange:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "media_setvideoresolutionrange"

    const/16 v2, 0x19

    const-string/jumbo v3, "setvideoresolutionrange"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_setvideoresolutionrange:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "media_videobitraterangechanged"

    const/16 v2, 0x1a

    const-string/jumbo v3, "videobitraterangechanged"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_videobitraterangechanged:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const-string/jumbo v1, "media_subtitledata"

    const/16 v2, 0x1b

    const-string/jumbo v3, "subtitledata"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_subtitledata:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_openComplete:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_streamSelected:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_newStream:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_endOfStream:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_underflow:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_buffering:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_bufferingComplete:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_updatePts:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_updateVideoBitrate:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_audioTrackChanged:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_nccpError:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_nccp:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_subtitleTrackChanged:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_videoWindowChanged:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_showSubtitle:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_removeSubtitle:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_error:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_warning:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_exception:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_stateChanged:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_bufferrange:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->generic_background:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_skip:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_swim:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_setvideobitraterange:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_setvideoresolutionrange:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_videobitraterangechanged:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_subtitledata:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->$VALUES:[Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->eventName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->$VALUES:[Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    return-object v0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->eventName:Ljava/lang/String;

    return-object v0
.end method
