.class public Lorg/linphone/core/LinphoneBufferImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/linphone/core/LinphoneBuffer;


# instance fields
.field private mData:[B

.field private mSize:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lorg/linphone/core/LinphoneBufferImpl;->mData:[B

    .line 10
    iput p2, p0, Lorg/linphone/core/LinphoneBufferImpl;->mSize:I

    return-void
.end method


# virtual methods
.method public getContent()[B
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/linphone/core/LinphoneBufferImpl;->mData:[B

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 25
    iget v0, p0, Lorg/linphone/core/LinphoneBufferImpl;->mSize:I

    return v0
.end method

.method public setContent([B)V
    .locals 0

    .line 20
    iput-object p1, p0, Lorg/linphone/core/LinphoneBufferImpl;->mData:[B

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 30
    iput p1, p0, Lorg/linphone/core/LinphoneBufferImpl;->mSize:I

    return-void
.end method
