.class Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;
.super Ljava/lang/Object;
.source "VideoWindowForPostplayWithAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final REFRESH_RATE:I

.field private mExecuteOnEndOfAnimation:Ljava/lang/Runnable;

.field private mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

.field private mRunning:Z

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 144
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->this$0:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/16 v0, 0x14

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->REFRESH_RATE:I

    .line 145
    if-nez p2, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameters can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    .line 149
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mExecuteOnEndOfAnimation:Ljava/lang/Runnable;

    .line 150
    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;Ljava/lang/Runnable;Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$1;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;-><init>(Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;Ljava/lang/Runnable;)V

    return-void
.end method

.method private calculateOffset(FFF)F
    .locals 1

    .prologue
    .line 230
    mul-float v0, p1, p2

    mul-float/2addr v0, p3

    .line 234
    return v0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 155
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 158
    const/4 v3, 0x0

    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getDurationInMS()I

    move-result v0

    div-int/lit8 v0, v0, 0x14

    .line 160
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getStartTopMargin()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getEndTopMargin()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float v6, v1, v2

    .line 161
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getStartLeftMargin()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getEndLeftMargin()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float v7, v1, v2

    .line 162
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getStartScale()F

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getEndScale()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v0, v0

    div-float v8, v1, v0

    .line 164
    const/4 v0, 0x1

    .line 165
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getStartTopMargin()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getEndTopMargin()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 166
    const/4 v0, -0x1

    .line 169
    :cond_0
    const/4 v1, 0x1

    .line 170
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getStartLeftMargin()I

    move-result v2

    iget-object v9, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v9}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getEndLeftMargin()I

    move-result v9

    if-le v2, v9, :cond_1

    .line 171
    const/4 v1, -0x1

    .line 174
    :cond_1
    const/4 v2, 0x1

    .line 175
    iget-object v9, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v9}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getStartScale()F

    move-result v9

    iget-object v10, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v10}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getEndScale()F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 176
    const/4 v2, -0x1

    .line 189
    :cond_2
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mRunning:Z

    .line 190
    :goto_0
    iget-boolean v9, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mRunning:Z

    if-eqz v9, :cond_5

    .line 192
    sget-object v9, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "in loop"

    invoke-static {v9, v10}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    iget-object v9, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v9}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getDurationInMS()I

    move-result v9

    int-to-long v12, v9

    cmp-long v9, v10, v12

    if-ltz v9, :cond_3

    .line 195
    sget-object v9, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Exit!"

    invoke-static {v9, v10}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mRunning:Z

    goto :goto_0

    .line 198
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 199
    iget-object v9, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v9}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getStartLeftMargin()I

    move-result v9

    int-to-float v10, v3

    int-to-float v11, v1

    invoke-direct {p0, v7, v10, v11}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->calculateOffset(FFF)F

    move-result v10

    float-to-int v10, v10

    add-int/2addr v9, v10

    .line 200
    iget-object v10, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v10}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getStartTopMargin()I

    move-result v10

    int-to-float v11, v3

    int-to-float v12, v0

    invoke-direct {p0, v6, v11, v12}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->calculateOffset(FFF)F

    move-result v11

    float-to-int v11, v11

    add-int/2addr v10, v11

    .line 201
    iget-object v11, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v11}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getStartScale()F

    move-result v11

    int-to-float v12, v3

    mul-float/2addr v12, v8

    int-to-float v13, v2

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    .line 203
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 204
    sget-object v12, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Count # "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sget-object v12, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "left: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-object v12, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "top: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sget-object v12, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "scale: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_4
    iget-object v12, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->this$0:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;

    invoke-virtual {v12, v9, v10, v11}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->resizeVideo(IIF)V

    .line 213
    :try_start_0
    sget-object v9, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Sleep"

    invoke-static {v9, v10}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-wide/16 v10, 0x14

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 215
    :catch_0
    move-exception v9

    .line 216
    sget-object v9, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Interupped"

    invoke-static {v9, v10}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mRunning:Z

    goto/16 :goto_0

    .line 222
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->this$0:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getEndLeftMargin()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getEndTopMargin()I

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getEndScale()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->resizeVideo(IIF)V

    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mExecuteOnEndOfAnimation:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 224
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->this$0:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->mContext:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mExecuteOnEndOfAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 226
    :cond_6
    return-void
.end method
