.class abstract Lcom/netflix/android/org/json/zip/Keep;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/android/org/json/zip/None;
.implements Lcom/netflix/android/org/json/zip/PostMortem;


# instance fields
.field protected capacity:I

.field protected length:I

.field protected power:I

.field protected uses:[J


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/netflix/android/org/json/zip/JSONzip;->twos:[I

    aget p1, v0, p1

    iput p1, p0, Lcom/netflix/android/org/json/zip/Keep;->capacity:I

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/netflix/android/org/json/zip/Keep;->length:I

    .line 44
    iput p1, p0, Lcom/netflix/android/org/json/zip/Keep;->power:I

    .line 45
    iget p1, p0, Lcom/netflix/android/org/json/zip/Keep;->capacity:I

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/netflix/android/org/json/zip/Keep;->uses:[J

    return-void
.end method

.method public static age(J)J
    .locals 3

    const-wide/16 v0, 0x20

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const-wide/16 p0, 0x10

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x2

    .line 56
    div-long/2addr p0, v0

    :goto_0
    return-wide p0
.end method


# virtual methods
.method public bitsize()I
    .locals 3

    .line 65
    :goto_0
    sget-object v0, Lcom/netflix/android/org/json/zip/JSONzip;->twos:[I

    iget v1, p0, Lcom/netflix/android/org/json/zip/Keep;->power:I

    aget v0, v0, v1

    iget v2, p0, Lcom/netflix/android/org/json/zip/Keep;->length:I

    if-ge v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 66
    iput v1, p0, Lcom/netflix/android/org/json/zip/Keep;->power:I

    goto :goto_0

    :cond_0
    return v1
.end method

.method public tick(I)V
    .locals 5

    .line 75
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Keep;->uses:[J

    aget-wide v1, v0, p1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, v0, p1

    return-void
.end method

.method public abstract value(I)Ljava/lang/Object;
.end method
