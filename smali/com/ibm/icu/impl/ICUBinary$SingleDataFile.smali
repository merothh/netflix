.class final Lcom/ibm/icu/impl/ICUBinary$SingleDataFile;
.super Lcom/ibm/icu/impl/ICUBinary$DataFile;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUBinary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SingleDataFile"
.end annotation


# instance fields
.field private final path:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 226
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUBinary$DataFile;-><init>(Ljava/lang/String;)V

    .line 227
    iput-object p2, p0, Lcom/ibm/icu/impl/ICUBinary$SingleDataFile;->path:Ljava/io/File;

    return-void
.end method


# virtual methods
.method addBaseNamesInFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    .line 246
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    .line 247
    invoke-virtual {v0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    .line 251
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr v1, p2

    .line 250
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 237
    iget-object p1, p0, Lcom/ibm/icu/impl/ICUBinary$SingleDataFile;->path:Ljava/io/File;

    invoke-static {p1}, Lcom/ibm/icu/impl/ICUBinary;->access$100(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUBinary$SingleDataFile;->path:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
