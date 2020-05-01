.class public Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;
.super Ljava/lang/Object;
.source "MediaDecoderBase.java"


# static fields
.field private static final UPDATE_PAHSE1_INTERVAL_MS:J = 0x14L

.field private static final UPDATE_PAHSE1_SAMPLE_COUNT:J = 0xbb80L

.field private static final UPDATE_PAHSE2_INTERVAL_MS:J = 0xc8L

.field private static final UPDATE_PAHSE2_SAMPLE_COUNT:J = 0x3a980L

.field private static final UPDATE_PAHSE3_INTERVAL_MS:J = 0x7d0L


# instance fields
.field private mLastPts:J

.field private mLastUpdateTime:J

.field private mRunning:Z

.field final synthetic this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;)V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 131
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    .line 133
    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mRunning:Z

    .line 135
    return-void
.end method

.method constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;J)V
    .locals 2

    .prologue
    .line 136
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-wide p2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    .line 138
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mRunning:Z

    .line 140
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 143
    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    .line 144
    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J

    .line 145
    return-void
.end method

.method public get()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 147
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 148
    const-wide/16 v0, -0x1

    .line 155
    :goto_0
    return-wide v0

    .line 149
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mRunning:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J

    sub-long/2addr v0, v2

    .line 152
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    add-long/2addr v0, v2

    goto :goto_0

    .line 155
    :cond_1
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    goto :goto_0
.end method

.method public pause()J
    .locals 6

    .prologue
    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J

    sub-long/2addr v0, v2

    .line 170
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 171
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    .line 173
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mRunning:Z

    .line 174
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J

    .line 177
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    return-wide v0
.end method

.method public shouldUpdate(J)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J

    sub-long/2addr v2, v4

    .line 186
    const-wide/32 v4, 0xbb80

    cmp-long v4, p1, v4

    if-gtz v4, :cond_2

    .line 187
    const-wide/16 v4, 0x14

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 187
    goto :goto_0

    .line 188
    :cond_2
    const-wide/32 v4, 0x3a980

    cmp-long v4, p1, v4

    if-gtz v4, :cond_3

    .line 189
    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 191
    :cond_3
    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public unpause()J
    .locals 2

    .prologue
    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mRunning:Z

    .line 181
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    return-wide v0
.end method

.method public update(J)V
    .locals 3

    .prologue
    .line 158
    iput-wide p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J

    .line 160
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->unpause()J

    .line 162
    return-void
.end method

.method public updateAndPause(J)V
    .locals 3

    .prologue
    .line 164
    iput-wide p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mRunning:Z

    .line 167
    return-void
.end method
