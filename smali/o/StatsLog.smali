.class public final Lo/StatsLog;
.super Lo/ChangeScroll;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/StatsLog$Activity;
    }
.end annotation


# static fields
.field public static final c:Lo/StatsLog$Activity;

.field private static final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/netflix/android/moneyball/fields/StringField;

.field private h:Lo/Cloneable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Cloneable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/String;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SuperNotCalledException;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lo/TimeFormatException;

.field private final l:Lo/TextClassifierImplNative;

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SuperNotCalledException;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SuperNotCalledException;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lo/Spline;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lo/StatsLog$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/StatsLog$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/StatsLog;->c:Lo/StatsLog$Activity;

    const/16 v0, 0xa

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v1, v8

    const/16 v7, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x5

    aput-object v9, v1, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x6

    aput-object v9, v1, v11

    const/16 v9, 0xb

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x7

    aput-object v9, v1, v12

    const/16 v9, 0xc

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v6

    const/16 v9, 0xd

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v7

    invoke-static {v1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lo/StatsLog;->r:Ljava/util/List;

    new-array v0, v0, [Ljava/lang/Integer;

    .line 30
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v10

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v11

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v12

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/StatsLog;->s:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lo/InputBinding;Lo/Spline;Lo/TimeFormatException;ZLo/TextClassifierImplNative;Lo/TextClassifierService;)V
    .locals 6

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onRampNetworkManager"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModel"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    move-object v0, p5

    check-cast v0, Lo/TextClassifierImpl;

    invoke-direct {p0, v0, p1, p6}, Lo/ChangeScroll;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassifierService;)V

    iput-object p2, p0, Lo/StatsLog;->o:Lo/Spline;

    iput-object p3, p0, Lo/StatsLog;->k:Lo/TimeFormatException;

    iput-object p5, p0, Lo/StatsLog;->l:Lo/TextClassifierImplNative;

    if-eqz p4, :cond_0

    const/4 p2, 0x6

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    .line 39
    :goto_0
    iput p2, p0, Lo/StatsLog;->d:I

    .line 41
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->nY:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/StatsLog;->b:Ljava/lang/String;

    .line 43
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->nS:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p2

    .line 44
    iget-object p3, p0, Lo/StatsLog;->k:Lo/TimeFormatException;

    invoke-virtual {p3}, Lo/TimeFormatException;->c()Ljava/lang/String;

    move-result-object p3

    const-string p4, "name"

    invoke-virtual {p2, p4, p3}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p2

    .line 45
    invoke-virtual {p2}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p2

    const-string p3, "stringProvider.getFormat\u2026me)\n            .format()"

    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/StatsLog;->e:Ljava/lang/String;

    .line 47
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->oq:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p1

    .line 48
    iget-object p2, p0, Lo/StatsLog;->k:Lo/TimeFormatException;

    invoke-virtual {p2}, Lo/TimeFormatException;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/StatsLog;->f:Ljava/lang/String;

    .line 51
    iget-object p1, p0, Lo/StatsLog;->k:Lo/TimeFormatException;

    invoke-virtual {p1}, Lo/TimeFormatException;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/StatsLog;->i:Ljava/lang/String;

    .line 54
    new-instance p1, Lo/Cloneable;

    invoke-direct {p1}, Lo/Cloneable;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Lo/Cloneable;->e(Ljava/lang/Object;)V

    iput-object p1, p0, Lo/StatsLog;->h:Lo/Cloneable;

    .line 56
    iget-object p1, p0, Lo/StatsLog;->k:Lo/TimeFormatException;

    invoke-virtual {p1}, Lo/TimeFormatException;->d()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object p1

    iput-object p1, p0, Lo/StatsLog;->g:Lcom/netflix/android/moneyball/fields/StringField;

    .line 58
    iget-object p1, p0, Lo/StatsLog;->k:Lo/TimeFormatException;

    invoke-virtual {p1}, Lo/TimeFormatException;->b()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 100
    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p1, p3}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 101
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 102
    check-cast p3, Lo/TimedRemoteCaller;

    .line 59
    new-instance p4, Lo/SuperNotCalledException;

    invoke-virtual {p3}, Lo/TimedRemoteCaller;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lo/TimedRemoteCaller;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p4

    invoke-direct/range {v0 .. v5}, Lo/SuperNotCalledException;-><init>(Ljava/lang/String;Ljava/lang/String;ZILo/amc;)V

    invoke-interface {p2, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 103
    :cond_1
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lo/StatsLog;->j:Ljava/util/List;

    .line 62
    sget-object p1, Lo/StatsLog;->r:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 104
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/Collection;

    .line 113
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 112
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 63
    iget-object p4, p0, Lo/StatsLog;->j:Ljava/util/List;

    invoke-static {p4, p3}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/SuperNotCalledException;

    if-eqz p3, :cond_2

    .line 112
    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 115
    :cond_3
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lo/StatsLog;->m:Ljava/util/List;

    .line 66
    sget-object p1, Lo/StatsLog;->s:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 116
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/Collection;

    .line 125
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 124
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 67
    iget-object p4, p0, Lo/StatsLog;->j:Ljava/util/List;

    invoke-static {p4, p3}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/SuperNotCalledException;

    if-eqz p3, :cond_4

    .line 124
    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 127
    :cond_5
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lo/StatsLog;->n:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lo/StatsLog;->a:Z

    return v0
.end method

.method public final c(Lo/TextClassificationSessionFactory;)V
    .locals 2

    const-string v0, "networkRequestResponseListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lo/StatsLog;->k:Lo/TimeFormatException;

    invoke-virtual {v0}, Lo/TimeFormatException;->e()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    invoke-virtual {p0}, Lo/StatsLog;->e()Lo/Cloneable;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lo/StatsLog;->d(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public final d(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/android/moneyball/fields/ActionField;",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lo/TextClassificationSessionFactory;",
            ")V"
        }
    .end annotation

    const-string v0, "loadingLiveData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkRequestResponseListener"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Lo/Cloneable;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {p2, v2}, Lo/Cloneable;->e(Ljava/lang/Object;)V

    .line 79
    iget-object p2, p0, Lo/StatsLog;->l:Lo/TextClassifierImplNative;

    invoke-virtual {p0}, Lo/StatsLog;->c()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Lo/TextClassificationSessionFactory;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {p2, p1, v0, v1}, Lo/TextClassifierImplNative;->b(Lcom/netflix/android/moneyball/fields/ActionField;Ljava/lang/String;[Lo/TextClassificationSessionFactory;)V

    :cond_1
    return-void
.end method

.method public final e()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lo/StatsLog;->o:Lo/Spline;

    invoke-virtual {v0}, Lo/Spline;->e()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lo/StatsLog;->h:Lo/Cloneable;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lo/StatsLog;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lo/StatsLog;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lo/StatsLog;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final j()I
    .locals 1

    .line 39
    iget v0, p0, Lo/StatsLog;->d:I

    return v0
.end method

.method public final k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/SuperNotCalledException;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lo/StatsLog;->m:Ljava/util/List;

    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/SuperNotCalledException;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lo/StatsLog;->n:Ljava/util/List;

    return-object v0
.end method

.method public final n()Lcom/netflix/android/moneyball/fields/StringField;
    .locals 1

    .line 56
    iget-object v0, p0, Lo/StatsLog;->g:Lcom/netflix/android/moneyball/fields/StringField;

    return-object v0
.end method

.method public final o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/SuperNotCalledException;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lo/StatsLog;->j:Ljava/util/List;

    return-object v0
.end method
