.class final Lo/KeepalivePacketData$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/KeepalivePacketData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TaskDescription"
.end annotation


# instance fields
.field public final a:Landroid/os/Message;


# direct methods
.method private constructor <init>(Landroid/os/Message;)V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lo/KeepalivePacketData$TaskDescription;->a:Landroid/os/Message;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Message;Lo/KeepalivePacketData$2;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Lo/KeepalivePacketData$TaskDescription;-><init>(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 1

    .line 229
    iget-object v0, p0, Lo/KeepalivePacketData$TaskDescription;->a:Landroid/os/Message;

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 230
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
