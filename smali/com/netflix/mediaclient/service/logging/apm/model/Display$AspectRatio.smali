.class public final enum Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;
.super Ljava/lang/Enum;
.source "Display.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;

.field public static final enum _16x9:Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;

.field public static final enum _4x3:Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;


# instance fields
.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 156
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;

    const-string/jumbo v1, "_16x9"

    const-string/jumbo v2, "16x9"

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;->_16x9:Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;

    .line 157
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;

    const-string/jumbo v1, "_4x3"

    const-string/jumbo v2, "4x3"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;->_4x3:Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;

    .line 155
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;->_16x9:Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;->_4x3:Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;->$VALUES:[Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 162
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;->desc:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public static find(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;->_16x9:Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;->desc:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;->_16x9:Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;

    .line 181
    :goto_0
    return-object v0

    .line 178
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;->_4x3:Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;->desc:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    sget-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;->_4x3:Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;

    goto :goto_0

    .line 181
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;
    .locals 1

    .prologue
    .line 155
    const-class v0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;->$VALUES:[Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;->desc:Ljava/lang/String;

    return-object v0
.end method
