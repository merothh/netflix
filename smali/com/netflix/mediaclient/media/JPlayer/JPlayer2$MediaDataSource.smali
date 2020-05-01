.class public Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;
.super Ljava/lang/Object;
.source "JPlayer2.java"

# interfaces
.implements Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;


# static fields
.field static final TYPE_AUDIO:Z = true

.field static final TYPE_VIDEO:Z


# instance fields
.field private mIsAudio:Z

.field final synthetic this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Z)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean p2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->mIsAudio:Z

    .line 56
    return-void
.end method


# virtual methods
.method public onRequestData(Ljava/nio/ByteBuffer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 58
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;

    invoke-direct {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;-><init>()V

    .line 59
    iput v1, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    .line 60
    iput v1, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    .line 61
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    iget-boolean v3, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->mIsAudio:Z

    invoke-static {v2, p1, v3, v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$000(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Ljava/nio/ByteBuffer;ZLcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V

    .line 78
    :goto_0
    iget v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 79
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    iget-boolean v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->mIsAudio:Z

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->iv:[B

    if-eqz v2, :cond_0

    .line 82
    const-string/jumbo v2, "NF_JPlayer2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IV size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->iv:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",key size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->key:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",data size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    iget v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 86
    iget v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    new-array v2, v2, [B

    .line 87
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 88
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 89
    const-string/jumbo v2, "NF_JPlayer2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "codecId:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    const-string/jumbo v4, "ec-3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$300(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 97
    :goto_1
    if-nez v1, :cond_4

    .line 116
    :cond_1
    :goto_2
    return-object v0

    .line 65
    :cond_2
    const-string/jumbo v2, "NF_JPlayer2"

    const-string/jumbo v3, "WITH NON-DIRECT BYTEBUFFER"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 67
    if-nez v2, :cond_3

    .line 68
    iput v1, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    .line 69
    const/4 v1, 0x4

    iput v1, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    .line 70
    const-string/jumbo v1, "NF_JPlayer2"

    const-string/jumbo v2, "can\'t get bytearray"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 73
    :cond_3
    iget-object v3, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    iget-boolean v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->mIsAudio:Z

    invoke-static {v3, v2, v4, v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$100(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;[BZLcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V

    goto/16 :goto_0

    .line 94
    :catch_0
    move-exception v2

    .line 95
    const-string/jumbo v2, "NF_JPlayer2"

    const-string/jumbo v3, "reconfig audio decoder failed"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 104
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$400(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->getClock()Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    move-result-object v1

    .line 105
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$400(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->setReferenceClock(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;)V

    .line 106
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$400(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->start()V

    .line 107
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$400(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->unpause()V

    .line 108
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$500(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->setReferenceClock(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;)V

    goto :goto_2

    .line 111
    :cond_5
    iput v1, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    .line 112
    iput v1, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    goto :goto_2
.end method
