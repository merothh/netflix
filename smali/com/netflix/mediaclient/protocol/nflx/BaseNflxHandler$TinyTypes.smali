.class public final enum Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TinyTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

.field public static final enum b:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

.field public static final enum c:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

.field public static final enum d:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

.field public static final enum e:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

.field public static final enum f:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

.field private static final synthetic g:[Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

.field private static final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum i:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

.field public static final enum j:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 115
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    const/4 v1, 0x0

    const-string v2, "NO_TYPE"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->c:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    .line 116
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    const/4 v2, 0x1

    const-string v3, "MOVIE_TYPE"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->b:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    const/4 v3, 0x2

    const-string v4, "DISC_TYPE"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->e:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    const/4 v4, 0x3

    const-string v5, "PROGRAM_TYPE"

    invoke-direct {v0, v5, v4}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->d:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    const/4 v5, 0x4

    const-string v6, "SERIES_TYPE"

    invoke-direct {v0, v6, v5}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->a:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    const/4 v6, 0x5

    const-string v7, "SEASON_TYPE"

    invoke-direct {v0, v7, v6}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->j:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    const/4 v7, 0x6

    const-string v8, "CLIP_TYPE"

    invoke-direct {v0, v8, v7}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->f:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    const/4 v8, 0x7

    const-string v9, "PERSON_TYPE"

    invoke-direct {v0, v9, v8}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->i:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    .line 114
    sget-object v9, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->c:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    aput-object v9, v0, v1

    sget-object v9, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->b:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    aput-object v9, v0, v2

    sget-object v2, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->e:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    aput-object v2, v0, v3

    sget-object v2, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->d:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    aput-object v2, v0, v4

    sget-object v2, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->a:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    aput-object v2, v0, v5

    sget-object v2, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->j:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    aput-object v2, v0, v6

    sget-object v2, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->f:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    aput-object v2, v0, v7

    sget-object v2, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->i:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    aput-object v2, v0, v8

    sput-object v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->g:[Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    .line 118
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->h:Landroid/util/SparseArray;

    .line 120
    invoke-static {}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->values()[Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    move-result-object v0

    .line 121
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 122
    sget-object v4, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->h:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->ordinal()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static b(I)Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;
    .locals 1

    .line 127
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;
    .locals 1

    .line 114
    const-class v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;
    .locals 1

    .line 114
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->g:[Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    return-object v0
.end method
