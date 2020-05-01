.class Lcom/netflix/msl/msg/MslControl$SendResult;
.super Ljava/lang/Object;
.source "MslControl.java"


# instance fields
.field public final handshake:Z

.field public final request:Lcom/netflix/msl/msg/MessageOutputStream;


# direct methods
.method private constructor <init>(Lcom/netflix/msl/msg/MessageOutputStream;Z)V
    .locals 0

    .prologue
    .line 1408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1409
    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$SendResult;->request:Lcom/netflix/msl/msg/MessageOutputStream;

    .line 1410
    iput-boolean p2, p0, Lcom/netflix/msl/msg/MslControl$SendResult;->handshake:Z

    .line 1411
    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/msl/msg/MessageOutputStream;ZLcom/netflix/msl/msg/MslControl$1;)V
    .locals 0

    .prologue
    .line 1398
    invoke-direct {p0, p1, p2}, Lcom/netflix/msl/msg/MslControl$SendResult;-><init>(Lcom/netflix/msl/msg/MessageOutputStream;Z)V

    return-void
.end method
