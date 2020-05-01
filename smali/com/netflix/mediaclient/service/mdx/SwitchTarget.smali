.class public final Lcom/netflix/mediaclient/service/mdx/SwitchTarget;
.super Ljava/lang/Object;
.source "SwitchTarget.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_mdxSwitchTarget"


# instance fields
.field private mBeginSwitchTarget:Z

.field mCallback:Lcom/netflix/mediaclient/service/mdx/SwitchTarget$SwitchTargetInterface;

.field private mNewUuid:Ljava/lang/String;

.field private mStartTime:I

.field private mTargeManger:Lcom/netflix/mediaclient/service/mdx/TargetManager;

.field private mTrackId:I

.field private mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/mdx/TargetManager;Lcom/netflix/mediaclient/service/mdx/SwitchTarget$SwitchTargetInterface;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mTargeManger:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    .line 28
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mCallback:Lcom/netflix/mediaclient/service/mdx/SwitchTarget$SwitchTargetInterface;

    .line 29
    return-void
.end method


# virtual methods
.method public startSwitch(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;II)V
    .locals 2

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mBeginSwitchTarget:Z

    if-eqz v0, :cond_0

    .line 32
    const-string/jumbo v0, "nf_mdxSwitchTarget"

    const-string/jumbo v1, "switching already undergoing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    const-string/jumbo v0, "nf_mdxSwitchTarget"

    const-string/jumbo v1, "current target is not a mdx target"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :goto_0
    return-void

    .line 39
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mBeginSwitchTarget:Z

    .line 40
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mNewUuid:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    .line 42
    iput p4, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mStartTime:I

    .line 43
    iput p5, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mTrackId:I

    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mTargeManger:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->playerStop(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public targetPlaybackStopped(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mBeginSwitchTarget:Z

    if-nez v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mCallback:Lcom/netflix/mediaclient/service/mdx/SwitchTarget$SwitchTargetInterface;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mNewUuid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/SwitchTarget$SwitchTargetInterface;->onSetToNewTarget(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mNewUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    const-string/jumbo v0, "nf_mdxSwitchTarget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start playback on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mNewUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-object v2, v2, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->catalogIdUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-object v2, v2, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeIdUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mStartTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mTargeManger:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mNewUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-object v2, v2, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->catalogIdUrl:Ljava/lang/String;

    iget v3, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mTrackId:I

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-object v4, v4, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeIdUrl:Ljava/lang/String;

    iget v5, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mStartTime:I

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->playerPlay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 57
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mBeginSwitchTarget:Z

    goto :goto_0
.end method
