.class public Lo/KeyAgreement;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lo/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BiConsumer<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/KeyAgreement;->a:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lo/BiConsumer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer<",
            "*>;)I"
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lo/BiConsumer;->e()I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 40
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 42
    sget-object v0, Lo/KeyAgreement;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 45
    sget-object v0, Lo/KeyAgreement;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 46
    sget-object v1, Lo/KeyAgreement;->a:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method a(Lo/Locale;I)Lo/BiConsumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Locale;",
            "I)",
            "Lo/BiConsumer<",
            "*>;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lo/KeyAgreement;->b:Lo/BiConsumer;

    if-eqz v0, :cond_0

    .line 69
    invoke-static {v0}, Lo/KeyAgreement;->a(Lo/BiConsumer;)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 71
    iget-object p1, p0, Lo/KeyAgreement;->b:Lo/BiConsumer;

    return-object p1

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Last model did not match expected view type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lo/Locale;->b(Ljava/lang/RuntimeException;)V

    .line 78
    invoke-virtual {p1}, Lo/Locale;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BiConsumer;

    .line 79
    invoke-static {v0}, Lo/KeyAgreement;->a(Lo/BiConsumer;)I

    move-result v1

    if-ne v1, p2, :cond_1

    return-object v0

    .line 85
    :cond_2
    new-instance p1, Lo/IntUnaryOperator;

    invoke-direct {p1}, Lo/IntUnaryOperator;-><init>()V

    .line 86
    invoke-virtual {p1}, Lo/IntUnaryOperator;->e()I

    move-result v0

    if-ne p2, v0, :cond_3

    return-object p1

    .line 90
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find model for view type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method b(Lo/BiConsumer;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer<",
            "*>;)I"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lo/KeyAgreement;->b:Lo/BiConsumer;

    .line 29
    invoke-static {p1}, Lo/KeyAgreement;->a(Lo/BiConsumer;)I

    move-result p1

    return p1
.end method
