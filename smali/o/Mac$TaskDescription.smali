.class public final Lo/Mac$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Mac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 186
    invoke-direct {p0}, Lo/Mac$TaskDescription;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lo/OfInt;Lo/alB;Lo/alN;ILjava/util/List;)Lo/Mac;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lo/KeyGenerator;",
            ">(",
            "Lo/OfInt;",
            "Lo/alB<",
            "+TP;>;",
            "Lo/alN<",
            "-",
            "Landroid/content/Context;",
            "-",
            "Ljava/lang/RuntimeException;",
            "Lo/akj;",
            ">;I",
            "Ljava/util/List<",
            "+",
            "Lo/ExemptionMechanism<",
            "+",
            "Lo/BiConsumer<",
            "*>;+",
            "Lo/NullCipher;",
            "+TP;>;>;)",
            "Lo/Mac<",
            "TP;>;"
        }
    .end annotation

    const-string v0, "epoxyAdapter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestHolderFactory"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelPreloaders"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    new-instance v0, Lo/Mac;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lo/Mac;-><init>(Lo/OfInt;Lo/alB;Lo/alN;ILjava/util/List;)V

    return-object v0
.end method

.method public final d(Lo/OfPrimitive;Lo/alB;Lo/alN;ILjava/util/List;)Lo/Mac;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lo/KeyGenerator;",
            ">(",
            "Lo/OfPrimitive;",
            "Lo/alB<",
            "+TP;>;",
            "Lo/alN<",
            "-",
            "Landroid/content/Context;",
            "-",
            "Ljava/lang/RuntimeException;",
            "Lo/akj;",
            ">;I",
            "Ljava/util/List<",
            "+",
            "Lo/ExemptionMechanism<",
            "+",
            "Lo/BiConsumer<",
            "*>;+",
            "Lo/NullCipher;",
            "+TP;>;>;)",
            "Lo/Mac<",
            "TP;>;"
        }
    .end annotation

    const-string v0, "epoxyController"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestHolderFactory"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelPreloaders"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    new-instance v0, Lo/Mac;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lo/Mac;-><init>(Lo/OfPrimitive;Lo/alB;Lo/alN;ILjava/util/List;)V

    return-object v0
.end method
