.class Lcom/netflix/android/org/json/zip/Huff$Symbol;
.super Ljava/lang/Object;
.source "Huff.java"

# interfaces
.implements Lcom/netflix/android/org/json/zip/PostMortem;


# instance fields
.field public back:Lcom/netflix/android/org/json/zip/Huff$Symbol;

.field public final integer:I

.field public next:Lcom/netflix/android/org/json/zip/Huff$Symbol;

.field public one:Lcom/netflix/android/org/json/zip/Huff$Symbol;

.field public weight:J

.field public zero:Lcom/netflix/android/org/json/zip/Huff$Symbol;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->integer:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->weight:J

    iput-object v2, p0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->next:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    iput-object v2, p0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->back:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    iput-object v2, p0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->one:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    iput-object v2, p0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->zero:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    return-void
.end method


# virtual methods
.method public postMortem(Lcom/netflix/android/org/json/zip/PostMortem;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    check-cast p1, Lcom/netflix/android/org/json/zip/Huff$Symbol;

    iget v0, p0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->integer:I

    iget v3, p1, Lcom/netflix/android/org/json/zip/Huff$Symbol;->integer:I

    if-ne v0, v3, :cond_0

    iget-wide v4, p0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->weight:J

    iget-wide v6, p1, Lcom/netflix/android/org/json/zip/Huff$Symbol;->weight:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->back:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iget-object v3, p1, Lcom/netflix/android/org/json/zip/Huff$Symbol;->back:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    if-eqz v3, :cond_3

    move v3, v1

    :goto_2
    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->zero:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    iget-object v3, p0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->one:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/netflix/android/org/json/zip/Huff$Symbol;->zero:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    if-nez v0, :cond_0

    move v0, v1

    :goto_3
    if-nez v3, :cond_5

    iget-object v1, p1, Lcom/netflix/android/org/json/zip/Huff$Symbol;->one:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    if-nez v1, :cond_0

    :goto_4
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    iget-object v1, p1, Lcom/netflix/android/org/json/zip/Huff$Symbol;->zero:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/zip/Huff$Symbol;->postMortem(Lcom/netflix/android/org/json/zip/PostMortem;)Z

    move-result v0

    goto :goto_3

    :cond_5
    iget-object v0, p1, Lcom/netflix/android/org/json/zip/Huff$Symbol;->one:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    invoke-virtual {v3, v0}, Lcom/netflix/android/org/json/zip/Huff$Symbol;->postMortem(Lcom/netflix/android/org/json/zip/PostMortem;)Z

    move-result v0

    goto :goto_4
.end method
