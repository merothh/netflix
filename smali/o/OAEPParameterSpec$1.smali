.class Lo/OAEPParameterSpec$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OAEPParameterSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lo/ByteArrayInputStream<",
        "Ljava/lang/String;",
        "Ljava/lang/Float;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/OAEPParameterSpec;


# direct methods
.method constructor <init>(Lo/OAEPParameterSpec;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lo/OAEPParameterSpec$1;->c:Lo/OAEPParameterSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Lo/ByteArrayInputStream;

    check-cast p2, Lo/ByteArrayInputStream;

    invoke-virtual {p0, p1, p2}, Lo/OAEPParameterSpec$1;->e(Lo/ByteArrayInputStream;Lo/ByteArrayInputStream;)I

    move-result p1

    return p1
.end method

.method public e(Lo/ByteArrayInputStream;Lo/ByteArrayInputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ByteArrayInputStream<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Lo/ByteArrayInputStream<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)I"
        }
    .end annotation

    .line 29
    iget-object p1, p1, Lo/ByteArrayInputStream;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 30
    iget-object p2, p2, Lo/ByteArrayInputStream;->b:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    cmpl-float v0, p2, p1

    if-lez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
