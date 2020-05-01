.class public Lcom/netflix/mediaclient/media/JPlayer/JPlayer$AudioDataSource;
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
    .line 79
    const-class v0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$AudioDataSource;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$AudioDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestData(Ljava/nio/ByteBuffer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 81
    new-instance v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;

    invoke-direct {v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;-><init>()V

    .line 82
    new-instance v2, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$AudioDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-direct {v2, v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;-><init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)V

    .line 84
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$AudioDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0, p1, v4, v2}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$000(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;Ljava/nio/ByteBuffer;ZLcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;)I

    move-result v0

    .line 98
    :goto_0
    sget-boolean v3, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$AudioDataSource;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    iget v3, v2, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;->mDataSize:I

    if-eq v0, v3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 88
    :cond_0
    const-string/jumbo v0, "NF_JPlayer"

    const-string/jumbo v3, "WITH NON-DIRECT BYTEBUFFER"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 90
    if-nez v0, :cond_1

    .line 91
    iput v6, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->size:I

    .line 92
    const/16 v0, 0x100

    iput v0, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->flags:I

    .line 93
    const-string/jumbo v0, "NF_JPlayer"

    const-string/jumbo v2, "can\'t get bytearray"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 105
    :goto_1
    return-object v0

    .line 96
    :cond_1
    iget-object v3, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$AudioDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v3, v0, v4, v2}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$100(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;[BZLcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;)I

    move-result v0

    goto :goto_0

    .line 100
    :cond_2
    iget-wide v4, v2, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;->mTimeStamp:J

    iput-wide v4, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->timestamp:J

    .line 101
    iget v0, v2, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;->mFlags:I

    iput v0, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->flags:I

    .line 102
    iget v0, v2, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;->mDataSize:I

    iput v0, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource$BufferMeta;->size:I

    .line 103
    iget v0, v2, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;->mDataSize:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 104
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v0, v1

    .line 105
    goto :goto_1
.end method
