.class public final enum Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;
.super Ljava/lang/Enum;
.source "CommandEndedEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

.field public static final enum swipe:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

.field public static final enum touch:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

    const-string/jumbo v1, "swipe"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;->swipe:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

    .line 102
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

    const-string/jumbo v1, "touch"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;->touch:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;->swipe:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;->touch:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;->$VALUES:[Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;
    .locals 1

    .prologue
    .line 100
    const-class v0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;->$VALUES:[Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

    return-object v0
.end method
