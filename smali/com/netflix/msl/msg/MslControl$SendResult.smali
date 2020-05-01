.class Lcom/netflix/msl/msg/MslControl$SendResult;
.super Ljava/lang/Object;
.source "MslControl.java"


# instance fields
.field public final handshake:Z

.field public final request:Lcom/netflix/msl/msg/MessageOutputStream;


# direct methods
.method private constructor <init>(Lcom/netflix/msl/msg/MessageOutputStream;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$SendResult;->request:Lcom/netflix/msl/msg/MessageOutputStream;

    iput-boolean p2, p0, Lcom/netflix/msl/msg/MslControl$SendResult;->handshake:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/msl/msg/MessageOutputStream;ZLcom/netflix/msl/msg/MslControl$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/msl/msg/MslControl$SendResult;-><init>(Lcom/netflix/msl/msg/MessageOutputStream;Z)V

    return-void
.end method
