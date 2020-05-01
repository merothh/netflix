.class public Lo/InMemoryDexClassLoader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/Spannable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/InMemoryDexClassLoader$TaskDescription;,
        Lo/InMemoryDexClassLoader$Application;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static d:Ljava/util/concurrent/Executor;


# instance fields
.field private final b:[I

.field private final c:Lo/InMemoryDexClassLoader$Application;

.field private final e:Landroid/text/Spannable;

.field private final f:Landroid/text/PrecomputedText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/InMemoryDexClassLoader;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 73
    sput-object v0, Lo/InMemoryDexClassLoader;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Lo/InMemoryDexClassLoader$Application;[I)V
    .locals 1

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lo/InMemoryDexClassLoader;->e:Landroid/text/Spannable;

    .line 481
    iput-object p2, p0, Lo/InMemoryDexClassLoader;->c:Lo/InMemoryDexClassLoader$Application;

    .line 482
    iput-object p3, p0, Lo/InMemoryDexClassLoader;->b:[I

    const/4 p1, 0x0

    .line 483
    iput-object p1, p0, Lo/InMemoryDexClassLoader;->f:Landroid/text/PrecomputedText;

    return-void
.end method

.method public static b(Ljava/lang/CharSequence;Lo/InMemoryDexClassLoader$Application;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lo/InMemoryDexClassLoader$Application;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lo/InMemoryDexClassLoader;",
            ">;"
        }
    .end annotation

    .line 627
    new-instance v0, Lo/InMemoryDexClassLoader$TaskDescription;

    invoke-direct {v0, p1, p0}, Lo/InMemoryDexClassLoader$TaskDescription;-><init>(Lo/InMemoryDexClassLoader$Application;Ljava/lang/CharSequence;)V

    if-nez p2, :cond_1

    .line 629
    sget-object p0, Lo/InMemoryDexClassLoader;->a:Ljava/lang/Object;

    monitor-enter p0

    .line 630
    :try_start_0
    sget-object p1, Lo/InMemoryDexClassLoader;->d:Ljava/util/concurrent/Executor;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 631
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    sput-object p1, Lo/InMemoryDexClassLoader;->d:Ljava/util/concurrent/Executor;

    .line 633
    :cond_0
    sget-object p2, Lo/InMemoryDexClassLoader;->d:Ljava/util/concurrent/Executor;

    .line 634
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 636
    :cond_1
    :goto_0
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static d(Ljava/lang/CharSequence;Lo/InMemoryDexClassLoader$Application;)Lo/InMemoryDexClassLoader;
    .locals 11

    .line 426
    invoke-static {p0}, Lo/CharArrayWriter;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    invoke-static {p1}, Lo/CharArrayWriter;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v0, "PrecomputedText"

    .line 430
    invoke-static {v0}, Lo/TextView;->e(Ljava/lang/String;)V

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 435
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    const/16 v4, 0xa

    .line 437
    invoke-static {p0, v4, v3, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    if-gez v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 446
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 448
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v3, 0x0

    .line 449
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 450
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 456
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_3

    .line 457
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1}, Lo/InMemoryDexClassLoader$Application;->c()Landroid/text/TextPaint;

    move-result-object v3

    const v4, 0x7fffffff

    invoke-static {p0, v2, v0, v3, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 459
    invoke-virtual {p1}, Lo/InMemoryDexClassLoader$Application;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 460
    invoke-virtual {p1}, Lo/InMemoryDexClassLoader$Application;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 461
    invoke-virtual {p1}, Lo/InMemoryDexClassLoader$Application;->e()Landroid/text/TextDirectionHeuristic;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    goto :goto_3

    .line 463
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_4

    .line 464
    new-instance v3, Landroid/text/StaticLayout;

    invoke-virtual {p1}, Lo/InMemoryDexClassLoader$Application;->c()Landroid/text/TextPaint;

    move-result-object v5

    const v6, 0x7fffffff

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 471
    :cond_4
    :goto_3
    new-instance v0, Lo/InMemoryDexClassLoader;

    invoke-direct {v0, p0, p1, v1}, Lo/InMemoryDexClassLoader;-><init>(Ljava/lang/CharSequence;Lo/InMemoryDexClassLoader$Application;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    invoke-static {}, Lo/TextView;->a()V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-static {}, Lo/TextView;->a()V

    throw p0
.end method


# virtual methods
.method public c()Lo/InMemoryDexClassLoader$Application;
    .locals 1

    .line 512
    iget-object v0, p0, Lo/InMemoryDexClassLoader;->c:Lo/InMemoryDexClassLoader$Application;

    return-object v0
.end method

.method public charAt(I)C
    .locals 1

    .line 712
    iget-object v0, p0, Lo/InMemoryDexClassLoader;->e:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->charAt(I)C

    move-result p1

    return p1
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 1

    .line 687
    iget-object v0, p0, Lo/InMemoryDexClassLoader;->e:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 1

    .line 692
    iget-object v0, p0, Lo/InMemoryDexClassLoader;->e:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 1

    .line 682
    iget-object v0, p0, Lo/InMemoryDexClassLoader;->e:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 677
    iget-object v0, p0, Lo/InMemoryDexClassLoader;->e:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public length()I
    .locals 1

    .line 707
    iget-object v0, p0, Lo/InMemoryDexClassLoader;->e:Landroid/text/Spannable;

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v0

    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 1

    .line 697
    iget-object v0, p0, Lo/InMemoryDexClassLoader;->e:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spannable;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .locals 1

    .line 663
    instance-of v0, p1, Landroid/text/style/MetricAffectingSpan;

    if-nez v0, :cond_0

    .line 667
    iget-object v0, p0, Lo/InMemoryDexClassLoader;->e:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void

    .line 664
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "MetricAffectingSpan can not be removed from PrecomputedText."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 1

    .line 651
    instance-of v0, p1, Landroid/text/style/MetricAffectingSpan;

    if-nez v0, :cond_0

    .line 655
    iget-object v0, p0, Lo/InMemoryDexClassLoader;->e:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void

    .line 652
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MetricAffectingSpan can not be set to PrecomputedText."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    .line 717
    iget-object v0, p0, Lo/InMemoryDexClassLoader;->e:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 722
    iget-object v0, p0, Lo/InMemoryDexClassLoader;->e:Landroid/text/Spannable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
