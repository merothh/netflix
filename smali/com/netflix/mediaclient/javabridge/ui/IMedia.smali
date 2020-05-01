.class public interface abstract Lcom/netflix/mediaclient/javabridge/ui/IMedia;
.super Ljava/lang/Object;
.source "IMedia.java"


# static fields
.field public static final CLOSED:I = 0x4

.field public static final NAME:Ljava/lang/String; = "media"

.field public static final OPENING:I = 0x0

.field public static final PATH:Ljava/lang/String; = "nrdp.media"

.field public static final PAUSED:I = 0x2

.field public static final PLAYING:I = 0x1

.field public static final STOPPED:I = 0x3


# virtual methods
.method public abstract addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
.end method

.method public abstract cacheFlush()V
.end method

.method public abstract cachePause()V
.end method

.method public abstract cacheResume()V
.end method

.method public abstract cacheSchedule([Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;)V
.end method

.method public abstract changePlayer(Lcom/netflix/mediaclient/media/PlayerType;)V
.end method

.method public abstract close(Ljava/lang/String;Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;)V
.end method

.method public abstract getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;
.end method

.method public abstract getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;
.end method

.method public abstract getCurrentAudioTrack()Lcom/netflix/mediaclient/media/AudioSource;
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;
.end method

.method public abstract getDisplayAspectRatio()F
.end method

.method public abstract getDisplayAspectRatioDimension()Landroid/graphics/Point;
.end method

.method public abstract getDuration()I
.end method

.method public abstract getMediaPosition()I
.end method

.method public abstract getPlayoutMetadata()Lcom/netflix/mediaclient/media/PlayoutMetadata;
.end method

.method public abstract getState()I
.end method

.method public abstract getSubtitleOutputMode()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;
.end method

.method public abstract getSubtitleProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
.end method

.method public abstract getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;
.end method

.method public abstract getTrickplayUrlList()[Lcom/netflix/mediaclient/media/TrickplayUrl;
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract getWatermark()Lcom/netflix/mediaclient/media/Watermark;
.end method

.method public abstract open(JLcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;JZLcom/netflix/mediaclient/util/PlaybackVolumeMetric;J)V
.end method

.method public abstract pause()V
.end method

.method public abstract play(J)V
.end method

.method public abstract removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
.end method

.method public abstract reportFailedSubtitle(Ljava/lang/String;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;ZLcom/netflix/mediaclient/android/app/Status;[Ljava/lang/String;)V
.end method

.method public abstract reportSubtitleQoe(Ljava/lang/String;II)V
.end method

.method public abstract reset()V
.end method

.method public abstract seekTo(IZ)V
.end method

.method public abstract selectTracks(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;)Z
.end method

.method public abstract setAudioBitrateRange(Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;)V
.end method

.method public abstract setBytesReport(II)V
.end method

.method public abstract setCacheManifestType(I)V
.end method

.method public abstract setMaxCacheByteSize(I)V
.end method

.method public abstract setMaxCacheSize(I)V
.end method

.method public abstract setMaxVideoBufferSize(I)V
.end method

.method public abstract setNetworkProfile(I)V
.end method

.method public abstract setPreviewContentConfig(Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;)V
.end method

.method public abstract setStreamingQoe(Ljava/lang/String;ZZ)V
.end method

.method public abstract setSubtitleOutputMode(Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;)V
.end method

.method public abstract setSubtitleProfile(Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;)V
.end method

.method public abstract setSurface(Landroid/view/Surface;)V
.end method

.method public abstract setThrotteled(Z)V
.end method

.method public abstract setVOapi(JJ)V
.end method

.method public abstract setVideoBitrateRange(II)V
.end method

.method public abstract setVideoResolutionRange(Lcom/netflix/mediaclient/media/VideoResolutionRange;)V
.end method

.method public abstract stop()V
.end method

.method public abstract swim(IZIZ)V
.end method

.method public abstract unpause()V
.end method

.method public abstract updateCellLevelBandwidthMargin(II)V
.end method

.method public abstract volumeChange(Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;)V
.end method
