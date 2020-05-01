.class Lcom/netflix/android/org/json/zip/Huff$Symbol;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/android/org/json/zip/PostMortem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/android/org/json/zip/Huff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Symbol"
.end annotation


# instance fields
.field public back:Lcom/netflix/android/org/json/zip/Huff$Symbol;

.field public final integer:I

.field public next:Lcom/netflix/android/org/json/zip/Huff$Symbol;

.field public one:Lcom/netflix/android/org/json/zip/Huff$Symbol;

.field public weight:J

.field public zero:Lcom/netflix/android/org/json/zip/Huff$Symbol;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->integer:I

    const-wide/16 v0, 0x0

    .line 89
    iput-wide v0, p0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->weight:J

    const/4 p1, 0x0

    .line 90
    iput-object p1, p0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->next:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    .line 91
    iput-object p1, p0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->back:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    .line 92
    iput-object p1, p0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->one:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    .line 93
    iput-object p1, p0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->zero:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    return-void
.end method


# virtual methods
.method public postMortem(Lcom/netflix/android/org/json/zip/PostMortem;)Z
    .locals 6

    .line 98
    check-cast p1, Lcom/netflix/android/org/json/zip/Huff$Symbol;

    .line 100
    iget v0, p0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->integer:I

    iget v1, p1, Lcom/netflix/android/org/json/zip/Huff$Symbol;->integer:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    iget-wide v0, p0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->weight:J

    iget-wide v3, p1, Lcom/netflix/android/org/json/zip/Huff$Symbol;->weight:J

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    goto :goto_2

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->back:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p1, Lcom/netflix/android/org/json/zip/Huff$Symbol;->back:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eq v0, v3, :cond_3

    return v2

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->zero:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    .line 107
    iget-object v3, p0, Lcom/netflix/android/org/json/zip/Huff$Symbol;->one:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    if-nez v0, :cond_4

    .line 109
    iget-object v0, p1, Lcom/netflix/android/org/json/zip/Huff$Symbol;->zero:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    if-eqz v0, :cond_5

    return v2

    .line 113
    :cond_4
    iget-object v1, p1, Lcom/netflix/android/org/json/zip/Huff$Symbol;->zero:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/zip/Huff$Symbol;->postMortem(Lcom/netflix/android/org/json/zip/PostMortem;)Z

    move-result v1

    :cond_5
    if-nez v3, :cond_6

    .line 116
    iget-object p1, p1, Lcom/netflix/android/org/json/zip/Huff$Symbol;->one:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    if-eqz p1, :cond_7

    return v2

    .line 120
    :cond_6
    iget-object p1, p1, Lcom/netflix/android/org/json/zip/Huff$Symbol;->one:Lcom/netflix/android/org/json/zip/Huff$Symbol;

    invoke-virtual {v3, p1}, Lcom/netflix/android/org/json/zip/Huff$Symbol;->postMortem(Lcom/netflix/android/org/json/zip/PostMortem;)Z

    move-result v1

    :cond_7
    return v1

    :cond_8
    :goto_2
    return v2
.end method
