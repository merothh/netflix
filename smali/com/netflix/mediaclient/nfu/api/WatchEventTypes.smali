.class public final enum Lcom/netflix/mediaclient/nfu/api/WatchEventTypes;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/nfu/api/WatchEventTypes;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/netflix/mediaclient/nfu/api/WatchEventTypes;

.field private static final synthetic c:[Lcom/netflix/mediaclient/nfu/api/WatchEventTypes;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/netflix/mediaclient/nfu/api/WatchEventTypes;

    new-instance v2, Lcom/netflix/mediaclient/nfu/api/WatchEventTypes;

    const/4 v3, 0x0

    const-string v4, "EndPlay"

    .line 4
    invoke-direct {v2, v4, v3, v0}, Lcom/netflix/mediaclient/nfu/api/WatchEventTypes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/netflix/mediaclient/nfu/api/WatchEventTypes;->b:Lcom/netflix/mediaclient/nfu/api/WatchEventTypes;

    aput-object v2, v1, v3

    sput-object v1, Lcom/netflix/mediaclient/nfu/api/WatchEventTypes;->c:[Lcom/netflix/mediaclient/nfu/api/WatchEventTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/netflix/mediaclient/nfu/api/WatchEventTypes;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/nfu/api/WatchEventTypes;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/nfu/api/WatchEventTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/nfu/api/WatchEventTypes;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/nfu/api/WatchEventTypes;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/nfu/api/WatchEventTypes;->c:[Lcom/netflix/mediaclient/nfu/api/WatchEventTypes;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/nfu/api/WatchEventTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/nfu/api/WatchEventTypes;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/netflix/mediaclient/nfu/api/WatchEventTypes;->d:I

    return v0
.end method
