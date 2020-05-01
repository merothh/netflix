.class public Lcom/netflix/msl/msg/MessageHeader$HeaderData;
.super Ljava/lang/Object;
.source "MessageHeader.java"


# instance fields
.field public final capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

.field public final handshake:Z

.field public final keyRequestData:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/keyx/KeyRequestData;",
            ">;"
        }
    .end annotation
.end field

.field public final keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

.field public final messageId:J

.field public final nonReplayableId:Ljava/lang/Long;

.field public final recipient:Ljava/lang/String;

.field public final renewable:Z

.field public final serviceTokens:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;"
        }
    .end annotation
.end field

.field public final userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

.field public final userIdToken:Lcom/netflix/msl/tokens/UserIdToken;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/Long;ZZLcom/netflix/msl/msg/MessageCapabilities;Ljava/util/Set;Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/userauth/UserAuthenticationData;Lcom/netflix/msl/tokens/UserIdToken;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/Long;",
            "ZZ",
            "Lcom/netflix/msl/msg/MessageCapabilities;",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/keyx/KeyRequestData;",
            ">;",
            "Lcom/netflix/msl/keyx/KeyResponseData;",
            "Lcom/netflix/msl/userauth/UserAuthenticationData;",
            "Lcom/netflix/msl/tokens/UserIdToken;",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->recipient:Ljava/lang/String;

    .line 188
    iput-wide p2, p0, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->messageId:J

    .line 189
    iput-object p4, p0, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->nonReplayableId:Ljava/lang/Long;

    .line 190
    iput-boolean p5, p0, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->renewable:Z

    .line 191
    iput-boolean p6, p0, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->handshake:Z

    .line 192
    iput-object p7, p0, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    .line 193
    iput-object p8, p0, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->keyRequestData:Ljava/util/Set;

    .line 194
    iput-object p9, p0, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    .line 195
    iput-object p10, p0, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    .line 196
    iput-object p11, p0, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 197
    iput-object p12, p0, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->serviceTokens:Ljava/util/Set;

    .line 198
    return-void
.end method
