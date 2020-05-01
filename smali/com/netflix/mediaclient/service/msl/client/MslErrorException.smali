.class public Lcom/netflix/mediaclient/service/msl/client/MslErrorException;
.super Ljava/lang/Exception;
.source "MslErrorException.java"


# instance fields
.field private mErrorHeader:Lcom/netflix/msl/msg/ErrorHeader;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/msg/ErrorHeader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;->mErrorHeader:Lcom/netflix/msl/msg/ErrorHeader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netflix/msl/msg/ErrorHeader;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;->mErrorHeader:Lcom/netflix/msl/msg/ErrorHeader;

    return-void
.end method


# virtual methods
.method public getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;->mErrorHeader:Lcom/netflix/msl/msg/ErrorHeader;

    return-object v0
.end method
