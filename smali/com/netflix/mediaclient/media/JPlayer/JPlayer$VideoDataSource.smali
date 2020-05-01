.class public Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoDataSource;
.super Ljava/lang/Object;
.source "JPlayer.java"

# interfaces
.implements Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const-class v0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoDataSource;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestData(Ljava/nio/ByteBuffer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;
    .locals 9

    .prologue
    const/16 v8, 0x100

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 111
    new-instance v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;

    invoke-direct {v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;-><init>()V

    .line 112
    new-instance v2, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-direct {v2, v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;-><init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)V

    .line 131
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0, p1, v6, v2}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$000(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;Ljava/nio/ByteBuffer;ZLcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;)I

    move-result v0

    .line 145
    :goto_0
    sget-boolean v3, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoDataSource;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    iget v3, v2, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;->mDataSize:I

    if-eq v0, v3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 135
    :cond_0
    const-string/jumbo v0, "NF_JPlayer"

    const-string/jumbo v3, "WITH NON-DIRECT BYTEBUFFER"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 137
    if-nez v0, :cond_1

    .line 138
    iput v6, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->size:I

    .line 139
    iput v8, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->flags:I

    .line 140
    const-string/jumbo v0, "NF_JPlayer"

    const-string/jumbo v2, "can\'t get bytearray"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 188
    :goto_1
    return-object v0

    .line 143
    :cond_1
    iget-object v3, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v3, v0, v6, v2}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$100(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;[BZLcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;)I

    move-result v0

    goto :goto_0

    .line 146
    :cond_2
    iput v6, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->offset:I

    .line 147
    iget-wide v4, v2, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;->mTimeStamp:J

    iput-wide v4, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->timestamp:J

    .line 148
    iget v0, v2, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$200(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    iput v7, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->flags:I

    .line 151
    iget v0, v2, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;->mDataSize:I

    iput v0, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->size:I

    .line 167
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v2, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->size:I

    if-ge v0, v2, :cond_3

    .line 168
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iput v0, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->size:I

    .line 171
    :cond_3
    :try_start_0
    iget v0, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->size:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_3
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v0, v1

    .line 188
    goto :goto_1

    .line 153
    :cond_4
    iput v8, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->flags:I

    .line 154
    iput v6, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->size:I

    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$300(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)V

    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0, v7}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$402(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;Z)Z

    goto :goto_2

    .line 164
    :cond_5
    iget v0, v2, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;->mFlags:I

    iput v0, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->flags:I

    .line 165
    iget v0, v2, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;->mDataSize:I

    iput v0, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->size:I

    goto :goto_2

    .line 172
    :catch_0
    move-exception v0

    .line 174
    iput v6, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->size:I

    goto :goto_3
.end method
