.class public final Lo/TransformationMethod2;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/InputBinding;Lo/ReplacementTransformationMethod;)V
    .locals 2

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p2}, Lo/ReplacementTransformationMethod;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/TransformationMethod2;->e:Ljava/lang/String;

    .line 11
    invoke-virtual {p2}, Lo/ReplacementTransformationMethod;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/TransformationMethod2;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {p2}, Lo/ReplacementTransformationMethod;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/TransformationMethod2;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {p2}, Lo/ReplacementTransformationMethod;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/TransformationMethod2;->b:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "label_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lo/ReplacementTransformationMethod;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {p2}, Lo/ReplacementTransformationMethod;->f()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 20
    invoke-virtual {p1, v0}, Lo/InputBinding;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1, v0}, Lo/InputBinding;->b(Ljava/lang/String;)Lo/VideoView2;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 23
    invoke-virtual {p2}, Lo/ReplacementTransformationMethod;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "carrier"

    invoke-virtual {p1, v1, v0}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 19
    :goto_0
    iput-object p1, p0, Lo/TransformationMethod2;->d:Ljava/lang/String;

    .line 28
    invoke-virtual {p2}, Lo/ReplacementTransformationMethod;->a()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/TransformationMethod2;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/TransformationMethod2;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/TransformationMethod2;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/TransformationMethod2;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lo/TransformationMethod2;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/TransformationMethod2;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lo/TransformationMethod2;->f:Ljava/util/List;

    return-object v0
.end method
