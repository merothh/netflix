.class public interface abstract Lcom/netflix/mediaclient/servicemgr/IPlayer;
.super Ljava/lang/Object;
.source "IPlayer.java"


# static fields
.field public static final EXTRA_TYPE:Ljava/lang/String; = "lookupType"

.field public static final LOCAL_INTENT_CATEGORY:Ljava/lang/String; = "com.netflix.mediaclient.intent.category.PLAYER"

.field public static final PLAYER_LOCAL_PLAYBACK_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_ENDED"

.field public static final PLAYER_LOCAL_PLAYBACK_PAUSED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_PAUSED"

.field public static final PLAYER_LOCAL_PLAYBACK_STARTED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_STARTED"

.field public static final PLAYER_LOCAL_PLAYBACK_UNPAUSED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_UNPAUSED"

.field public static final PLAYER_SUBTITLE_CONFIG_CHANGED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PLAYER_SUBTITLE_CONFIG_CHANGED"


# virtual methods
.method public abstract addPlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V
.end method

.method public abstract canUpdatePosition(I)Z
.end method

.method public abstract close()V
.end method

.method public abstract getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;
.end method

.method public abstract getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;
.end method

.method public abstract getBifFrame(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract getCurrentAudioTrack()Lcom/netflix/mediaclient/media/AudioSource;
.end method

.method public abstract getCurrentPlayableId()J
.end method

.method public abstract getCurrentPositionMs()I
.end method

.method public abstract getCurrentProgress()I
.end method

.method public abstract getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;
.end method

.method public abstract getDisplayAspectRatioDimension()Landroid/graphics/Point;
.end method

.method public abstract getDuration()I
.end method

.method public abstract getManifestCache()Lcom/netflix/mediaclient/servicemgr/IManifestCache;
.end method

.method public abstract getPlayerFileCache()Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;
.end method

.method public abstract getPlayoutMetadata()Lcom/netflix/mediaclient/media/PlayoutMetadata;
.end method

.method public abstract getSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;
.end method

.method public abstract getSubtitleProfileFromMetadata()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
.end method

.method public abstract getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract getXid()Ljava/lang/String;
.end method

.method public abstract isBufferingCompleted()Z
.end method

.method public abstract isManifestCacheEnabled()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract open(JLcom/netflix/mediaclient/ui/common/PlayContext;J)V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract removePlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V
.end method

.method public abstract reportFailedSubtitle(Ljava/lang/String;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;ZLcom/netflix/mediaclient/android/app/Status;[Ljava/lang/String;)V
.end method

.method public abstract reportSubtitleQoe(Ljava/lang/String;II)V
.end method

.method public abstract seekTo(IZ)V
.end method

.method public abstract seekWithFuzzRange(II)V
.end method

.method public abstract selectTracks(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;Z)Z
.end method

.method public abstract setAudioDuck(Z)V
.end method

.method public abstract setJPlayerListener(Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;)V
.end method

.method public abstract setSurface(Landroid/view/Surface;)V
.end method

.method public abstract setSurfaceHolder(Landroid/view/SurfaceHolder;)V
.end method

.method public abstract setVideoBitrateRange(II)V
.end method

.method public abstract unpause()V
.end method
