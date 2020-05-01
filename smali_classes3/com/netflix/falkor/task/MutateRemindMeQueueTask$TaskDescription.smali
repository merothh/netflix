.class public final Lcom/netflix/falkor/task/MutateRemindMeQueueTask$TaskDescription;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/falkor/task/MutateRemindMeQueueTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "MutateRemindMeQueueTask"

    .line 75
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$TaskDescription;-><init>()V

    return-void
.end method
