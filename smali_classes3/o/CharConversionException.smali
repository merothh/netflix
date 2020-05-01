.class public final Lo/CharConversionException;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final c(Landroid/util/SparseArray;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v0, Lo/CharConversionException$Activity;

    invoke-direct {v0, p0}, Lo/CharConversionException$Activity;-><init>(Landroid/util/SparseArray;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method
