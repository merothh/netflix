.class public final Lo/Mac;
.super Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Mac$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lo/KeyGenerator;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;"
    }
.end annotation


# static fields
.field public static final e:Lo/Mac$TaskDescription;


# instance fields
.field private a:Lo/amF;

.field private b:I

.field private c:I

.field private d:Lo/amD;

.field private final f:I

.field private final g:Lo/MacSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MacSpi<",
            "TP;>;"
        }
    .end annotation
.end field

.field private final h:Lo/KeyGeneratorSpi;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;",
            "Lo/ExemptionMechanism<",
            "**+TP;>;>;"
        }
    .end annotation
.end field

.field private final j:Lo/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Mac$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Mac$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/Mac;->e:Lo/Mac$TaskDescription;

    return-void
.end method

.method private constructor <init>(Lo/Locale;Lo/alB;Lo/alN;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Locale;",
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
            "**+TP;>;>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;-><init>()V

    iput-object p1, p0, Lo/Mac;->j:Lo/Locale;

    iput p4, p0, Lo/Mac;->f:I

    .line 36
    sget-object p1, Lo/amD;->b:Lo/amD$Application;

    invoke-virtual {p1}, Lo/amD$Application;->d()Lo/amD;

    move-result-object p1

    iput-object p1, p0, Lo/Mac;->d:Lo/amD;

    .line 37
    sget-object p1, Lo/amD;->b:Lo/amD$Application;

    invoke-virtual {p1}, Lo/amD$Application;->d()Lo/amD;

    move-result-object p1

    check-cast p1, Lo/amF;

    iput-object p1, p0, Lo/Mac;->a:Lo/amF;

    const/4 p1, -0x1

    .line 38
    iput p1, p0, Lo/Mac;->c:I

    .line 42
    check-cast p5, Ljava/lang/Iterable;

    const/16 p1, 0xa

    .line 297
    invoke-static {p5, p1}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-static {p1}, Lo/akI;->d(I)I

    move-result p1

    const/16 p4, 0x10

    invoke-static {p1, p4}, Lo/amG;->e(II)I

    move-result p1

    .line 298
    new-instance p4, Ljava/util/LinkedHashMap;

    invoke-direct {p4, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p4, Ljava/util/Map;

    .line 299
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    .line 300
    move-object v0, p5

    check-cast v0, Lo/ExemptionMechanism;

    .line 42
    invoke-virtual {v0}, Lo/ExemptionMechanism;->e()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p4, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 302
    :cond_0
    iput-object p4, p0, Lo/Mac;->i:Ljava/util/Map;

    .line 45
    new-instance p1, Lo/MacSpi;

    iget p4, p0, Lo/Mac;->f:I

    invoke-direct {p1, p4, p2}, Lo/MacSpi;-><init>(ILo/alB;)V

    iput-object p1, p0, Lo/Mac;->g:Lo/MacSpi;

    .line 47
    new-instance p1, Lo/KeyGeneratorSpi;

    iget-object p2, p0, Lo/Mac;->j:Lo/Locale;

    invoke-direct {p1, p2, p3}, Lo/KeyGeneratorSpi;-><init>(Lo/Locale;Lo/alN;)V

    iput-object p1, p0, Lo/Mac;->h:Lo/KeyGeneratorSpi;

    .line 78
    iget p1, p0, Lo/Mac;->f:I

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    return-void

    .line 79
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "maxItemsToPreload must be greater than 0. Was "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lo/Mac;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 78
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public constructor <init>(Lo/OfInt;Lo/alB;Lo/alN;ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "**+TP;>;>;)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestHolderFactory"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelPreloaders"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    move-object v2, p1

    check-cast v2, Lo/Locale;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 69
    invoke-direct/range {v1 .. v6}, Lo/Mac;-><init>(Lo/Locale;Lo/alB;Lo/alN;ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lo/OfPrimitive;Lo/alB;Lo/alN;ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "**+TP;>;>;)V"
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

    .line 56
    invoke-virtual {p1}, Lo/OfPrimitive;->getAdapter()Lo/OfLong;

    move-result-object p1

    const-string v0, "epoxyController.adapter"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Lo/Locale;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 55
    invoke-direct/range {v1 .. v6}, Lo/Mac;-><init>(Lo/Locale;Lo/alB;Lo/alN;ILjava/util/List;)V

    return-void
.end method

.method private final a(I)V
    .locals 4

    .line 163
    iget-object v0, p0, Lo/Mac;->j:Lo/Locale;

    invoke-static {v0, p1}, Lo/UnaryOperator;->a(Lo/Locale;I)Lo/BiConsumer;

    move-result-object v0

    instance-of v1, v0, Lo/BiConsumer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    if-eqz v0, :cond_2

    .line 168
    iget-object v1, p0, Lo/Mac;->i:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lo/ExemptionMechanism;

    if-nez v3, :cond_1

    move-object v1, v2

    :cond_1
    check-cast v1, Lo/ExemptionMechanism;

    if-eqz v1, :cond_2

    .line 171
    iget-object v2, p0, Lo/Mac;->h:Lo/KeyGeneratorSpi;

    .line 172
    invoke-virtual {v2, v1, v0, p1}, Lo/KeyGeneratorSpi;->e(Lo/ExemptionMechanism;Lo/BiConsumer;I)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 295
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/SealedObject;

    .line 174
    iget-object v3, p0, Lo/Mac;->g:Lo/MacSpi;

    invoke-virtual {v3}, Lo/MacSpi;->d()Lo/KeyGenerator;

    move-result-object v3

    .line 175
    invoke-virtual {v1, v0, v3, v2}, Lo/ExemptionMechanism;->a(Lo/BiConsumer;Lo/KeyGenerator;Lo/SealedObject;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final b(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 157
    iget v0, p0, Lo/Mac;->c:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private final c(IIZ)Lo/amF;
    .locals 2

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p1, -0x1

    .line 147
    :goto_0
    iget p1, p0, Lo/Mac;->f:I

    if-eqz p3, :cond_1

    sub-int/2addr p1, v0

    goto :goto_1

    :cond_1
    rsub-int/lit8 p1, p1, 0x1

    :goto_1
    add-int/2addr p1, p2

    .line 149
    sget-object v1, Lo/amF;->d:Lo/amF$Activity;

    .line 150
    invoke-direct {p0, p2}, Lo/Mac;->d(I)I

    move-result p2

    .line 151
    invoke-direct {p0, p1}, Lo/Mac;->d(I)I

    move-result p1

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    .line 149
    :goto_2
    invoke-virtual {v1, p2, p1, v0}, Lo/amF$Activity;->a(III)Lo/amF;

    move-result-object p1

    return-object p1
.end method

.method private final c(I)Z
    .locals 1

    .line 139
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x4b

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final d(I)I
    .locals 2

    .line 159
    iget v0, p0, Lo/Mac;->c:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-direct {p0, p2}, Lo/Mac;->c(I)Z

    move-result p2

    if-nez p2, :cond_a

    invoke-direct {p0, p3}, Lo/Mac;->c(I)Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_3

    .line 103
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Activity;->getItemCount()I

    move-result p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lo/Mac;->c:I

    .line 105
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object p1

    if-eqz p1, :cond_9

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 106
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->h()I

    move-result p2

    .line 107
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->n()I

    move-result p1

    .line 109
    invoke-direct {p0, p2}, Lo/Mac;->b(I)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0, p1}, Lo/Mac;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 115
    :cond_3
    new-instance v0, Lo/amD;

    invoke-direct {v0, p2, p1}, Lo/amD;-><init>(II)V

    .line 116
    iget-object v1, p0, Lo/Mac;->d:Lo/amD;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 121
    :cond_4
    invoke-virtual {v0}, Lo/amD;->b()I

    move-result v1

    iget-object v2, p0, Lo/Mac;->d:Lo/amD;

    invoke-virtual {v2}, Lo/amD;->b()I

    move-result v2

    if-gt v1, v2, :cond_5

    invoke-virtual {v0}, Lo/amD;->e()I

    move-result v1

    iget-object v2, p0, Lo/Mac;->d:Lo/amD;

    invoke-virtual {v2}, Lo/amD;->e()I

    move-result v2

    if-le v1, v2, :cond_6

    :cond_5
    const/4 p3, 0x1

    .line 124
    :cond_6
    invoke-direct {p0, p2, p1, p3}, Lo/Mac;->c(IIZ)Lo/amF;

    move-result-object p1

    .line 127
    move-object p2, p1

    check-cast p2, Ljava/lang/Iterable;

    .line 128
    iget-object p3, p0, Lo/Mac;->a:Lo/amF;

    check-cast p3, Ljava/lang/Iterable;

    invoke-static {p2, p3}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 293
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 129
    invoke-direct {p0, p3}, Lo/Mac;->a(I)V

    goto :goto_1

    .line 131
    :cond_7
    iput-object v0, p0, Lo/Mac;->d:Lo/amD;

    .line 132
    iput-object p1, p0, Lo/Mac;->a:Lo/amF;

    return-void

    .line 110
    :cond_8
    :goto_2
    sget-object p1, Lo/amD;->b:Lo/amD$Application;

    invoke-virtual {p1}, Lo/amD$Application;->d()Lo/amD;

    move-result-object p1

    iput-object p1, p0, Lo/Mac;->d:Lo/amD;

    .line 111
    sget-object p1, Lo/amD;->b:Lo/amD$Application;

    invoke-virtual {p1}, Lo/amD$Application;->d()Lo/amD;

    move-result-object p1

    check-cast p1, Lo/amF;

    iput-object p1, p0, Lo/Mac;->a:Lo/amF;

    return-void

    .line 105
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_3
    return-void
.end method

.method public final b()V
    .locals 1

    .line 183
    iget-object v0, p0, Lo/Mac;->g:Lo/MacSpi;

    invoke-virtual {v0}, Lo/MacSpi;->c()V

    return-void
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iput p2, p0, Lo/Mac;->b:I

    return-void
.end method
