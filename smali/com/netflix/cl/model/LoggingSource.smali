.class public final enum Lcom/netflix/cl/model/LoggingSource;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/cl/model/LoggingSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/cl/model/LoggingSource;

.field public static final enum android:Lcom/netflix/cl/model/LoggingSource;

.field public static final enum ios:Lcom/netflix/cl/model/LoggingSource;

.field public static final enum nfa:Lcom/netflix/cl/model/LoggingSource;

.field public static final enum studioWeb:Lcom/netflix/cl/model/LoggingSource;

.field public static final enum tvui:Lcom/netflix/cl/model/LoggingSource;

.field public static final enum windows:Lcom/netflix/cl/model/LoggingSource;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 12
    new-instance v0, Lcom/netflix/cl/model/LoggingSource;

    const/4 v1, 0x0

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Lcom/netflix/cl/model/LoggingSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/LoggingSource;->android:Lcom/netflix/cl/model/LoggingSource;

    .line 13
    new-instance v0, Lcom/netflix/cl/model/LoggingSource;

    const/4 v2, 0x1

    const-string v3, "ios"

    invoke-direct {v0, v3, v2}, Lcom/netflix/cl/model/LoggingSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/LoggingSource;->ios:Lcom/netflix/cl/model/LoggingSource;

    .line 14
    new-instance v0, Lcom/netflix/cl/model/LoggingSource;

    const/4 v3, 0x2

    const-string v4, "tvui"

    invoke-direct {v0, v4, v3}, Lcom/netflix/cl/model/LoggingSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/LoggingSource;->tvui:Lcom/netflix/cl/model/LoggingSource;

    .line 15
    new-instance v0, Lcom/netflix/cl/model/LoggingSource;

    const/4 v4, 0x3

    const-string v5, "windows"

    invoke-direct {v0, v5, v4}, Lcom/netflix/cl/model/LoggingSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/LoggingSource;->windows:Lcom/netflix/cl/model/LoggingSource;

    .line 16
    new-instance v0, Lcom/netflix/cl/model/LoggingSource;

    const/4 v5, 0x4

    const-string v6, "studioWeb"

    invoke-direct {v0, v6, v5}, Lcom/netflix/cl/model/LoggingSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/LoggingSource;->studioWeb:Lcom/netflix/cl/model/LoggingSource;

    .line 17
    new-instance v0, Lcom/netflix/cl/model/LoggingSource;

    const/4 v6, 0x5

    const-string v7, "nfa"

    invoke-direct {v0, v7, v6}, Lcom/netflix/cl/model/LoggingSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/LoggingSource;->nfa:Lcom/netflix/cl/model/LoggingSource;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/netflix/cl/model/LoggingSource;

    .line 7
    sget-object v7, Lcom/netflix/cl/model/LoggingSource;->android:Lcom/netflix/cl/model/LoggingSource;

    aput-object v7, v0, v1

    sget-object v1, Lcom/netflix/cl/model/LoggingSource;->ios:Lcom/netflix/cl/model/LoggingSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/cl/model/LoggingSource;->tvui:Lcom/netflix/cl/model/LoggingSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/cl/model/LoggingSource;->windows:Lcom/netflix/cl/model/LoggingSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/cl/model/LoggingSource;->studioWeb:Lcom/netflix/cl/model/LoggingSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/cl/model/LoggingSource;->nfa:Lcom/netflix/cl/model/LoggingSource;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/cl/model/LoggingSource;->$VALUES:[Lcom/netflix/cl/model/LoggingSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/cl/model/LoggingSource;
    .locals 1

    .line 7
    const-class v0, Lcom/netflix/cl/model/LoggingSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/cl/model/LoggingSource;

    return-object p0
.end method

.method public static values()[Lcom/netflix/cl/model/LoggingSource;
    .locals 1

    .line 7
    sget-object v0, Lcom/netflix/cl/model/LoggingSource;->$VALUES:[Lcom/netflix/cl/model/LoggingSource;

    invoke-virtual {v0}, [Lcom/netflix/cl/model/LoggingSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/cl/model/LoggingSource;

    return-object v0
.end method
