.class Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;
.super Ljava/lang/Object;
.source "TargetContext.java"


# static fields
.field private static final TIMEOUT_WAITING_FOR_STATE_CHANGE:J = 0x7530L

.field private static final TIME_WINDOW_IGNORE_VOLUME:J = 0xbb8L


# instance fields
.field private mCatalogId:Ljava/lang/String;

.field private mCurrentState:Ljava/lang/String;

.field private mDuration:I

.field private mEpisodeId:Ljava/lang/String;

.field private mExpectedVolume:I

.field private mTargetStateTransitionStarted:Z

.field private mTime:I

.field private mTimeMarked4StateTransition:J

.field private mTimeSetVolume:J

.field private mVolume:I

.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/TargetContext;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 748
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mTime:I

    .line 755
    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mVolume:I

    .line 756
    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mDuration:I

    .line 761
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mTargetStateTransitionStarted:Z

    .line 762
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mTimeMarked4StateTransition:J

    return-void
.end method

.method private notifyState(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;)V
    .locals 6

    .prologue
    .line 909
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;->getTime()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mTime:I

    .line 910
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mTimeSetVolume:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 911
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;->getVolume()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mVolume:I

    .line 916
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    const-string/jumbo v0, "nf_mdx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TargetContext: PlayerStateManager notifyState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1500(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    iget v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mTime:I

    iget v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mVolume:I

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->state(Ljava/lang/String;Ljava/lang/String;II)V

    .line 921
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCatalogId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;->getCatalogId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mEpisodeId:Ljava/lang/String;

    .line 922
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;->getEpisodeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mDuration:I

    .line 923
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;->getDuration()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 924
    :cond_1
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;->getCatalogId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCatalogId:Ljava/lang/String;

    .line 925
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;->getEpisodeId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mEpisodeId:Ljava/lang/String;

    .line 926
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mDuration:I

    .line 927
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1500(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCatalogId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mEpisodeId:Ljava/lang/String;

    iget v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mDuration:I

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->movieMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 929
    :cond_2
    return-void

    .line 913
    :cond_3
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mExpectedVolume:I

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mVolume:I

    .line 914
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "TargetContext: PlayerStateManager overide volume"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public changeState(Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 765
    if-nez p1, :cond_1

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1200(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1200(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Ljava/lang/String;

    move-result-object v0

    .line 769
    :goto_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;->getCurrentState()Ljava/lang/String;

    move-result-object v1

    .line 770
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 771
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "TargetContext: changeState, new state is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 768
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$900(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 775
    :cond_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;->getPostplayState()Ljava/lang/String;

    move-result-object v2

    .line 777
    const-string/jumbo v3, "PLAYING"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string/jumbo v3, "PAUSE"

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string/jumbo v3, "prepause"

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    .line 778
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string/jumbo v3, "preseek"

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string/jumbo v3, "PLAYING"

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    .line 779
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 780
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1300(Lcom/netflix/mediaclient/service/mdx/TargetContext;Ljava/lang/String;)V

    .line 786
    :cond_4
    :goto_2
    const-string/jumbo v3, "PLAYING"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 787
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1500(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    move-result-object v3

    invoke-interface {v3, v0, v5, v5, v2}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->simplePlaybackState(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 792
    :cond_5
    :goto_3
    const-string/jumbo v2, "PLAY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 793
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1500(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    move-result-object v2

    const-string/jumbo v3, "preplay"

    iget v4, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mTime:I

    iget v5, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mVolume:I

    invoke-interface {v2, v0, v3, v4, v5}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->state(Ljava/lang/String;Ljava/lang/String;II)V

    .line 796
    :cond_6
    const-string/jumbo v2, "PROGRESS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "PLAY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 797
    :cond_7
    iput-boolean v6, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mTargetStateTransitionStarted:Z

    .line 798
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mTimeMarked4StateTransition:J

    .line 804
    :cond_8
    :goto_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    const-string/jumbo v0, "nf_mdx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TargetContext: PlayerStateManager state changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 781
    :cond_9
    const-string/jumbo v3, "STOP"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "END_PLAYBACK"

    .line 782
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "FATAL_ERROR"

    .line 783
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 784
    :cond_a
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v3, v0, v2}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1400(Lcom/netflix/mediaclient/service/mdx/TargetContext;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 788
    :cond_b
    const-string/jumbo v3, "PAUSE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 789
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1500(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    move-result-object v3

    invoke-interface {v3, v0, v6, v5, v2}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->simplePlaybackState(Ljava/lang/String;ZZLjava/lang/String;)V

    goto/16 :goto_3

    .line 799
    :cond_c
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mTargetStateTransitionStarted:Z

    if-eqz v2, :cond_8

    .line 800
    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    .line 801
    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->notifyState(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;)V

    goto :goto_4
.end method

.method public forceToEndPlayback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 931
    const-string/jumbo v0, "END_PLAYBACK"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    .line 932
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1400(Lcom/netflix/mediaclient/service/mdx/TargetContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    return-void
.end method

.method public getCatalogId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCatalogId:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mEpisodeId:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetPlayerState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    return-object v0
.end method

.method public receivedCommand(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 858
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1200(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1200(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Ljava/lang/String;

    move-result-object v0

    .line 859
    :goto_0
    const-string/jumbo v1, "PLAYER_PLAY"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 860
    iput-boolean v4, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mTargetStateTransitionStarted:Z

    .line 861
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mTimeMarked4StateTransition:J

    .line 862
    const-string/jumbo v1, "preplay"

    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    .line 863
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCatalogId:Ljava/lang/String;

    .line 864
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mEpisodeId:Ljava/lang/String;

    .line 865
    iput v7, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mTime:I

    .line 866
    iput v7, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mVolume:I

    .line 867
    iput v7, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mDuration:I

    .line 868
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1500(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    move-result-object v1

    invoke-interface {v1, v0, v4, v5, v6}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->simplePlaybackState(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 892
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1500(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    iget v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mTime:I

    iget v4, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mVolume:I

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->state(Ljava/lang/String;Ljava/lang/String;II)V

    .line 893
    :cond_0
    return-void

    .line 858
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$900(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 870
    :cond_2
    const-string/jumbo v1, "PLAYER_RESUME"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 871
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mTimeMarked4StateTransition:J

    .line 872
    iput-boolean v4, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mTargetStateTransitionStarted:Z

    .line 873
    const-string/jumbo v1, "preplay"

    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    .line 874
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1500(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    move-result-object v1

    invoke-interface {v1, v0, v4, v5, v6}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->simplePlaybackState(Ljava/lang/String;ZZLjava/lang/String;)V

    goto :goto_1

    .line 875
    :cond_3
    const-string/jumbo v1, "PLAYER_PAUSE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 876
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mTimeMarked4StateTransition:J

    .line 877
    iput-boolean v5, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mTargetStateTransitionStarted:Z

    .line 878
    const-string/jumbo v1, "prepause"

    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    .line 879
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1500(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    move-result-object v1

    invoke-interface {v1, v0, v5, v5, v6}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->simplePlaybackState(Ljava/lang/String;ZZLjava/lang/String;)V

    goto :goto_1

    .line 880
    :cond_4
    const-string/jumbo v1, "PLAYER_SKIP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "PLAYER_SET_CURRENT_TIME"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 881
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mTimeMarked4StateTransition:J

    .line 882
    iput-boolean v4, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mTargetStateTransitionStarted:Z

    .line 883
    const-string/jumbo v1, "preseek"

    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    .line 884
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1500(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    move-result-object v1

    invoke-interface {v1, v0, v4, v5, v6}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->simplePlaybackState(Ljava/lang/String;ZZLjava/lang/String;)V

    goto :goto_1

    .line 885
    :cond_6
    const-string/jumbo v1, "PLAYER_GET_CURRENT_STATE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 887
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1500(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    iget v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mTime:I

    iget v4, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mVolume:I

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->state(Ljava/lang/String;Ljava/lang/String;II)V

    .line 888
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1500(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCatalogId:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mEpisodeId:Ljava/lang/String;

    iget v4, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mDuration:I

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->movieMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1
.end method

.method public setTargetVolume(I)V
    .locals 2

    .prologue
    .line 895
    iput p1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mExpectedVolume:I

    .line 896
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mTimeSetVolume:J

    .line 898
    return-void
.end method

.method public updateState(Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 809
    if-nez p1, :cond_0

    .line 856
    :goto_0
    return-void

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1200(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1200(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Ljava/lang/String;

    move-result-object v0

    .line 813
    :goto_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;->getCurrentState()Ljava/lang/String;

    move-result-object v4

    .line 814
    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 815
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "TargetContext: updateState, new state is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 812
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$900(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 819
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;->getPostplayState()Ljava/lang/String;

    move-result-object v5

    .line 820
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mTimeMarked4StateTransition:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x7530

    cmp-long v1, v6, v8

    if-ltz v1, :cond_3

    move v1, v2

    .line 823
    :goto_2
    if-nez v1, :cond_7

    .line 824
    const-string/jumbo v1, "PLAYING"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mTargetStateTransitionStarted:Z

    if-eqz v1, :cond_4

    move v1, v2

    .line 825
    :goto_3
    const-string/jumbo v6, "preplay"

    iget-object v7, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v1, :cond_5

    .line 827
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "TargetContext: updateState, still in preplay"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v1, v3

    .line 820
    goto :goto_2

    :cond_4
    move v1, v3

    .line 824
    goto :goto_3

    .line 829
    :cond_5
    const-string/jumbo v6, "prepause"

    iget-object v7, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string/jumbo v6, "PAUSE"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 831
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "TargetContext: updateState, still in prepause"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 833
    :cond_6
    const-string/jumbo v6, "preseek"

    iget-object v7, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-nez v1, :cond_7

    .line 835
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "TargetContext: updateState, still in preseek"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 839
    :cond_7
    const-string/jumbo v1, "PLAYING"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 840
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1300(Lcom/netflix/mediaclient/service/mdx/TargetContext;Ljava/lang/String;)V

    .line 841
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1500(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    move-result-object v1

    invoke-interface {v1, v0, v3, v3, v5}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->simplePlaybackState(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 847
    :cond_8
    :goto_4
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 848
    iput-object v4, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    .line 855
    :cond_9
    :goto_5
    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->notifyState(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;)V

    goto/16 :goto_0

    .line 842
    :cond_a
    const-string/jumbo v1, "PAUSE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 843
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1300(Lcom/netflix/mediaclient/service/mdx/TargetContext;Ljava/lang/String;)V

    .line 844
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1500(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    move-result-object v1

    invoke-interface {v1, v0, v2, v3, v5}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->simplePlaybackState(Ljava/lang/String;ZZLjava/lang/String;)V

    goto :goto_4

    .line 849
    :cond_b
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 851
    iput-object v4, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    .line 852
    const-string/jumbo v1, "nf_mdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TargetContext: updateState, state updated before stateChange from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method
