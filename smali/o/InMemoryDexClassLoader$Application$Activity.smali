.class public Lo/InMemoryDexClassLoader$Application$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/InMemoryDexClassLoader$Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Activity"
.end annotation


# instance fields
.field private final a:Landroid/text/TextPaint;

.field private b:I

.field private d:I

.field private e:Landroid/text/TextDirectionHeuristic;


# direct methods
.method public constructor <init>(Landroid/text/TextPaint;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lo/InMemoryDexClassLoader$Application$Activity;->a:Landroid/text/TextPaint;

    .line 117
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    .line 118
    iput p1, p0, Lo/InMemoryDexClassLoader$Application$Activity;->d:I

    .line 119
    iput p1, p0, Lo/InMemoryDexClassLoader$Application$Activity;->b:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 121
    iput p1, p0, Lo/InMemoryDexClassLoader$Application$Activity;->b:I

    iput p1, p0, Lo/InMemoryDexClassLoader$Application$Activity;->d:I

    .line 123
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt p1, v0, :cond_1

    .line 124
    sget-object p1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object p1, p0, Lo/InMemoryDexClassLoader$Application$Activity;->e:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 126
    iput-object p1, p0, Lo/InMemoryDexClassLoader$Application$Activity;->e:Landroid/text/TextDirectionHeuristic;

    :goto_1
    return-void
.end method


# virtual methods
.method public a(I)Lo/InMemoryDexClassLoader$Application$Activity;
    .locals 0

    .line 162
    iput p1, p0, Lo/InMemoryDexClassLoader$Application$Activity;->b:I

    return-object p0
.end method

.method public b(I)Lo/InMemoryDexClassLoader$Application$Activity;
    .locals 0

    .line 144
    iput p1, p0, Lo/InMemoryDexClassLoader$Application$Activity;->d:I

    return-object p0
.end method

.method public d(Landroid/text/TextDirectionHeuristic;)Lo/InMemoryDexClassLoader$Application$Activity;
    .locals 0

    .line 180
    iput-object p1, p0, Lo/InMemoryDexClassLoader$Application$Activity;->e:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method public e()Lo/InMemoryDexClassLoader$Application;
    .locals 5

    .line 190
    new-instance v0, Lo/InMemoryDexClassLoader$Application;

    iget-object v1, p0, Lo/InMemoryDexClassLoader$Application$Activity;->a:Landroid/text/TextPaint;

    iget-object v2, p0, Lo/InMemoryDexClassLoader$Application$Activity;->e:Landroid/text/TextDirectionHeuristic;

    iget v3, p0, Lo/InMemoryDexClassLoader$Application$Activity;->d:I

    iget v4, p0, Lo/InMemoryDexClassLoader$Application$Activity;->b:I

    invoke-direct {v0, v1, v2, v3, v4}, Lo/InMemoryDexClassLoader$Application;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    return-object v0
.end method
