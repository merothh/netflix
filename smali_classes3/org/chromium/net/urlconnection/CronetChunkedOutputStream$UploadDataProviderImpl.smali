.class Lorg/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;
.super Lorg/chromium/net/UploadDataProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UploadDataProviderImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;


# direct methods
.method private constructor <init>(Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;

    invoke-direct {p0}, Lorg/chromium/net/UploadDataProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;Lorg/chromium/net/urlconnection/CronetChunkedOutputStream$1;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;-><init>(Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;)V

    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public read(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 105
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;

    invoke-static {v1}, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->access$100(Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->access$100(Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 107
    iget-object p2, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;

    invoke-static {p2}, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->access$100(Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 108
    iget-object p2, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;

    invoke-static {p2}, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->access$200(Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/chromium/net/UploadDataSink;->onReadSucceeded(Z)V

    .line 109
    iget-object p1, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;

    invoke-static {p1}, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->access$200(Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 111
    iget-object p1, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;

    invoke-static {p1}, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->access$300(Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;)Lorg/chromium/net/urlconnection/MessageLoop;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/net/urlconnection/MessageLoop;->quit()V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->access$100(Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 115
    iget-object v1, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;

    invoke-static {v1}, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->access$100(Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;

    invoke-static {v2}, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->access$100(Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 116
    iget-object v1, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;

    invoke-static {v1}, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->access$100(Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 117
    iget-object p2, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;

    invoke-static {p2}, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->access$100(Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 p2, 0x0

    .line 118
    invoke-virtual {p1, p2}, Lorg/chromium/net/UploadDataSink;->onReadSucceeded(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public rewind(Lorg/chromium/net/UploadDataSink;)V
    .locals 3

    .line 124
    new-instance v0, Ljava/net/HttpRetryException;

    const-string v1, "Cannot retry streamed Http body"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lorg/chromium/net/UploadDataSink;->onRewindError(Ljava/lang/Exception;)V

    return-void
.end method
