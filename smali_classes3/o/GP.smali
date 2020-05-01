.class public abstract Lo/GP;
.super Lo/Executor;
.source ""

# interfaces
.implements Lo/GX;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/GP$Activity;
    }
.end annotation


# static fields
.field public static final i:Lo/GP$Activity;


# instance fields
.field private a:I

.field private c:Ljava/lang/Integer;

.field private f:I

.field public g:Lo/UpdateEngine;

.field public h:Lo/GW;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/BiConsumer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final l:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/GP;",
            "Lo/DoubleStream;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/lang/String;

.field private final o:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/GP;",
            "Lo/DoubleStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/GP$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/GP$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/GP;->i:Lo/GP$Activity;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;Lo/EncryptedPrivateKeyInfo;Lo/CipherSpi;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;",
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/GP;",
            "Lo/DoubleStream;",
            ">;",
            "Lo/CipherSpi<",
            "Lo/GP;",
            "Lo/DoubleStream;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "extrasModels"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, p1, v0}, Lo/Executor;-><init>(ILjava/util/Collection;)V

    iput-object p2, p0, Lo/GP;->j:Ljava/util/List;

    iput-object p3, p0, Lo/GP;->o:Lo/EncryptedPrivateKeyInfo;

    iput-object p4, p0, Lo/GP;->l:Lo/CipherSpi;

    iput-object p5, p0, Lo/GP;->m:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Lo/EncryptedPrivateKeyInfo;Lo/CipherSpi;Ljava/lang/String;ILo/amc;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 35
    move-object p3, v0

    check-cast p3, Lo/EncryptedPrivateKeyInfo;

    :cond_0
    move-object v4, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 41
    move-object p4, v0

    check-cast p4, Lo/CipherSpi;

    :cond_1
    move-object v5, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    .line 46
    move-object p5, v0

    check-cast p5, Ljava/lang/String;

    :cond_2
    move-object v6, p5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lo/GP;-><init>(ILjava/util/List;Lo/EncryptedPrivateKeyInfo;Lo/CipherSpi;Ljava/lang/String;)V

    return-void
.end method

.method private final a(Lo/DoubleStream;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lo/GP;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p1}, Lo/DoubleStream;->e()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {p1}, Lo/DoubleStream;->e()Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 102
    :cond_0
    move-object v0, p0

    check-cast v0, Lo/GP;

    .line 104
    invoke-virtual {p1}, Lo/DoubleStream;->e()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {p1}, Lo/DoubleStream;->e()Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(FFIILo/DoubleStream;)V
    .locals 14

    move-object v6, p0

    move-object/from16 v9, p5

    const-string v0, "view"

    invoke-static {v9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    move-object v5, v9

    check-cast v5, Lo/TimeUnit;

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 116
    invoke-super/range {v0 .. v5}, Lo/Executor;->c(FFIILo/TimeUnit;)V

    .line 123
    iget-object v7, v6, Lo/GP;->o:Lo/EncryptedPrivateKeyInfo;

    if-eqz v7, :cond_0

    .line 124
    move-object v8, v6

    check-cast v8, Lo/BiConsumer;

    move-object/from16 v9, p5

    move v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    .line 123
    invoke-interface/range {v7 .. v13}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    :cond_0
    return-void
.end method

.method public synthetic a(Lo/TimeUnit;Lo/BiConsumer;)V
    .locals 0

    .line 19
    check-cast p1, Lo/DoubleStream;

    invoke-virtual {p0, p1, p2}, Lo/GP;->e(Lo/DoubleStream;Lo/BiConsumer;)V

    return-void
.end method

.method public bridge synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p2, Lo/DoubleStream;

    invoke-virtual {p0, p1, p2}, Lo/GP;->b(ILo/DoubleStream;)V

    return-void
.end method

.method public b(ILo/DoubleStream;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    move-object v0, p2

    check-cast v0, Lo/TimeUnit;

    invoke-super {p0, p1, v0}, Lo/Executor;->c(ILo/TimeUnit;)V

    .line 135
    iget-object v0, p0, Lo/GP;->l:Lo/CipherSpi;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lo/BiConsumer;

    invoke-interface {v0, v1, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 136
    :cond_0
    invoke-virtual {p2}, Lo/DoubleStream;->d()Ljava/util/ArrayList;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 166
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Consumer;

    .line 139
    invoke-virtual {v0, p1}, Lo/Consumer;->c(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lo/GP;->c:Ljava/lang/Integer;

    return-void
.end method

.method public b(Lo/GW;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Lo/GP;->h:Lo/GW;

    return-void
.end method

.method public b(Lo/UpdateEngine;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lo/GP;->g:Lo/UpdateEngine;

    return-void
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 19
    move-object v5, p5

    check-cast v5, Lo/DoubleStream;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/GP;->a(FFIILo/DoubleStream;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 19
    check-cast p2, Lo/DoubleStream;

    invoke-virtual {p0, p1, p2}, Lo/GP;->b(ILo/DoubleStream;)V

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 19
    check-cast p1, Lo/DoubleStream;

    invoke-virtual {p0, p1}, Lo/GP;->e(Lo/DoubleStream;)V

    return-void
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 19
    move-object v5, p5

    check-cast v5, Lo/DoubleStream;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/GP;->a(FFIILo/DoubleStream;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lo/DoubleStream;

    invoke-virtual {p0, p1}, Lo/GP;->e(Lo/DoubleStream;)V

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 85
    iput p1, p0, Lo/GP;->f:I

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;Lo/BiConsumer;)V
    .locals 0

    .line 19
    check-cast p1, Lo/DoubleStream;

    invoke-virtual {p0, p1, p2}, Lo/GP;->e(Lo/DoubleStream;Lo/BiConsumer;)V

    return-void
.end method

.method public e(Lo/DoubleStream;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-super {p0, p1}, Lo/Executor;->e(Lo/DoubleStream;)V

    .line 89
    invoke-direct {p0, p1}, Lo/GP;->a(Lo/DoubleStream;)V

    return-void
.end method

.method public e(Lo/DoubleStream;Lo/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DoubleStream;",
            "Lo/BiConsumer<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previouslyBoundModel"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-super {p0, p1, p2}, Lo/Executor;->e(Lo/DoubleStream;Lo/BiConsumer;)V

    .line 94
    invoke-direct {p0, p1}, Lo/GP;->a(Lo/DoubleStream;)V

    return-void
.end method

.method public k()I
    .locals 2

    .line 69
    invoke-virtual {p0}, Lo/GP;->o()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l()I
    .locals 1

    .line 57
    iget v0, p0, Lo/GP;->a:I

    return v0
.end method

.method public m()Lo/GW;
    .locals 2

    .line 74
    iget-object v0, p0, Lo/GP;->h:Lo/GW;

    if-nez v0, :cond_0

    const-string v1, "itemDefinition"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public o()Ljava/lang/Integer;
    .locals 1

    .line 63
    iget-object v0, p0, Lo/GP;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public final p()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 147
    check-cast v0, Ljava/util/List;

    .line 148
    iget-object v1, p0, Lo/GP;->j:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 168
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 175
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lo/Hy;

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    :cond_1
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 177
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Hy;

    .line 151
    invoke-virtual {v2}, Lo/Hy;->y()Lo/Pa;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 152
    invoke-virtual {v2}, Lo/Pa;->read()Z

    move-result v3

    if-nez v3, :cond_2

    .line 153
    invoke-virtual {v2}, Lo/Pa;->eventGuid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_3

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 157
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public final q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/BiConsumer<",
            "*>;>;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lo/GP;->j:Ljava/util/List;

    return-object v0
.end method

.method public t()I
    .locals 1

    .line 85
    iget v0, p0, Lo/GP;->f:I

    return v0
.end method
