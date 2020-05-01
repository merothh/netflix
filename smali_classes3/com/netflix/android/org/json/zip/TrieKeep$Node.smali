.class Lcom/netflix/android/org/json/zip/TrieKeep$Node;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/android/org/json/zip/PostMortem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/android/org/json/zip/TrieKeep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Node"
.end annotation


# instance fields
.field private integer:I

.field private next:[Lcom/netflix/android/org/json/zip/TrieKeep$Node;

.field final synthetic this$0:Lcom/netflix/android/org/json/zip/TrieKeep;


# direct methods
.method public constructor <init>(Lcom/netflix/android/org/json/zip/TrieKeep;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->this$0:Lcom/netflix/android/org/json/zip/TrieKeep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->integer:I

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->next:[Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/android/org/json/zip/TrieKeep$Node;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->integer:I

    return p0
.end method

.method static synthetic access$002(Lcom/netflix/android/org/json/zip/TrieKeep$Node;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->integer:I

    return p1
.end method


# virtual methods
.method public get(B)Lcom/netflix/android/org/json/zip/TrieKeep$Node;
    .locals 0

    and-int/lit16 p1, p1, 0xff

    .line 71
    invoke-virtual {p0, p1}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->get(I)Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lcom/netflix/android/org/json/zip/TrieKeep$Node;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->next:[Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public postMortem(Lcom/netflix/android/org/json/zip/PostMortem;)Z
    .locals 5

    .line 79
    check-cast p1, Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "\nMisalign"

    .line 81
    invoke-static {p1}, Lcom/netflix/android/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    return v0

    .line 84
    :cond_0
    iget v1, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->integer:I

    iget v2, p1, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->integer:I

    if-eq v1, v2, :cond_1

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nInteger "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->integer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " <> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->integer:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/android/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    return v0

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->next:[Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 90
    iget-object p1, p1, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->next:[Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    if-nez p1, :cond_2

    return v2

    .line 93
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nNext is null "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->integer:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/android/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    return v0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x100

    if-ge v1, v3, :cond_6

    .line 97
    iget-object v3, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->next:[Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    aget-object v3, v3, v1

    if-eqz v3, :cond_4

    .line 99
    iget-object v4, p1, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->next:[Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->postMortem(Lcom/netflix/android/org/json/zip/PostMortem;)Z

    move-result v3

    if-nez v3, :cond_5

    return v0

    .line 102
    :cond_4
    iget-object v3, p1, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->next:[Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    aget-object v3, v3, v1

    if-eqz v3, :cond_5

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nMisalign "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/android/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    return v0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return v2
.end method

.method public set(BLcom/netflix/android/org/json/zip/TrieKeep$Node;)V
    .locals 0

    and-int/lit16 p1, p1, 0xff

    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->set(ILcom/netflix/android/org/json/zip/TrieKeep$Node;)V

    return-void
.end method

.method public set(ILcom/netflix/android/org/json/zip/TrieKeep$Node;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->next:[Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    if-nez v0, :cond_0

    const/16 v0, 0x100

    new-array v0, v0, [Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    .line 120
    iput-object v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->next:[Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->next:[Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    aput-object p2, v0, p1

    return-void
.end method

.method public vet(B)Lcom/netflix/android/org/json/zip/TrieKeep$Node;
    .locals 0

    and-int/lit16 p1, p1, 0xff

    .line 168
    invoke-virtual {p0, p1}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->vet(I)Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    move-result-object p1

    return-object p1
.end method

.method public vet(I)Lcom/netflix/android/org/json/zip/TrieKeep$Node;
    .locals 2

    .line 151
    invoke-virtual {p0, p1}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->get(I)Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    move-result-object v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    iget-object v1, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->this$0:Lcom/netflix/android/org/json/zip/TrieKeep;

    invoke-direct {v0, v1}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;-><init>(Lcom/netflix/android/org/json/zip/TrieKeep;)V

    .line 154
    invoke-virtual {p0, p1, v0}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->set(ILcom/netflix/android/org/json/zip/TrieKeep$Node;)V

    :cond_0
    return-object v0
.end method
