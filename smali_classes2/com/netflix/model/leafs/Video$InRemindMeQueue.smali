.class public final Lcom/netflix/model/leafs/Video$InRemindMeQueue;
.super Lo/BlockedNumberContract;
.source ""

# interfaces
.implements Lo/DocumentsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InRemindMeQueue"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InQueue"


# instance fields
.field public inRemindMeQueue:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Lo/BlockedNumberContract;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lo/BlockedNumberContract;-><init>()V

    .line 120
    iput-boolean p1, p0, Lcom/netflix/model/leafs/Video$InRemindMeQueue;->inRemindMeQueue:Z

    return-void
.end method


# virtual methods
.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 128
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/netflix/model/leafs/Video$InRemindMeQueue;->inRemindMeQueue:Z

    return-void

    .line 129
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse element for InRemindMeQueue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InQueue"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 130
    iput-boolean p1, p0, Lcom/netflix/model/leafs/Video$InRemindMeQueue;->inRemindMeQueue:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InRemindMeQueue [inRemindMeQueue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$InRemindMeQueue;->inRemindMeQueue:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
