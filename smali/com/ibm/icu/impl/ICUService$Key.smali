.class public Lcom/ibm/icu/impl/ICUService$Key;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/ibm/icu/impl/ICUService$Key;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public canonicalID()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUService$Key;->id:Ljava/lang/String;

    return-object v0
.end method

.method public currentDescriptor()Ljava/lang/String;
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUService$Key;->currentID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public currentID()Ljava/lang/String;
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUService$Key;->canonicalID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fallback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
