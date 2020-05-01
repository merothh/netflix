.class Lo/RSAPublicKeySpec$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RSAPublicKeySpec;->c()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[I>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/RSAPublicKeySpec;


# direct methods
.method constructor <init>(Lo/RSAPublicKeySpec;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lo/RSAPublicKeySpec$5;->c:Lo/RSAPublicKeySpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 94
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lo/RSAPublicKeySpec$5;->d([I[I)I

    move-result p1

    return p1
.end method

.method public d([I[I)I
    .locals 1

    const/4 v0, 0x0

    .line 97
    aget p1, p1, v0

    aget p2, p2, v0

    sub-int/2addr p1, p2

    return p1
.end method
