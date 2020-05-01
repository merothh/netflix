.class Lo/Float$Activity;
.super Lo/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Float;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# static fields
.field private static final e:Lo/Deprecated$ActionBar;


# instance fields
.field private b:Z

.field private c:Lo/TransformationMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TransformationMethod<",
            "Lo/Float$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 281
    new-instance v0, Lo/Float$Activity$1;

    invoke-direct {v0}, Lo/Float$Activity$1;-><init>()V

    sput-object v0, Lo/Float$Activity;->e:Lo/Deprecated$ActionBar;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 280
    invoke-direct {p0}, Lo/Enum;-><init>()V

    .line 295
    new-instance v0, Lo/TransformationMethod;

    invoke-direct {v0}, Lo/TransformationMethod;-><init>()V

    iput-object v0, p0, Lo/Float$Activity;->c:Lo/TransformationMethod;

    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Lo/Float$Activity;->b:Z

    return-void
.end method

.method static e(Lo/ExceptionInInitializerError;)Lo/Float$Activity;
    .locals 2

    .line 292
    new-instance v0, Lo/Deprecated;

    sget-object v1, Lo/Float$Activity;->e:Lo/Deprecated$ActionBar;

    invoke-direct {v0, p0, v1}, Lo/Deprecated;-><init>(Lo/ExceptionInInitializerError;Lo/Deprecated$ActionBar;)V

    const-class p0, Lo/Float$Activity;

    invoke-virtual {v0, p0}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object p0

    check-cast p0, Lo/Float$Activity;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x1

    .line 299
    iput-boolean v0, p0, Lo/Float$Activity;->b:Z

    return-void
.end method

.method b(I)Lo/Float$ActionBar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lo/Float$ActionBar<",
            "TD;>;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lo/Float$Activity;->c:Lo/TransformationMethod;

    invoke-virtual {v0, p1}, Lo/TransformationMethod;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Float$ActionBar;

    return-object p1
.end method

.method c(ILo/Float$ActionBar;)V
    .locals 1

    .line 311
    iget-object v0, p0, Lo/Float$Activity;->c:Lo/TransformationMethod;

    invoke-virtual {v0, p1, p2}, Lo/TransformationMethod;->b(ILjava/lang/Object;)V

    return-void
.end method

.method c()Z
    .locals 1

    .line 303
    iget-boolean v0, p0, Lo/Float$Activity;->b:Z

    return v0
.end method

.method d()V
    .locals 1

    const/4 v0, 0x0

    .line 307
    iput-boolean v0, p0, Lo/Float$Activity;->b:Z

    return-void
.end method

.method e()V
    .locals 3

    .line 335
    iget-object v0, p0, Lo/Float$Activity;->c:Lo/TransformationMethod;

    invoke-virtual {v0}, Lo/TransformationMethod;->b()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 337
    iget-object v2, p0, Lo/Float$Activity;->c:Lo/TransformationMethod;

    invoke-virtual {v2, v1}, Lo/TransformationMethod;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Float$ActionBar;

    .line 338
    invoke-virtual {v2}, Lo/Float$ActionBar;->i()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 354
    iget-object v0, p0, Lo/Float$Activity;->c:Lo/TransformationMethod;

    invoke-virtual {v0}, Lo/TransformationMethod;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 355
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 357
    :goto_0
    iget-object v2, p0, Lo/Float$Activity;->c:Lo/TransformationMethod;

    invoke-virtual {v2}, Lo/TransformationMethod;->b()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 358
    iget-object v2, p0, Lo/Float$Activity;->c:Lo/TransformationMethod;

    invoke-virtual {v2, v1}, Lo/TransformationMethod;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Float$ActionBar;

    .line 359
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lo/Float$Activity;->c:Lo/TransformationMethod;

    invoke-virtual {v3, v1}, Lo/TransformationMethod;->d(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 360
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lo/Float$ActionBar;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v2, v0, p2, p3, p4}, Lo/Float$ActionBar;->c(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCleared()V
    .locals 4

    .line 344
    invoke-super {p0}, Lo/Enum;->onCleared()V

    .line 345
    iget-object v0, p0, Lo/Float$Activity;->c:Lo/TransformationMethod;

    invoke-virtual {v0}, Lo/TransformationMethod;->b()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 347
    iget-object v2, p0, Lo/Float$Activity;->c:Lo/TransformationMethod;

    invoke-virtual {v2, v1}, Lo/TransformationMethod;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Float$ActionBar;

    const/4 v3, 0x1

    .line 348
    invoke-virtual {v2, v3}, Lo/Float$ActionBar;->e(Z)Lo/IllegalArgumentException;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    :cond_0
    iget-object v0, p0, Lo/Float$Activity;->c:Lo/TransformationMethod;

    invoke-virtual {v0}, Lo/TransformationMethod;->a()V

    return-void
.end method
