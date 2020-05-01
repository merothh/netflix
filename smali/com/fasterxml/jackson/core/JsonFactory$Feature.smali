.class public final enum Lcom/fasterxml/jackson/core/JsonFactory$Feature;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/core/JsonFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/core/JsonFactory$Feature;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

.field public static final enum c:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

.field public static final enum d:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

.field public static final enum e:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

.field private static final synthetic i:[Lcom/fasterxml/jackson/core/JsonFactory$Feature;


# instance fields
.field private final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 78
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "INTERN_FIELD_NAMES"

    invoke-direct {v0, v3, v1, v2}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->d:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    .line 88
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    const-string v3, "CANONICALIZE_FIELD_NAMES"

    invoke-direct {v0, v3, v2, v2}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->b:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    .line 104
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    const/4 v3, 0x2

    const-string v4, "FAIL_ON_SYMBOL_HASH_OVERFLOW"

    invoke-direct {v0, v4, v3, v2}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->e:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    .line 121
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    const/4 v4, 0x3

    const-string v5, "USE_THREAD_LOCAL_FOR_BUFFER_RECYCLING"

    invoke-direct {v0, v5, v4, v2}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->c:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    .line 59
    sget-object v5, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->d:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    aput-object v5, v0, v1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->b:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->e:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->c:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->i:[Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->a:Z

    return-void
.end method

.method public static c()I
    .locals 6

    .line 136
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->values()[Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 137
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->b()I

    move-result v4

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonFactory$Feature;
    .locals 1

    .line 59
    const-class v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/JsonFactory$Feature;
    .locals 1

    .line 59
    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->i:[Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/JsonFactory$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->a:Z

    return v0
.end method

.method public b()I
    .locals 2

    .line 146
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method

.method public c(I)Z
    .locals 1

    .line 145
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->b()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
