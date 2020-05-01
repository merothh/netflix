.class final Lcom/airbnb/epoxy/EpoxyRecyclerView$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/epoxy/EpoxyRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/BiConsumer<",
        "*>;U::",
        "Lo/NullCipher;",
        "P::",
        "Lo/KeyGenerator;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lo/ExemptionMechanism;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ExemptionMechanism<",
            "TT;TU;TP;>;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:Lo/alB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alB<",
            "TP;>;"
        }
    .end annotation
.end field

.field private final e:Lo/alN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alN<",
            "Landroid/content/Context;",
            "Ljava/lang/RuntimeException;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final a()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView$Application;->c:I

    return v0
.end method

.method public final b()Lo/alN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/alN<",
            "Landroid/content/Context;",
            "Ljava/lang/RuntimeException;",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView$Application;->e:Lo/alN;

    return-object v0
.end method

.method public final d()Lo/alB;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/alB<",
            "TP;>;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView$Application;->d:Lo/alB;

    return-object v0
.end method

.method public final e()Lo/ExemptionMechanism;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/ExemptionMechanism<",
            "TT;TU;TP;>;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView$Application;->a:Lo/ExemptionMechanism;

    return-object v0
.end method
