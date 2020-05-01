.class abstract Lcom/ibm/icu/impl/ICUBinary$DataFile;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUBinary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "DataFile"
.end annotation


# instance fields
.field protected final itemPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/ibm/icu/impl/ICUBinary$DataFile;->itemPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method abstract addBaseNamesInFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
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
.end method

.method abstract getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUBinary$DataFile;->itemPath:Ljava/lang/String;

    return-object v0
.end method
