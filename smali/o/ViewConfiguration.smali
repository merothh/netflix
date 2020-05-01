.class public final Lo/ViewConfiguration;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Explode;


# instance fields
.field private final a:Lo/InputBinding;

.field private final b:Z

.field private final c:I

.field private final d:Ljava/lang/CharSequence;

.field private final e:Ljava/lang/String;

.field private final i:Lo/TextureView;


# direct methods
.method public constructor <init>(Lo/InputBinding;Lo/DynamicDrawableSpan;Lo/TextureView;)V
    .locals 1

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stepsViewModel"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ViewConfiguration;->a:Lo/InputBinding;

    iput-object p3, p0, Lo/ViewConfiguration;->i:Lo/TextureView;

    .line 15
    iget-object p1, p0, Lo/ViewConfiguration;->i:Lo/TextureView;

    invoke-virtual {p1}, Lo/TextureView;->c()Z

    move-result p1

    iput-boolean p1, p0, Lo/ViewConfiguration;->b:Z

    .line 17
    invoke-virtual {p2}, Lo/DynamicDrawableSpan;->b()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/ViewConfiguration;->d:Ljava/lang/CharSequence;

    .line 19
    iget-object p1, p0, Lo/ViewConfiguration;->a:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->qN:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ViewConfiguration;->e:Ljava/lang/String;

    .line 28
    iget-object p1, p0, Lo/ViewConfiguration;->i:Lo/TextureView;

    invoke-virtual {p1}, Lo/TextureView;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "phoneAndTablet"

    invoke-static {p1, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 29
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->H:I

    goto :goto_0

    .line 31
    :cond_0
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->B:I

    .line 28
    :goto_0
    iput p1, p0, Lo/ViewConfiguration;->c:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lo/ViewConfiguration;->b:Z

    return v0
.end method

.method public final b()I
    .locals 1

    .line 27
    iget v0, p0, Lo/ViewConfiguration;->c:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/ViewConfiguration;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lo/ViewConfiguration;->i:Lo/TextureView;

    invoke-virtual {v0}, Lo/TextureView;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/ViewConfiguration;->a:Lo/InputBinding;

    invoke-virtual {v1, v0}, Lo/InputBinding;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 24
    iget-object v0, p0, Lo/ViewConfiguration;->a:Lo/InputBinding;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->jl:I

    invoke-virtual {v0, v1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/CharSequence;
    .locals 1

    .line 17
    iget-object v0, p0, Lo/ViewConfiguration;->d:Ljava/lang/CharSequence;

    return-object v0
.end method
